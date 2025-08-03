import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_custom_form_input.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_custom_form_map.dart';
import 'package:design_system/core/components/organisms/form/presentation/widgets/ds_get_custom_input.dart';
import 'package:flutter/material.dart';

class DSCustomForm extends StatefulWidget {
  const DSCustomForm({super.key, required this.customFormMap});
  final DSCustomFormMap customFormMap;

  @override
  State<DSCustomForm> createState() => _DSCustomFormState();
}

class _DSCustomFormState extends State<DSCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.customFormMap.formKey,
        autovalidateMode: widget.customFormMap.autovalidateMode,
        child: Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 8,
          runSpacing: 8,
          children: widget.customFormMap.listDSCustomFormInput
              .map((DSCustomFormInput customFormInput) {
            return SizedBox(
              width: customFormInput.width,
              child: DSShakeError(
                key: customFormInput.shakeKey,
                child: Column(
                  children: [
                    DSGetCustomInput(
                      customFormInput: customFormInput,
                    ),
                    if (customFormInput.suffixWidget != null)
                      customFormInput.suffixWidget!,
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}
