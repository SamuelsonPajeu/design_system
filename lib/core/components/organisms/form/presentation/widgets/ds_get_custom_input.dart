import 'package:design_system/core/components/atoms/field_mask_type/ds_field_mask_type.dart';
import 'package:design_system/core/components/atoms/field_validator_type/ds_fields_validatos_type.dart';
import 'package:design_system/core/components/molecules/field/ds_dropdown_button_form_field.dart';
import 'package:design_system/core/components/molecules/field/ds_form_text_field.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_custom_form_input.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_type_of_input.dart';
import 'package:design_system/core/infrastructure/utils/format_date.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DSGetCustomInput extends StatefulWidget {
  const DSGetCustomInput({
    super.key,
    required this.customFormInput,
  });
  final DSCustomFormInput customFormInput;

  @override
  State<DSGetCustomInput> createState() => _DSGetCustomInputState();
}

class _DSGetCustomInputState extends State<DSGetCustomInput> {
  bool _obscurePassword = true;

  Future<void> _showDatePicker(
      {required BuildContext context,
      required TextEditingController controller,
      DatePickerEntryMode datePickerMode = DatePickerEntryMode.calendarOnly,
      DateTime? firstDate,
      DateTime? lastDate}) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialEntryMode: datePickerMode,
      initialDate: controller.text.isEmpty
          ? DateTime.now()
          : DateTime.parse(FormatDate.convertDateBrToIso8601(controller.text)),
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime(3000),
    );

    if (selectedDate != null) {
      final dateFormatedText = FormatDate.formatDataBr(
          DateTime.parse(selectedDate.toIso8601String()));
      setState(() {
        controller.text = dateFormatedText;
      });
      if (widget.customFormInput.onChanged != null) {
        widget.customFormInput.onChanged!(dateFormatedText);
      }
    }
  }

  Future<void> _showDateRangePicker(
      {required BuildContext context,
      required TextEditingController controller,
      DatePickerEntryMode datePickerMode = DatePickerEntryMode.calendarOnly,
      DateTime? firstDate,
      DateTime? lastDate}) async {
    final DateTimeRange? selectedDate = await showDateRangePicker(
      context: context,
      initialEntryMode: datePickerMode,
      firstDate: firstDate ?? DateTime(1930),
      lastDate: lastDate ?? DateTime.now(),
      builder: (context, child) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                height: 500,
                width: 400,
                child: child,
              ),
            ),
          ],
        );
      },
    );

    if (selectedDate != null) {
      final dateFormatedTextStart = FormatDate.formatDataBr(
          DateTime.parse(selectedDate.start.toIso8601String()));
      final dateFormatedTextEnd = FormatDate.formatDataBr(
          DateTime.parse(selectedDate.end.toIso8601String()));
      final rangeText = '$dateFormatedTextStart-$dateFormatedTextEnd';
      setState(() {
        controller.text = rangeText;
      });
      if (widget.customFormInput.onChanged != null) {
        widget.customFormInput.onChanged!(rangeText);
      }
    }
  }

  Future<void> _showTimerPicker({
    required BuildContext context,
    required TextEditingController controller,
    TimePickerEntryMode timePickerMode = TimePickerEntryMode.dial,
    bool use24hrs = true,
  }) async {
    MaterialLocalizations.of(context);
    TimeOfDay initialTime = TimeOfDay.now();
    if (controller.text.isNotEmpty) {
      try {
        final parts = controller.text.split(':');
        if (parts.length == 2) {
          final hour = int.parse(parts[0]);
          final minute = int.parse(parts[1]);
          if (hour >= 0 && hour < 24 && minute >= 0 && minute < 60) {
            initialTime = TimeOfDay(hour: hour, minute: minute);
          }
        }
      } catch (e) {
        // If parsing fails, we keep the initial time as now
        initialTime = TimeOfDay.now();
      }
    }

    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialEntryMode: timePickerMode,
      initialTime: initialTime,
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(alwaysUse24HourFormat: use24hrs),
            child: child ?? Container());
      },
    );

    if (selectedTime != null) {
      final DateTime now = DateTime.now();
      final DateTime selectedDateTime = DateTime(
          now.year, now.month, now.day, selectedTime.hour, selectedTime.minute);
      final formattedTimeOfDay = DateFormat('HH:mm').format(selectedDateTime);

      setState(() {
        controller.text = formattedTimeOfDay;
      });
      if (widget.customFormInput.onChanged != null) {
        widget.customFormInput.onChanged!(formattedTimeOfDay);
      }
    }
  }

  Future<void> _showCombinedDateTimePicker({
    required BuildContext context,
    required TextEditingController controller,
    DatePickerEntryMode datePickerMode = DatePickerEntryMode.calendarOnly,
    DateTime? firstDate,
    DateTime? lastDate,
    TimePickerEntryMode timePickerMode = TimePickerEntryMode.dial,
    bool use24hrs = true,
  }) async {
    DateTime? initialDate;
    if (controller.text.isNotEmpty) {
      try {
        final dateParts = controller.text.split(' ');
        if (dateParts.isNotEmpty) {
          final dateOnly = dateParts[0];
          try {
            initialDate = DateFormat('dd/MM/yyyy').parseStrict(dateOnly);
          } catch (e) {
            if (dateOnly.length >= 8) {
              try {
                final day = int.parse(dateOnly.substring(0, 2));
                final month = int.parse(dateOnly.substring(2, 4));
                final year = int.parse(dateOnly.substring(4, 8));
                initialDate = DateTime(year, month, day);
              } catch (e2) {
                initialDate = DateTime.now();
              }
            } else {
              initialDate = DateTime.now();
            }
          }
        } else {
          initialDate = DateTime.now();
        }
      } catch (e) {
        initialDate = DateTime.now();
      }
    } else {
      initialDate = DateTime.now();
    }

    TimeOfDay initialTime = TimeOfDay.now();
    if (controller.text.isNotEmpty) {
      try {
        final dateParts = controller.text.split(' ');
        if (dateParts.length >= 2) {
          final timeOnly = dateParts[1];
          final timeParts = timeOnly.split(':');
          if (timeParts.length >= 2) {
            final hour = int.parse(timeParts[0]);
            final minute = int.parse(timeParts[1]);
            if (hour >= 0 && hour < 24 && minute >= 0 && minute < 60) {
              initialTime = TimeOfDay(hour: hour, minute: minute);
            }
          } else {
            if (timeOnly.length >= 4) {
              try {
                final hour = int.parse(timeOnly.substring(0, 2));
                final minute = int.parse(timeOnly.substring(2, 4));
                if (hour >= 0 && hour < 24 && minute >= 0 && minute < 60) {
                  initialTime = TimeOfDay(hour: hour, minute: minute);
                }
              } catch (e2) {
                initialTime = TimeOfDay.now();
              }
            } else {}
          }
        } else {}
      } catch (e) {
        initialTime = TimeOfDay.now();
      }
    }

    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialEntryMode: datePickerMode,
      initialDate: initialDate,
      firstDate: firstDate ?? DateTime(1930),
      lastDate: lastDate ?? DateTime.now(),
    );

    if (selectedDate != null) {
      final TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: initialTime,
        initialEntryMode: timePickerMode,
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(alwaysUse24HourFormat: use24hrs),
              child: child ?? Container());
        },
      );

      if (selectedTime != null) {
        final fullDate = selectedDate.copyWith(
          hour: selectedTime.hour,
          minute: selectedTime.minute,
        );
        final formatter = DateFormat('dd/MM/yyyy HH:mm');
        final formattedText = formatter.format(fullDate);

        setState(() {
          widget.customFormInput.controller.text = formattedText;
        });

        if (widget.customFormInput.onChanged != null) {
          widget.customFormInput.onChanged!(formattedText);
        }
      } else {}
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.customFormInput.typeOfInput) {
      case DSTypeOfInput.name:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          controller: widget.customFormInput.controller,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          required: widget.customFormInput.required,
          visible: widget.customFormInput.visible,
          validate: widget.customFormInput.validate,
          validatorType: DSValidatorType.nome,
          validationMessage: 'Informe um nome válido',
          maxLenght: widget.customFormInput.maxLenght ?? 250,
          shakeKey: widget.customFormInput.shakeKey,
          onChanged: widget.customFormInput.onChanged,
          blockList: widget.customFormInput.blockList,
        );
      case DSTypeOfInput.cpf:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          controller: widget.customFormInput.controller,
          visible: widget.customFormInput.visible,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          maskType: DSFieldMaskType.cpf,
          keyboardType: TextInputType.number,
          required: widget.customFormInput.required,
          validate: widget.customFormInput.validate,
          readOnly: widget.customFormInput.readOnly,
          validatorType: DSValidatorType.cpf,
          validationMessage: 'Informe um cpf válido',
          shakeKey: widget.customFormInput.shakeKey,
          onChanged: widget.customFormInput.onChanged,
          maskedValidation: true,
        );
      case DSTypeOfInput.date:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          controller: widget.customFormInput.controller,
          visible: widget.customFormInput.visible,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          keyboardType: TextInputType.datetime,
          sufixIcon: IconButton(
              onPressed: () {
                if (widget.customFormInput.isRangePicker) {
                  _showDateRangePicker(
                    context: context,
                    controller: widget.customFormInput.controller,
                    datePickerMode: widget.customFormInput.datePickerEntryMode,
                    firstDate: widget.customFormInput.firstDate,
                    lastDate: widget.customFormInput.lastDate,
                  );
                } else {
                  _showDatePicker(
                    context: context,
                    controller: widget.customFormInput.controller,
                    datePickerMode: widget.customFormInput.datePickerEntryMode,
                    firstDate: widget.customFormInput.firstDate,
                    lastDate: widget.customFormInput.lastDate,
                  );
                }
              },
              icon: Icon(Icons.today)),
          maskType: widget.customFormInput.isRangePicker
              ? DSFieldMaskType.dataRange
              : DSFieldMaskType.data,
          readOnly: widget.customFormInput.readOnly,
          required: widget.customFormInput.required,
          validate: widget.customFormInput.validate,
          onChanged: widget.customFormInput.onChanged,
          validatorType: DSValidatorType.date,
          validationMessage: 'Informe uma data válida',
          shakeKey: widget.customFormInput.shakeKey,
          maskedValidation: widget.customFormInput.maskedValidation,
        );

      case DSTypeOfInput.dateTime:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          controller: widget.customFormInput.controller,
          visible: widget.customFormInput.visible,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          keyboardType: TextInputType.datetime,
          sufixIcon: IconButton(
            onPressed: () {
              _showCombinedDateTimePicker(
                context: context,
                controller: widget.customFormInput.controller,
                datePickerMode: widget.customFormInput.datePickerEntryMode,
                firstDate: widget.customFormInput.firstDate,
                lastDate: widget.customFormInput.lastDate,
                timePickerMode: widget.customFormInput.timePickerEntryMode,
                use24hrs: widget.customFormInput.use24hrs,
              );
            },
            icon: Icon(Icons.today),
          ),
          maskType: DSFieldMaskType.dateTime,
          readOnly: widget.customFormInput.readOnly,
          required: widget.customFormInput.required,
          validate: widget.customFormInput.validate,
          onChanged: widget.customFormInput.onChanged,
          validatorType: DSValidatorType.dateTime,
          validationMessage: 'Informe uma data e hora válida',
          shakeKey: widget.customFormInput.shakeKey,
        );

      case DSTypeOfInput.time:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          controller: widget.customFormInput.controller,
          visible: widget.customFormInput.visible,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          keyboardType: TextInputType.datetime,
          sufixIcon: IconButton(
            onPressed: () {
              _showTimerPicker(
                  context: context,
                  controller: widget.customFormInput.controller,
                  timePickerMode: widget.customFormInput.timePickerEntryMode,
                  use24hrs: widget.customFormInput.use24hrs);
            },
            icon: Icon(Icons.watch_later_outlined),
          ),
          maskType: DSFieldMaskType.time,
          readOnly: widget.customFormInput.readOnly,
          onTap: () => _showTimerPicker(
              context: context,
              controller: widget.customFormInput.controller,
              timePickerMode: widget.customFormInput.timePickerEntryMode,
              use24hrs: widget.customFormInput.use24hrs),
          required: widget.customFormInput.required,
          validate: widget.customFormInput.validate,
          onChanged: widget.customFormInput.onChanged,
          validatorType: DSValidatorType.date,
          validationMessage: 'Informe uma hora válida',
          shakeKey: widget.customFormInput.shakeKey,
          maskedValidation: widget.customFormInput.maskedValidation,
        );

      case DSTypeOfInput.dropDown:
        return DSDropDownButtonField(
          key: widget.customFormInput.key,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          fieldKey: widget.customFormInput.fieldKey,
          shakeKey: widget.customFormInput.shakeKey,
          value: widget.customFormInput.controller.text.isNotEmpty
              ? widget.customFormInput.controller.text
              : null,
          items: widget.customFormInput.dropDownOptions ?? [],
          required: widget.customFormInput.required,
          visible: widget.customFormInput.visible,
          validate: widget.customFormInput.validate,
          validatorType:
              widget.customFormInput.validatorType ?? DSValidatorType.notEmpty,
          validationMessage: widget.customFormInput.validationMessage ??
              'Selecione uma opção válida',
          autovalidateMode: widget.customFormInput.autovalidateMode,
          prefixIcon: widget.customFormInput.prefixIcon,
          onChanged: (value) {
            widget.customFormInput.controller.text = value ?? '';
            if (widget.customFormInput.onChanged != null) {
              widget.customFormInput.onChanged!(value ?? '');
            }
          },
        );
      case DSTypeOfInput.phone:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          controller: widget.customFormInput.controller,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          required: widget.customFormInput.required,
          validate: widget.customFormInput.validate,
          visible: widget.customFormInput.visible,
          validatorType: DSValidatorType.phone,
          maskType: DSFieldMaskType.phone,
          validationMessage: 'Informe um telefone válido',
          shakeKey: widget.customFormInput.shakeKey,
          onChanged: widget.customFormInput.onChanged,
        );
      case DSTypeOfInput.email:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          controller: widget.customFormInput.controller,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          required: widget.customFormInput.required,
          visible: widget.customFormInput.visible,
          validate: widget.customFormInput.validate,
          readOnly: widget.customFormInput.readOnly,
          validatorType: DSValidatorType.email,
          validationMessage: 'Informe um e-mail válido',
          shakeKey: widget.customFormInput.shakeKey,
          onChanged: widget.customFormInput.onChanged,
        );
      case DSTypeOfInput.cep:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          fieldKey: widget.customFormInput.fieldKey,
          hintText: widget.customFormInput.hintText,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          controller: widget.customFormInput.controller,
          visible: widget.customFormInput.visible,
          prefixIcon: widget.customFormInput.prefixIcon,
          sufixIcon: widget.customFormInput.sufixIcon,
          keyboardType: TextInputType.number,
          maskType: DSFieldMaskType.cep,
          required: widget.customFormInput.required,
          validate: widget.customFormInput.validate,
          validatorType: DSValidatorType.cep,
          validationMessage: widget.customFormInput.validationMessage ??
              'Informe um CEP válido',
          shakeKey: widget.customFormInput.shakeKey,
          onEditingComplete: widget.customFormInput.onEditingComplete,
          onChanged: widget.customFormInput.onChanged,
        );
      case DSTypeOfInput.houseNumber:
        return ValueListenableBuilder<TextEditingValue>(
          valueListenable: widget.customFormInput.controller,
          builder: (context, value, child) {
            final String semanticLabel = value.text.isEmpty
                ? "Número da residência, vazio"
                : "Número da residência, ${value.text}";

            return Semantics(
              label: semanticLabel,
              hint: widget.customFormInput.required
                  ? "(Campo obrigatório) ${widget.customFormInput.readOnly ? 'Campo desativado' : 'toque duas vezes para editar'}"
                  : widget.customFormInput.readOnly
                      ? 'Campo desativado'
                      : "toque duas vezes para editar",
              textField: true,
              excludeSemantics: true,
              child: DSFormTextField(
                key: widget.customFormInput.key,
                showCounter: widget.customFormInput.showCounter,
                focusNode: widget.customFormInput.focusNode,
                backgroundColor: widget.customFormInput.backgroundColor,
                hintText: widget.customFormInput.hintText,
                controller: widget.customFormInput.controller,
                autovalidateMode: widget.customFormInput.autovalidateMode,
                keyboardType: TextInputType.multiline,
                required: widget.customFormInput.required,
                visible: widget.customFormInput.visible,
                validate: widget.customFormInput.validate,
                maskType: DSFieldMaskType.numeroCasa,
                validatorType: DSValidatorType.notEmpty,
                validationMessage: 'Informe um número válido',
                shakeKey: widget.customFormInput.shakeKey,
                onChanged: widget.customFormInput.onChanged,
              ),
            );
          },
        );
      case DSTypeOfInput.pis:
      case DSTypeOfInput.pasep:
      case DSTypeOfInput.nis:
        String documentType =
            widget.customFormInput.typeOfInput == DSTypeOfInput.pis
                ? "PIS"
                : (widget.customFormInput.typeOfInput == DSTypeOfInput.pasep
                    ? "PASEP"
                    : "NIS");
        return Semantics(
          label: "Campo de edição: $documentType",
          hint: widget.customFormInput.required
              ? "(Campo obrigatório) ${widget.customFormInput.readOnly ? 'Campo desativado' : 'toque duas vezes para editar'}"
              : widget.customFormInput.readOnly
                  ? 'Campo desativado'
                  : "toque duas vezes para editar",
          excludeSemantics: true,
          child: DSFormTextField(
            key: widget.customFormInput.key,
            showCounter: widget.customFormInput.showCounter,
            focusNode: widget.customFormInput.focusNode,
            backgroundColor: widget.customFormInput.backgroundColor,
            hintText: widget.customFormInput.hintText,
            controller: widget.customFormInput.controller,
            visible: widget.customFormInput.visible,
            autovalidateMode: widget.customFormInput.autovalidateMode,
            keyboardType: TextInputType.number,
            required: widget.customFormInput.required,
            validate: widget.customFormInput.validate,
            maskType: DSFieldMaskType.pis,
            validatorType: DSValidatorType.notEmpty,
            validationMessage: 'Informe um número válido',
            shakeKey: widget.customFormInput.shakeKey,
            onChanged: widget.customFormInput.onChanged,
          ),
        );
      case DSTypeOfInput.password:
        return DSFormTextField(
          key: widget.customFormInput.key,
          showCounter: widget.customFormInput.showCounter,
          focusNode: widget.customFormInput.focusNode,
          backgroundColor: widget.customFormInput.backgroundColor,
          hintText: widget.customFormInput.hintText,
          controller: widget.customFormInput.controller,
          autovalidateMode: widget.customFormInput.autovalidateMode,
          required: widget.customFormInput.required,
          validate: widget.customFormInput.validate,
          visible: widget.customFormInput.visible,
          obscureText: _obscurePassword,
          validatorType:
              widget.customFormInput.validatorType ?? DSValidatorType.password,
          validationMessage: widget.customFormInput.validationMessage ??
              'Informe uma senha válida',
          shakeKey: widget.customFormInput.shakeKey,
          onChanged: widget.customFormInput.onChanged,
          sufixIcon: IconButton(
            icon: Icon(
              _obscurePassword ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
          sufixIconSemanticLabel:
              _obscurePassword ? 'Exibir senha' : 'Ocultar senha',
        );
      case DSTypeOfInput.custom:
        return DSFormTextField(
            key: widget.customFormInput.key,
            showCounter: widget.customFormInput.showCounter,
            backgroundColor: widget.customFormInput.backgroundColor,
            hintText: widget.customFormInput.hintText,
            controller: widget.customFormInput.controller,
            autovalidateMode: widget.customFormInput.autovalidateMode,
            visible: widget.customFormInput.visible,
            shakeKey: widget.customFormInput.shakeKey,
            fieldKey: widget.customFormInput.fieldKey,
            obscureText: widget.customFormInput.obscureText ?? false,
            focusNode: widget.customFormInput.focusNode,
            keyboardType: widget.customFormInput.keyboardType,
            prefixIcon: widget.customFormInput.prefixIcon,
            sufixIcon: widget.customFormInput.sufixIcon,
            suffixText: widget.customFormInput.suffixText,
            padding: widget.customFormInput.padding,
            required: widget.customFormInput.required,
            readOnly: widget.customFormInput.readOnly,
            validate: widget.customFormInput.validate,
            maskedValidation: widget.customFormInput.maskedValidation,
            onTap: widget.customFormInput.onTap,
            onEditingComplete: widget.customFormInput.onEditingComplete,
            onChanged: widget.customFormInput.onChanged,
            validatorType: widget.customFormInput.validatorType,
            validationMessage: widget.customFormInput.validationMessage,
            equalValidationValue: widget.customFormInput.equalValidationValue,
            equalValidationMessage:
                widget.customFormInput.equalValidationMessage,
            maxLenght: widget.customFormInput.maxLenght,
            maskType: widget.customFormInput.maskType,
            blockList: widget.customFormInput.blockList);
    }
  }
}
