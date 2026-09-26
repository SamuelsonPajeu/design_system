import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;

import 'package:design_system/core/components/atoms/field_mask_type/ds_field_mask_type.dart';
import 'package:design_system/core/components/atoms/field_validator_type/ds_fields_validatos_type.dart';
import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/components/molecules/text_field/ds_text_field.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DSTextFormField extends StatefulWidget {
  const DSTextFormField({
    super.key,
    // --- DSTextFormField Custom Business Logic Params ---
    this.fieldKey,
    this.visible = true,
    this.required = false,
    this.validate = false,
    this.maskedValidation = false,
    this.autovalidateMode = AutovalidateMode.onUnfocus,
    this.validatorType,
    this.maskType,
    this.validationMessage,
    this.equalValidationValue,
    this.equalValidationMessage,
    this.blockList,
    this.shakeKey,
    this.isSmall = false,

    // --- Native DSTextField Params ---
    this.groupId = EditableText,
    this.controller,
    this.focusNode,
    this.undoController,
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
    this.hintText,
    this.labelAlwaysOnTop = true,
    this.customValidator,
  });

  final GlobalKey<FormFieldState>? fieldKey;
  final bool visible;
  final bool required;
  final bool validate;
  final bool maskedValidation;
  final AutovalidateMode autovalidateMode;
  final DSValidatorType? validatorType;
  final DSFieldMaskType? maskType;
  final String? validationMessage;
  final String? equalValidationValue;
  final String? equalValidationMessage;
  final List<String>? blockList;
  final GlobalKey<DSShakeErrorState>? shakeKey;
  final bool isSmall;
  final String? Function(String?)? customValidator;

  // Native Fields
  final Object groupId;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final UndoHistoryController? undoController;
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
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool showClearButtonAndErrorIcon;
  final String? labelText;
  final String? hintText;
  final bool labelAlwaysOnTop;

  @override
  State<DSTextFormField> createState() => _DSTextFormFieldState();
}

class _DSTextFormFieldState extends State<DSTextFormField> {
  late TextEditingController _controller;

  final GlobalKey<DSShakeErrorState> _internalShakeKey =
      GlobalKey<DSShakeErrorState>();
  final GlobalKey<FormFieldState> _internalFieldKey =
      GlobalKey<FormFieldState>();

  GlobalKey<DSShakeErrorState> get _effectiveShakeKey =>
      widget.shakeKey ?? _internalShakeKey;
  GlobalKey<FormFieldState> get _effectiveFieldKey =>
      widget.fieldKey ?? _internalFieldKey;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _formatInitialText();
  }

  void _formatInitialText() {
    if (_controller.text.isEmpty) return;

    final formatters = _getFormatters();
    if (formatters.isEmpty) return;

    TextEditingValue currentValue = TextEditingValue(
      text: _controller.text,
      selection: TextSelection.collapsed(offset: _controller.text.length),
    );

    for (var formatter in formatters) {
      currentValue = formatter.formatEditUpdate(
        const TextEditingValue(text: ''),
        currentValue,
      );
    }

    if (_controller.text != currentValue.text) {
      _controller.value = currentValue;
    }
  }

  List<TextInputFormatter> _getFormatters() {
    List<TextInputFormatter> formatters =
        widget.inputFormatters?.toList() ?? [];

    if (widget.maskType != null) {
      final dsMask = DSFieldMask.fromType(widget.maskType);
      if (dsMask?.inputFormatter != null) {
        formatters.addAll(dsMask!.inputFormatter!);
      }
    }

    return formatters;
  }

  String? _validate(String? value) {
    bool fieldIsEmpty = value == null || value.trim().isEmpty;

    if (!widget.required && fieldIsEmpty) {
      return null;
    }

    if (widget.customValidator != null) {
      final customError = widget.customValidator!(value);
      if (customError != null) {
        _effectiveShakeKey.currentState?.shake();
        return customError;
      }
      return null;
    }

    if (!widget.required &&
        widget.validatorType == null &&
        widget.validate == false &&
        widget.equalValidationValue == null) {
      return null;
    }

    String val = value ?? '';

    if (!widget.maskedValidation && widget.maskType != null) {
      if (widget.maskType != DSFieldMaskType.height &&
          widget.maskType != DSFieldMaskType.weight) {
        val = val.replaceAll(RegExp(r'\D'), '');
      }
    }

    if (widget.validatorType != null) {
      final isValid = DSValidateField.fromType(
        widget.validatorType!,
        val,
        blockList: widget.blockList,
      );

      if (!isValid) {
        _effectiveShakeKey.currentState?.shake();
        return widget.validationMessage ?? 'Campo obrigatório';
      }
    }

    if (widget.equalValidationValue != null &&
        val != widget.equalValidationValue) {
      _effectiveShakeKey.currentState?.shake();
      return widget.equalValidationMessage ?? 'Insira um valor válido';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.visible) return const SizedBox.shrink();

    Widget? labelWidget;
    final String labelStr = widget.labelText ?? widget.hintText ?? '';
    if (labelStr.isNotEmpty) {
      labelWidget = RichText(
        text: TextSpan(
          text: labelStr,
          style: context.texts.bodyLarge.copyWith(
            color: context.colors.sysOnSurfaceVariant,
          ),
          children: [
            if (widget.required)
              TextSpan(
                text: ' *',
                style: TextStyle(color: context.colors.sysError),
              ),
          ],
        ),
      );
    }

    return DSShakeError(
      key: _effectiveShakeKey,
      child: FormField<String>(
        key: _effectiveFieldKey,
        initialValue: _controller.text,
        autovalidateMode: widget.autovalidateMode,
        validator: _validate,
        builder: (FormFieldState<String> field) {
          void handleOnChange(String val) {
            field.didChange(val);
            if (widget.onChanged != null) {
              widget.onChanged!(val);
            }
          }

          if (widget.isSmall) {
            return DSTextField.small(
              groupId: widget.groupId,
              controller: _controller,
              focusNode: widget.focusNode,
              undoController: widget.undoController,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              textCapitalization: widget.textCapitalization,
              style: widget.style,
              strutStyle: widget.strutStyle,
              textAlign: widget.textAlign,
              textAlignVertical: widget.textAlignVertical,
              textDirection: widget.textDirection,
              readOnly: widget.readOnly,
              showCursor: widget.showCursor,
              autofocus: widget.autofocus,
              statesController: widget.statesController,
              obscuringCharacter: widget.obscuringCharacter,
              obscureText: widget.obscureText,
              autocorrect: widget.autocorrect,
              smartDashesType: widget.smartDashesType,
              smartQuotesType: widget.smartQuotesType,
              enableSuggestions: widget.enableSuggestions,
              maxLines: widget.maxLines,
              minLines: widget.minLines,
              expands: widget.expands,
              maxLength: widget.maxLength,
              maxLengthEnforcement: widget.maxLengthEnforcement,
              showMaxLengthCount: widget.showMaxLengthCount,
              onChanged: handleOnChange,
              onEditingComplete: widget.onEditingComplete,
              onSubmitted: widget.onSubmitted,
              onAppPrivateCommand: widget.onAppPrivateCommand,
              inputFormatters: _getFormatters(),
              enabled: widget.enabled,
              ignorePointers: widget.ignorePointers,
              cursorWidth: widget.cursorWidth,
              cursorHeight: widget.cursorHeight,
              cursorRadius: widget.cursorRadius,
              cursorOpacityAnimates: widget.cursorOpacityAnimates,
              cursorColor: widget.cursorColor,
              cursorErrorColor: widget.cursorErrorColor,
              selectionHeightStyle: widget.selectionHeightStyle,
              selectionWidthStyle: widget.selectionWidthStyle,
              keyboardAppearance: widget.keyboardAppearance,
              scrollPadding: widget.scrollPadding,
              dragStartBehavior: widget.dragStartBehavior,
              enableInteractiveSelection: widget.enableInteractiveSelection,
              selectAllOnFocus: widget.selectAllOnFocus,
              selectionControls: widget.selectionControls,
              onTap: widget.onTap,
              onTapAlwaysCalled: widget.onTapAlwaysCalled,
              onTapOutside: widget.onTapOutside,
              onTapUpOutside: widget.onTapUpOutside,
              mouseCursor: widget.mouseCursor,
              buildCounter: widget.buildCounter,
              scrollController: widget.scrollController,
              scrollPhysics: widget.scrollPhysics,
              autofillHints: widget.autofillHints,
              contentInsertionConfiguration:
                  widget.contentInsertionConfiguration,
              clipBehavior: widget.clipBehavior,
              restorationId: widget.restorationId,
              stylusHandwritingEnabled: widget.stylusHandwritingEnabled,
              enableIMEPersonalizedLearning:
                  widget.enableIMEPersonalizedLearning,
              contextMenuBuilder: widget.contextMenuBuilder,
              canRequestFocus: widget.canRequestFocus,
              spellCheckConfiguration: widget.spellCheckConfiguration,
              magnifierConfiguration: widget.magnifierConfiguration,
              hintLocales: widget.hintLocales,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              showClearButtonAndErrorIcon: widget.showClearButtonAndErrorIcon,
              label: labelWidget,
              hintText: widget.hintText,
              errorText: field.errorText,
              labelAlwaysOnTop: widget.labelAlwaysOnTop,
            );
          }

          return DSTextField.standard(
            groupId: widget.groupId,
            controller: _controller,
            focusNode: widget.focusNode,
            undoController: widget.undoController,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            textCapitalization: widget.textCapitalization,
            style: widget.style,
            strutStyle: widget.strutStyle,
            textAlign: widget.textAlign,
            textAlignVertical: widget.textAlignVertical,
            textDirection: widget.textDirection,
            readOnly: widget.readOnly,
            showCursor: widget.showCursor,
            autofocus: widget.autofocus,
            statesController: widget.statesController,
            obscuringCharacter: widget.obscuringCharacter,
            obscureText: widget.obscureText,
            autocorrect: widget.autocorrect,
            smartDashesType: widget.smartDashesType,
            smartQuotesType: widget.smartQuotesType,
            enableSuggestions: widget.enableSuggestions,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            expands: widget.expands,
            maxLength: widget.maxLength,
            maxLengthEnforcement: widget.maxLengthEnforcement,
            showMaxLengthCount: widget.showMaxLengthCount,
            onChanged: handleOnChange,
            onEditingComplete: widget.onEditingComplete,
            onSubmitted: widget.onSubmitted,
            onAppPrivateCommand: widget.onAppPrivateCommand,
            inputFormatters: _getFormatters(),
            enabled: widget.enabled,
            ignorePointers: widget.ignorePointers,
            cursorWidth: widget.cursorWidth,
            cursorHeight: widget.cursorHeight,
            cursorRadius: widget.cursorRadius,
            cursorOpacityAnimates: widget.cursorOpacityAnimates,
            cursorColor: widget.cursorColor,
            cursorErrorColor: widget.cursorErrorColor,
            selectionHeightStyle: widget.selectionHeightStyle,
            selectionWidthStyle: widget.selectionWidthStyle,
            keyboardAppearance: widget.keyboardAppearance,
            scrollPadding: widget.scrollPadding,
            dragStartBehavior: widget.dragStartBehavior,
            enableInteractiveSelection: widget.enableInteractiveSelection,
            selectAllOnFocus: widget.selectAllOnFocus,
            selectionControls: widget.selectionControls,
            onTap: widget.onTap,
            onTapAlwaysCalled: widget.onTapAlwaysCalled,
            onTapOutside: widget.onTapOutside,
            onTapUpOutside: widget.onTapUpOutside,
            mouseCursor: widget.mouseCursor,
            buildCounter: widget.buildCounter,
            scrollController: widget.scrollController,
            scrollPhysics: widget.scrollPhysics,
            autofillHints: widget.autofillHints,
            contentInsertionConfiguration: widget.contentInsertionConfiguration,
            clipBehavior: widget.clipBehavior,
            restorationId: widget.restorationId,
            stylusHandwritingEnabled: widget.stylusHandwritingEnabled,
            enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
            contextMenuBuilder: widget.contextMenuBuilder,
            canRequestFocus: widget.canRequestFocus,
            spellCheckConfiguration: widget.spellCheckConfiguration,
            magnifierConfiguration: widget.magnifierConfiguration,
            hintLocales: widget.hintLocales,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            showClearButtonAndErrorIcon: widget.showClearButtonAndErrorIcon,
            label: labelWidget,
            hintText: widget.hintText,
            errorText: field.errorText,
            labelAlwaysOnTop: widget.labelAlwaysOnTop,
          );
        },
      ),
    );
  }
}
