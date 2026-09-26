import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// A unified Design System Menu widget.
///
/// Use [DSMenu.anchor] for a general purpose menu anchored to a widget.
/// Use [DSMenu.dropdown] for a menu used to select an item from a list.
class DSMenu<T> extends StatefulWidget {
  /// Creates a general purpose anchor menu.
  const DSMenu.anchor({
    super.key,
    this.controller,
    this.childFocusNode,
    this.alignmentOffset = Offset.zero,
    this.menuAlignment,
    this.clipBehavior = Clip.hardEdge,
    this.consumeOutsideTap = false,
    this.onOpen,
    this.onClose,
    this.useRootOverlay = false,
    required this.menuChildren,
    this.builder,
    this.child,
    this.visualDensity = VisualDensity.standard,
  })  : _type = _DSMenuType.anchor,
        // Dropdown params
        enabled = true,
        width = null,
        label = null,
        hintText = null,
        errorText = null,
        textEditingController = null,
        initialSelection = null,
        onSelected = null,
        focusNode = null,
        dropdownMenuEntries = const [],
        leadingIcon = null,
        trailingIcon = null,
        enableFilter = false,
        enableSearch = false,
        showKeyboard = false;

  /// Creates a dropdown menu using [DropdownMenu] styled as DSTextField.
  const DSMenu.dropdown({
    super.key,
    this.enabled = true,
    this.width,
    this.label,
    this.hintText,
    this.errorText,
    this.leadingIcon,
    this.trailingIcon,
    TextEditingController? controller,
    this.initialSelection,
    this.onSelected,
    this.focusNode,
    this.alignmentOffset,
    this.menuAlignment,
    required this.dropdownMenuEntries,
    MenuController? menuController,
    this.visualDensity = VisualDensity.standard,
    this.enableFilter = true,
    this.enableSearch = true,
    this.showKeyboard = true,
  })  : _type = _DSMenuType.dropdown,
        textEditingController = controller,
        controller = menuController,
        // Anchor params
        childFocusNode = null,
        clipBehavior = Clip.hardEdge,
        consumeOutsideTap = true,
        onOpen = null,
        onClose = null,
        useRootOverlay = false,
        menuChildren = const [],
        builder = null,
        child = null;

  final _DSMenuType _type;

  // --- Common Parameters ---
  final MenuController? controller;
  final Offset? alignmentOffset;
  final AlignmentGeometry? menuAlignment;
  final VisualDensity visualDensity;

  // --- Anchor Parameters ---
  final FocusNode? childFocusNode;
  final Clip clipBehavior;
  final bool consumeOutsideTap;
  final VoidCallback? onOpen;
  final VoidCallback? onClose;
  final bool useRootOverlay;
  final List<Widget> menuChildren;
  final MenuAnchorChildBuilder? builder;
  final Widget? child;

  // --- Dropdown Parameters ---
  final bool enabled;
  final double? width;
  final Widget? label;
  final String? hintText;
  final String? errorText;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final TextEditingController? textEditingController;
  final T? initialSelection;
  final ValueChanged<T?>? onSelected;
  final FocusNode? focusNode;
  final List<DSDropdownMenuEntry<T>> dropdownMenuEntries;
  final bool enableFilter;
  final bool enableSearch;

  /// Prevents the system keyboard from showing and disables typing,
  /// but allows the field to receive focus and highlight its border.
  final bool showKeyboard;

  /// Returns a copy of an anchor menu with a new [builder].
  ///
  /// Throws [StateError] if used on a dropdown menu instance.
  DSMenu<T> copyWith({MenuAnchorChildBuilder? builder}) {
    if (_type != _DSMenuType.anchor) {
      throw StateError('copyWith(builder) only supported for DSMenu.anchor');
    }

    return DSMenu.anchor(
      key: key,
      controller: controller,
      childFocusNode: childFocusNode,
      alignmentOffset: alignmentOffset ?? Offset.zero,
      menuAlignment: menuAlignment,
      clipBehavior: clipBehavior,
      consumeOutsideTap: consumeOutsideTap,
      onOpen: onOpen,
      onClose: onClose,
      useRootOverlay: useRootOverlay,
      menuChildren: menuChildren,
      builder: builder ?? this.builder,
      visualDensity: visualDensity,
      child: child,
    );
  }

  @override
  State<DSMenu<T>> createState() => _DSMenuState<T>();
}

class _DSMenuState<T> extends State<DSMenu<T>> {
  FocusNode? _internalFocusNode;
  FocusNode get _effectiveFocusNode => widget.focusNode ?? _internalFocusNode!;

  @override
  void initState() {
    super.initState();
    if (widget._type == _DSMenuType.dropdown) {
      if (widget.focusNode == null) {
        _internalFocusNode = FocusNode();
      }
      _effectiveFocusNode.addListener(_onFocusChange);
    }
  }

  @override
  void didUpdateWidget(DSMenu<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget._type == _DSMenuType.dropdown) {
      if (widget.focusNode != oldWidget.focusNode) {
        oldWidget.focusNode?.removeListener(_onFocusChange);
        if (widget.focusNode == null && _internalFocusNode == null) {
          _internalFocusNode = FocusNode();
        }
        _effectiveFocusNode.addListener(_onFocusChange);
      }
    }
  }

  void _onFocusChange() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    if (widget._type == _DSMenuType.dropdown) {
      _effectiveFocusNode.removeListener(_onFocusChange);
      _internalFocusNode?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Shared Menu Style
    final menuStyle = MenuStyle(
      backgroundColor:
          WidgetStatePropertyAll(context.colors.sysSurfaceContainer),
      visualDensity: widget.visualDensity,
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      alignment: widget.menuAlignment,
    );

    if (widget._type == _DSMenuType.anchor) {
      return MenuAnchor(
        controller: widget.controller,
        childFocusNode: widget.childFocusNode,
        style: menuStyle,
        alignmentOffset: widget.alignmentOffset ?? Offset.zero,
        clipBehavior: widget.clipBehavior,
        consumeOutsideTap: widget.consumeOutsideTap,
        onOpen: widget.onOpen,
        onClose: widget.onClose,
        useRootOverlay: widget.useRootOverlay,
        menuChildren: widget.menuChildren,
        builder: widget.builder,
        child: widget.child,
      );
    } else {
      // --- Dropdown Styling (Matching DSTextField) ---

      // Is the field simulating focus to prevent keyboard popup?
      final bool isFakeFocused =
          !widget.showKeyboard && _effectiveFocusNode.hasFocus;

      // 1. Text Styles
      final TextStyle baseBodySmall = context.texts.bodySmall;
      final TextStyle baseBodyLarge = context.texts.bodyLarge;

      final labelStyle = WidgetStateTextStyle.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return baseBodyLarge.copyWith(
              color: context.colors.sysOnSurface.withValues(alpha: 0.38));
        }
        if (states.contains(WidgetState.error)) {
          return baseBodyLarge.copyWith(color: context.colors.sysError);
        }
        if (states.contains(WidgetState.hovered)) {
          return baseBodyLarge.copyWith(color: context.colors.sysOnSurface);
        }
        return baseBodyLarge.copyWith(
            color: context.colors.sysOnSurfaceVariant);
      });

      final floatingLabelStyle = WidgetStateTextStyle.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return baseBodySmall.copyWith(
              color: context.colors.sysOnSurface.withValues(alpha: 0.38));
        }
        if (states.contains(WidgetState.error)) {
          return baseBodySmall.copyWith(color: context.colors.sysError);
        }
        // Force the primary color when faking focus
        if (states.contains(WidgetState.focused) || isFakeFocused) {
          return baseBodySmall.copyWith(color: context.colors.sysPrimary);
        }
        return baseBodySmall.copyWith(
            color: context.colors.sysOnSurfaceVariant);
      });

      final hintStyle = WidgetStateTextStyle.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return baseBodyLarge.copyWith(
              color: context.colors.sysOnSurface.withValues(alpha: 0.38));
        }
        return baseBodyLarge.copyWith(
            color: context.colors.sysOnSurfaceVariant);
      });

      // 2. Borders
      final borderSide = BorderSide(color: context.colors.sysOutline);
      final errorBorderSide = BorderSide(color: context.colors.sysError);
      final focusedBorderSide =
          BorderSide(color: context.colors.sysPrimary, width: 3.0);
      final disabledBorderSide =
          BorderSide(color: context.colors.sysOutline.withValues(alpha: 0.12));

      // Overrides the default border if we are faking the focus
      final activeEnabledBorder =
          isFakeFocused ? focusedBorderSide : borderSide;

      // 3. Icons
      final iconColor = WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return context.colors.sysOnSurfaceVariant.withValues(alpha: 0.38);
        }
        return context.colors.sysOnSurfaceVariant;
      });

      // 4. Decoration Theme
      final inputDecorationTheme = InputDecorationTheme(
        filled: true,
        fillColor: context.colors.sysSurface,
        hoverColor: context.colors.sysSurface,
        focusColor: context.colors.sysSurface,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: activeEnabledBorder,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: activeEnabledBorder,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: focusedBorderSide,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: errorBorderSide,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: errorBorderSide.copyWith(width: 3.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: disabledBorderSide,
        ),
        labelStyle: labelStyle,
        floatingLabelStyle: floatingLabelStyle,
        hintStyle: hintStyle,
        errorStyle:
            context.texts.bodySmall.copyWith(color: context.colors.sysError),
        prefixIconColor: iconColor,
        suffixIconColor: iconColor,
      );

      // Convert DSDropdownMenuEntry to DropdownMenuEntry
      final mappedEntries = widget.dropdownMenuEntries.map((dsEntry) {
        return DropdownMenuEntry<T>(
          value: dsEntry.value,
          label: dsEntry.label,
          labelWidget: dsEntry.labelWidget,
          leadingIcon: dsEntry.leadingIcon,
          trailingIcon: dsEntry.trailingIcon,
          enabled: dsEntry.enabled,
          style: dsEntry.style,
        );
      }).toList();

      Widget dropdown = DropdownMenu<T>(
        enabled: widget.enabled,
        width: widget.width,
        controller: widget.textEditingController,
        // If we are showing the keyboard, let the DropdownMenu use the FocusNode naturally.
        // Otherwise, pass null so the inner TextField doesn't steal focus and summon the keyboard.
        focusNode: widget.showKeyboard ? _effectiveFocusNode : null,
        initialSelection: widget.initialSelection,
        onSelected: widget.onSelected,
        label: widget.label,
        hintText: widget.hintText,
        errorText: widget.errorText,
        leadingIcon: widget.leadingIcon,
        trailingIcon: widget.trailingIcon,
        dropdownMenuEntries: mappedEntries,
        inputDecorationTheme: inputDecorationTheme,
        menuStyle: menuStyle,
        enableFilter: widget.enableFilter,
        enableSearch: widget.showKeyboard ? widget.enableSearch : false,
        textStyle: baseBodyLarge.copyWith(color: context.colors.sysOnSurface),
        requestFocusOnTap: widget.showKeyboard,
      );

      // If we disabled the keyboard, we wrap the dropdown in our own Focus tracker
      // to intercept the tap and manually handle the focus state visually.
      if (!widget.showKeyboard) {
        dropdown = Focus(
          focusNode: _effectiveFocusNode,
          canRequestFocus: true,
          child: Listener(
            behavior: HitTestBehavior.translucent,
            onPointerDown: (_) {
              if (widget.enabled) {
                _effectiveFocusNode.requestFocus();
              }
            },
            child: dropdown,
          ),
        );
      }

      return dropdown;
    }
  }
}

enum _DSMenuType { anchor, dropdown }

/// Defines a [DSMenu] menu item that represents one item view in the menu.
/// Mirrors [DropdownMenuEntry] parameters.
class DSDropdownMenuEntry<T> {
  const DSDropdownMenuEntry({
    required this.value,
    required this.label,
    this.labelWidget,
    this.leadingIcon,
    this.trailingIcon,
    this.enabled = true,
    this.style,
  });

  /// The value used to identify the entry.
  final T value;

  /// The label displayed in the center of the menu item.
  final String label;

  /// Overrides the default label widget.
  final Widget? labelWidget;

  /// An optional icon to display before the label.
  final Widget? leadingIcon;

  /// An optional icon to display after the label.
  final Widget? trailingIcon;

  /// Whether the menu item is enabled or disabled.
  final bool enabled;

  /// Customizes this menu item's appearance.
  final ButtonStyle? style;
}

/// A Design System Menu Item Button.
/// Includes all parameters from [MenuItemButton].
class DSMenuItemButton extends StatelessWidget {
  const DSMenuItemButton({
    super.key,
    required this.onPressed,
    this.onHover,
    this.requestFocusOnHover = true,
    this.onFocusChange,
    this.focusNode,
    this.autofocus = false,
    this.shortcut,
    this.semanticsLabel,
    this.style,
    this.statesController,
    this.clipBehavior = Clip.none,
    this.leadingIcon,
    this.trailingIcon,
    this.closeOnActivate = true,
    this.overflowAxis = Axis.horizontal,
    required this.child,
  });

  final VoidCallback? onPressed;
  final ValueChanged<bool>? onHover;
  final bool requestFocusOnHover;
  final ValueChanged<bool>? onFocusChange;
  final FocusNode? focusNode;
  final bool autofocus;
  final MenuSerializableShortcut? shortcut;
  final String? semanticsLabel;
  final ButtonStyle? style;
  final WidgetStatesController? statesController;
  final Clip clipBehavior;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool closeOnActivate;
  final Axis overflowAxis;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    // Base DS Style
    final dsStyle = ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.hovered) ||
            states.contains(WidgetState.focused) ||
            states.contains(WidgetState.selected)) {
          return colors.sysSurfaceContainerHighest;
        }
        return Colors.transparent;
      }),
      foregroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return colors.sysOnSurface.withValues(alpha: 0.38);
        }
        return colors.sysOnSurface;
      }),
      overlayColor: WidgetStatePropertyAll(
          colors.sysSurfaceContainerHighest.withValues(alpha: 0.12)),
      padding:
          const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 12)),
      minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 48)),
      iconColor: WidgetStatePropertyAll(colors.sysOnSurface),
    );

    // Merge user provided style on top of DS style
    final effectiveStyle = style == null ? dsStyle : dsStyle.merge(style);

    return MenuItemButton(
      onPressed: onPressed,
      onHover: onHover,
      requestFocusOnHover: requestFocusOnHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: autofocus,
      shortcut: shortcut,
      semanticsLabel: semanticsLabel,
      style: effectiveStyle,
      statesController: statesController,
      clipBehavior: clipBehavior,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      closeOnActivate: closeOnActivate,
      overflowAxis: overflowAxis,
      child: child,
    );
  }
}
