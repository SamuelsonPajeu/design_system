import 'package:design_system/core/components/atoms/field_validator_type/ds_fields_validatos_type.dart';
import 'package:design_system/core/components/molecules/menu/ds_menu.dart';
import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class DSDropDownButtonField extends StatefulWidget {
  const DSDropDownButtonField({
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.shakeKey,
    this.fieldKey,
    this.focusNode,
    this.value,
    this.padding = 0,
    this.required = false,
    this.validate = false,
    this.visible = true,
    this.validatorType,
    this.validationMessage,
    this.backgroundColor,
    this.autovalidateMode,
    this.prefixIcon,
    this.readOnly = false,
    super.key,
  });

  final String hintText;
  final String? value;
  final List<String> items;
  final Function(String?) onChanged;
  final double padding;
  final bool required;
  final bool validate;
  final bool visible;
  final String? validationMessage;
  final DSValidatorType? validatorType;
  final GlobalKey<DSShakeErrorState>? shakeKey;
  final GlobalKey<FormFieldState>? fieldKey;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final AutovalidateMode? autovalidateMode;
  final Icon? prefixIcon;
  final bool readOnly;

  @override
  State<DSDropDownButtonField> createState() => _DSDropDownButtonFieldState();
}

class _DSDropDownButtonFieldState extends State<DSDropDownButtonField> {
  final GlobalKey<DSShakeErrorState> _internalShakeKey =
      GlobalKey<DSShakeErrorState>();
  final GlobalKey<FormFieldState> _internalFieldKey =
      GlobalKey<FormFieldState>();

  GlobalKey<FormFieldState> get _effectiveFieldKey =>
      widget.fieldKey ?? _internalFieldKey;

  void _shake() {
    final externalShake = widget.shakeKey?.currentState;

    if (externalShake != null) {
      externalShake.shake();
      return;
    }

    _internalShakeKey.currentState?.shake();
  }

  late TextEditingController _textController;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.value ?? '');

    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      _effectiveFieldKey.currentState?.validate();
    }
  }

  @override
  void didUpdateWidget(DSDropDownButtonField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      if (widget.value != null && widget.value != _textController.text) {
        _textController.text = widget.value!;
      } else if (widget.value == null) {
        _textController.clear();
      }
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.removeListener(_onFocusChange);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  String? _validate(String? value) {
    bool fieldIsEmpty = value == null || value.trim().isEmpty;

    if (!widget.required && fieldIsEmpty) return null;

    if (!widget.required && widget.validatorType == null && !widget.validate) {
      return null;
    }

    if (widget.required && fieldIsEmpty) {
      _shake();
      return widget.validationMessage ?? 'Campo obrigatório';
    }

    if (widget.validatorType != null &&
        !DSValidateField.fromType(widget.validatorType!, value!)) {
      _shake();
      return widget.validationMessage ?? 'Valor inválido';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.visible) return const SizedBox.shrink();

    final appColorsExtension = context.colors;

    Widget? labelWidget;
    if (widget.hintText.isNotEmpty) {
      labelWidget = RichText(
        text: TextSpan(
          text: widget.hintText,
          style: context.texts.bodyLarge.copyWith(
            color: appColorsExtension.sysOnSurfaceVariant,
          ),
          children: [
            if (widget.required)
              TextSpan(
                  text: ' *',
                  style: TextStyle(color: appColorsExtension.sysError)),
          ],
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding),
      child: DSShakeError(
        key: _internalShakeKey,
        child: FormField<String>(
          key: _effectiveFieldKey,
          initialValue: widget.value,
          autovalidateMode:
              widget.autovalidateMode ?? AutovalidateMode.disabled,
          validator: _validate,
          builder: (FormFieldState<String> field) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return DSMenu<String>.dropdown(
                  width: constraints.maxWidth,
                  enabled: !widget.readOnly,
                  controller: _textController,
                  focusNode: _focusNode,
                  initialSelection: widget.value,
                  leadingIcon: widget.prefixIcon,
                  hintText: widget.hintText,
                  label: labelWidget,
                  errorText: field.errorText,
                  onSelected: (String? value) {
                    field.didChange(value);

                    if (value != null && value.isNotEmpty) {
                      SemanticsService.sendAnnouncement(View.of(context),
                          "Selecionado: $value", TextDirection.ltr);
                    }

                    widget.onChanged(value);

                    _focusNode.unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  dropdownMenuEntries: widget.items.map((String value) {
                    return DSDropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
