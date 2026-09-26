import 'package:flutter/material.dart';

/// A utility system to resolve conflicts between the native System Back Gesture
/// (Swipe-to-back on iOS/Android) and horizontal interactive widgets
/// (e.g., Carousels, Maps, Charts, Signatures).
///
/// **Problem:**
/// On modern mobile OS versions, swiping from the edge (or middle on newer versions)
/// triggers the "Back" navigation. If a user tries to scroll a carousel horizontally,
/// the system often intercepts this as a "Back" command, closing the screen unintentionally.
///
/// **Solution:**
/// This system dynamically disables the System Back Gesture specifically when the user
/// is interacting (touching/dragging) a blocked widget, and re-enables it immediately after.
///
/// **Usage:**
/// 1. Wrap your page's [Scaffold] with [DSBackGestureRoot].
/// 2. Wrap your specific horizontal scrollable widget (ListView, PageView, etc.) with [DSBackGestureBlocker].

// -----------------------------------------------------------------------------
// INTERNAL CONTROLLER
// -----------------------------------------------------------------------------

/// Internal controller responsible for toggling the [PopScope] state.
class DSBackGestureController {
  final ValueNotifier<bool> canPopNotifier = ValueNotifier<bool>(true);

  /// Locks the system back gesture (prevents popping).
  void lock() {
    if (canPopNotifier.value) {
      canPopNotifier.value = false;
    }
  }

  /// Unlocks the system back gesture (allows popping).
  void unlock() {
    if (!canPopNotifier.value) {
      canPopNotifier.value = true;
    }
  }

  /// Disposes the notifier to prevent memory leaks.
  void dispose() {
    canPopNotifier.dispose();
  }
}

// -----------------------------------------------------------------------------
// SCOPE PROVIDER
// -----------------------------------------------------------------------------

/// An [InheritedWidget] that allows [DSBackGestureBlocker] descendants to find
/// the nearest [DSBackGestureController] efficiently.
class _DSBackGestureScope extends InheritedWidget {
  final DSBackGestureController controller;

  const _DSBackGestureScope({
    required this.controller,
    required super.child,
  });

  static DSBackGestureController of(BuildContext context) {
    final _DSBackGestureScope? result =
        context.dependOnInheritedWidgetOfExactType<_DSBackGestureScope>();
    assert(
      result != null,
      'DSBackGestureBlocker must be placed inside a DSBackGestureRoot. Probably you need to wrap your DSScaffold with a DSBackGestureRoot to fix this.',
    );
    return result!.controller;
  }

  @override
  bool updateShouldNotify(_DSBackGestureScope oldWidget) => false;
}

// -----------------------------------------------------------------------------
// PUBLIC WIDGETS
// -----------------------------------------------------------------------------

/// **The Root Widget**
///
/// Place this at the top of your View (usually wrapping the [Scaffold]).
/// It initializes the controller scope and handles the [PopScope] logic.
class DSBackGestureRoot extends StatefulWidget {
  final Widget child;

  /// Optional callback when a pop is attempted while locked.
  final void Function(bool didPop, dynamic result)? onPopInvoked;

  const DSBackGestureRoot({
    super.key,
    required this.child,
    this.onPopInvoked,
  });

  @override
  State<DSBackGestureRoot> createState() => _BackGestureRootState();
}

class _BackGestureRootState extends State<DSBackGestureRoot> {
  late final DSBackGestureController _controller;

  @override
  void initState() {
    super.initState();
    _controller = DSBackGestureController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _DSBackGestureScope(
      controller: _controller,
      child: ValueListenableBuilder<bool>(
        valueListenable: _controller.canPopNotifier,
        builder: (context, canPop, child) {
          return PopScope(
            canPop: canPop,
            onPopInvokedWithResult: widget.onPopInvoked,
            child: widget.child,
          );
        },
      ),
    );
  }
}

/// **The Blocker Widget**
///
/// Wrap any widget that requires horizontal gestures (like [ListView], [PageView],
/// [GoogleMap], or [SignaturePad]) with this widget.
///
/// It automatically detects touch events to Lock/Unlock the [DSBackGestureRoot].
class DSBackGestureBlocker extends StatelessWidget {
  final Widget child;

  const DSBackGestureBlocker({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // Finds the controller provided by the nearest BackGestureRoot
    final controller = _DSBackGestureScope.of(context);

    return Listener(
      // When user touches the screen, disable back gesture
      onPointerDown: (_) => controller.lock(),
      // When user lifts finger, re-enable back gesture
      onPointerUp: (_) => controller.unlock(),
      // Safety fallback: if touch is cancelled (e.g. phone call), re-enable
      onPointerCancel: (_) => controller.unlock(),
      // HitTestBehavior.translucent ensures we catch events even if child has gaps
      behavior: HitTestBehavior.translucent,
      child: child,
    );
  }
}
