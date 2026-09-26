import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A Design System Text Field wrapper around Flutter's [TextField].
class DSTextField extends StatelessWidget {
  const DSTextField.standard({
    super.key,
    this.groupId = EditableText,
    this.controller,
    this.focusNode,
    this.undoController,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.showCursor,
    this.autofocus = false,
    this.statesController,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.showMaxLengthCount = true,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled,
    this.ignorePointers,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorOpacityAnimates,
    this.cursorColor,
    this.cursorErrorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection,
    this.selectAllOnFocus,
    this.selectionControls,
    this.onTap,
    this.onTapAlwaysCalled = false,
    this.onTapOutside,
    this.onTapUpOutside,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.contentInsertionConfiguration,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.stylusHandwritingEnabled =
        EditableText.defaultStylusHandwritingEnabled,
    this.enableIMEPersonalizedLearning = true,
    this.contextMenuBuilder,
    this.canRequestFocus = true,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.hintLocales,
    this.prefixIcon,
    this.suffixIcon,
    this.showClearButtonAndErrorIcon = false,
    this.labelText,
    this.label,
    this.hintText,
    this.errorText,
    this.labelAlwaysOnTop = true,
  })  : _isSmall = false,
        _isCustom = false,
        assert(!(suffixIcon != null && showClearButtonAndErrorIcon == true),
            'Cannot provide both suffixIcon and showClearButtonAndErrorIcon. Choose one.');

  const DSTextField.small({
    super.key,
    this.groupId = EditableText,
    this.controller,
    this.focusNode,
    this.undoController,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.showCursor,
    this.autofocus = false,
    this.statesController,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.showMaxLengthCount = true,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled,
    this.ignorePointers,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorOpacityAnimates,
    this.cursorColor,
    this.cursorErrorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection,
    this.selectAllOnFocus,
    this.selectionControls,
    this.onTap,
    this.onTapAlwaysCalled = false,
    this.onTapOutside,
    this.onTapUpOutside,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.contentInsertionConfiguration,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.stylusHandwritingEnabled =
        EditableText.defaultStylusHandwritingEnabled,
    this.enableIMEPersonalizedLearning = true,
    this.contextMenuBuilder,
    this.canRequestFocus = true,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.hintLocales,
    this.prefixIcon,
    this.suffixIcon,
    this.showClearButtonAndErrorIcon = false,
    this.labelText,
    this.label,
    this.hintText,
    this.errorText,
    this.labelAlwaysOnTop = true,
  })  : _isSmall = true,
        _isCustom = false,
        assert(!(suffixIcon != null && showClearButtonAndErrorIcon == true),
            'Cannot provide both suffixIcon and showClearButtonAndErrorIcon. Choose one.');

  const DSTextField.custom({
    super.key,
    this.groupId = EditableText,
    this.controller,
    this.focusNode,
    this.undoController,
    this.decoration,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.showCursor,
    this.autofocus = false,
    this.statesController,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.showMaxLengthCount = true,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled,
    this.ignorePointers,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorOpacityAnimates,
    this.cursorColor,
    this.cursorErrorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection,
    this.selectAllOnFocus,
    this.selectionControls,
    this.onTap,
    this.onTapAlwaysCalled = false,
    this.onTapOutside,
    this.onTapUpOutside,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.contentInsertionConfiguration,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.stylusHandwritingEnabled =
        EditableText.defaultStylusHandwritingEnabled,
    this.enableIMEPersonalizedLearning = true,
    this.contextMenuBuilder,
    this.canRequestFocus = true,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.hintLocales,
    this.prefixIcon,
    this.suffixIcon,
    this.showClearButtonAndErrorIcon = false,
    this.labelText,
    this.label,
    this.hintText,
    this.errorText,
    this.labelAlwaysOnTop = true,
  })  : _isSmall = false,
        _isCustom = true,
        assert(
            decoration == null ||
                (prefixIcon == null &&
                    suffixIcon == null &&
                    showClearButtonAndErrorIcon == false),
            'When using DSTextField.custom with a decoration, you cannot use prefixIcon, suffixIcon, or showClearButtonAndErrorIcon.'),
        assert(!(suffixIcon != null && showClearButtonAndErrorIcon == true),
            'Cannot provide both suffixIcon and showClearButtonAndErrorIcon. Choose one.');

  final Object groupId;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final UndoHistoryController? undoController;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool readOnly;
  final bool? showCursor;
  final bool autofocus;
  final WidgetStatesController? statesController;
  final String obscuringCharacter;
  final bool obscureText;
  final bool? autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final bool showMaxLengthCount;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final AppPrivateCommandCallback? onAppPrivateCommand;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final bool? ignorePointers;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final bool? cursorOpacityAnimates;
  final Color? cursorColor;
  final Color? cursorErrorColor;
  final ui.BoxHeightStyle selectionHeightStyle;
  final ui.BoxWidthStyle selectionWidthStyle;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final DragStartBehavior dragStartBehavior;
  final bool? enableInteractiveSelection;
  final bool? selectAllOnFocus;
  final TextSelectionControls? selectionControls;
  final GestureTapCallback? onTap;
  final bool onTapAlwaysCalled;
  final TapRegionCallback? onTapOutside;
  final TapRegionUpCallback? onTapUpOutside;
  final MouseCursor? mouseCursor;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final ContentInsertionConfiguration? contentInsertionConfiguration;
  final Clip clipBehavior;
  final String? restorationId;
  final bool stylusHandwritingEnabled;
  final bool enableIMEPersonalizedLearning;
  final EditableTextContextMenuBuilder? contextMenuBuilder;
  final bool canRequestFocus;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final List<Locale>? hintLocales;

  /// Custom parameters
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool showClearButtonAndErrorIcon;
  final String? labelText;
  final Widget? label;
  final String? hintText;
  final String? errorText;
  final bool labelAlwaysOnTop;

  /// Internal flags
  final bool _isSmall;
  final bool _isCustom;

  @override
  Widget build(BuildContext context) {
    final bool isError = errorText != null;

    // --- Color Resolutions ---
    final iconColor = WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return context.colors.sysOnSurfaceVariant.withValues(alpha: 0.38);
      }
      return context.colors.sysOnSurfaceVariant;
    });

    final borderSide = BorderSide(color: context.colors.sysOutline);
    final errorBorderSide = BorderSide(color: context.colors.sysError);
    final focusedBorderSide =
        BorderSide(color: context.colors.sysPrimary, width: 3.0);
    final disabledBorderSide =
        BorderSide(color: context.colors.sysOutline.withValues(alpha: 0.12));

    // Base Text Styles
    final TextStyle baseBodySmall = context.texts.bodySmall;
    final TextStyle baseBodyLarge = context.texts.bodyLarge;

    // Label Style (Floating Label / Inside Label)
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
      // Enabled/Focused (Inside) -> bodyLarge, sysOnSurfaceVariant
      return baseBodyLarge.copyWith(color: context.colors.sysOnSurfaceVariant);
    });

    final floatingLabelStyle = WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return baseBodySmall.copyWith(
            color: context.colors.sysOnSurface.withValues(alpha: 0.38));
      }
      if (states.contains(WidgetState.error)) {
        return baseBodySmall.copyWith(color: context.colors.sysError);
      }
      // Focused/Enabled (Floating) -> bodySmall, sysOnSurfaceVariant
      return baseBodySmall.copyWith(color: context.colors.sysOnSurfaceVariant);
    });

    final hintStyle = WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return baseBodyLarge.copyWith(
            color: context.colors.sysOnSurface.withValues(alpha: 0.38));
      }
      return baseBodyLarge.copyWith(color: context.colors.sysOnSurfaceVariant);
    });

    final inputTextStyle = WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return baseBodyLarge.copyWith(
            color: context.colors.sysOnSurface.withValues(alpha: 0.38));
      }
      return baseBodyLarge.copyWith(color: context.colors.sysOnSurface);
    });

    final effectiveCursorColor =
        isError ? context.colors.sysError : context.colors.sysOnSurfaceVariant;

    // --- Suffix Logic ---
    Widget? effectiveSuffix;
    if (showClearButtonAndErrorIcon) {
      if (isError) {
        effectiveSuffix = const Icon(
          Icons.error,
          size: 24,
        );
      } else {
        effectiveSuffix = IconButton(
          icon: const Icon(
            Icons.cancel_outlined,
            size: 24,
          ),
          onPressed: () {
            controller?.clear();
            onChanged?.call('');
          },
        );
      }
    } else {
      effectiveSuffix = suffixIcon;
    }

    // --- Decoration Construction ---
    InputDecoration effectiveDecoration;

    if (_isCustom && decoration != null) {
      effectiveDecoration = decoration!;
    } else {
      final EdgeInsetsGeometry effectiveContentPadding = _isSmall
          ? const EdgeInsets.symmetric(horizontal: 12, vertical: 8)
          : const EdgeInsets.symmetric(horizontal: 12, vertical: 16);

      final baseDecoration = InputDecoration(
        filled: true,
        fillColor: context.colors.sysSurface,
        hoverColor: context.colors.sysSurface,
        focusColor: context.colors.sysSurface,
        contentPadding: effectiveContentPadding,
        isDense: _isSmall ? true : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: borderSide,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: borderSide,
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
        floatingLabelBehavior: labelAlwaysOnTop
            ? FloatingLabelBehavior.always
            : FloatingLabelBehavior.auto,
        hintStyle: hintStyle,
        prefixIconColor: iconColor,
        suffixIconColor: iconColor,
        alignLabelWithHint: maxLines != null && maxLines! > 1,
      );

      effectiveDecoration = baseDecoration.copyWith(
        prefixIcon: prefixIcon,
        suffixIcon: effectiveSuffix,
        labelText: labelText,
        label: label,
        hintText: hintText,
        errorText: errorText,
        errorStyle:
            context.texts.bodySmall.copyWith(color: context.colors.sysError),
      );

      if (decoration != null) {
        effectiveDecoration = effectiveDecoration
            .copyWith(
              icon: decoration!.icon,
              iconColor: decoration!.iconColor,
              label: decoration!.label,
            )
            .copyWith(
              hintText: decoration!.hintText,
              hintStyle: decoration!.hintStyle,
              errorStyle: decoration!.errorStyle,
            );
      }
    }

    // Determine the counter builder logic
    final InputCounterWidgetBuilder? effectiveBuildCounter = !showMaxLengthCount
        ? (context, {required currentLength, required isFocused, maxLength}) =>
            null
        : buildCounter;

    return TextField(
      groupId: groupId,
      controller: controller,
      focusNode: focusNode,
      undoController: undoController,
      decoration: effectiveDecoration,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      style: style ?? inputTextStyle,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      textDirection: textDirection,
      readOnly: readOnly,
      showCursor: showCursor,
      autofocus: autofocus,
      statesController: statesController,
      obscuringCharacter: obscuringCharacter,
      obscureText: obscureText,
      autocorrect: autocorrect ?? true,
      smartDashesType: smartDashesType,
      smartQuotesType: smartQuotesType,
      enableSuggestions: enableSuggestions,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      maxLengthEnforcement: maxLengthEnforcement,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      onAppPrivateCommand: onAppPrivateCommand,
      inputFormatters: inputFormatters,
      enabled: enabled,
      ignorePointers: ignorePointers,
      cursorWidth: cursorWidth,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorOpacityAnimates: cursorOpacityAnimates,
      cursorColor: cursorColor ?? effectiveCursorColor,
      cursorErrorColor: cursorErrorColor,
      selectionHeightStyle: selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle,
      keyboardAppearance: keyboardAppearance,
      scrollPadding: scrollPadding,
      dragStartBehavior: dragStartBehavior,
      enableInteractiveSelection: enableInteractiveSelection,
      selectAllOnFocus: selectAllOnFocus,
      selectionControls: selectionControls,
      onTap: onTap,
      onTapAlwaysCalled: onTapAlwaysCalled,
      onTapOutside: onTapOutside ?? (_) => FocusScope.of(context).unfocus(),
      onTapUpOutside: onTapUpOutside,
      mouseCursor: mouseCursor,
      buildCounter: effectiveBuildCounter,
      scrollController: scrollController,
      scrollPhysics: scrollPhysics,
      autofillHints: autofillHints,
      contentInsertionConfiguration: contentInsertionConfiguration,
      clipBehavior: clipBehavior,
      restorationId: restorationId,
      stylusHandwritingEnabled: stylusHandwritingEnabled,
      enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
      contextMenuBuilder: contextMenuBuilder,
      canRequestFocus: canRequestFocus,
      spellCheckConfiguration: spellCheckConfiguration,
      magnifierConfiguration: magnifierConfiguration,
      hintLocales: hintLocales,
    );
  }
}
