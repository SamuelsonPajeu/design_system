import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:design_system/core/components/templates/file_picker/controller/ds_file_picker_controller.dart';
import 'package:design_system/core/components/templates/file_picker/model/ds_file_picker_source.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DSFilePickerSourceSheet extends StatelessWidget {
  const DSFilePickerSourceSheet({
    super.key,
    required this.controller,
    required this.sources,
    this.title,
    this.subtitle,
    this.cancelText,
  });

  final DSFilePickerController controller;
  final List<DSFilePickerSource> sources;
  final String? title;
  final String? subtitle;
  final String? cancelText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        DSSize.medium.padding(),
        0,
        DSSize.medium.padding(),
        DSSize.medium.padding(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            DSText(
              title!,
              style: context.texts.headlineSmall.copyWith(
                fontWeight: FontWeight.w700,
                color: context.colors.sysOnSurface,
              ),
            ),
          if (subtitle != null) ...[
            SizedBox(height: DSSize.extraSmall.padding()),
            DSText(
              subtitle!,
              style: context.texts.bodyLarge.copyWith(
                color: context.colors.sysOnSurfaceVariant,
              ),
            ),
          ],
          SizedBox(height: DSSize.medium.padding()),
          ...sources.map(
            (source) => DSCard.button(
              style: DSCardStyle.enabled,
              showTrailingIcon: false,
              avatar: DSAvatar.medium.icon(icon: source.icon),
              title: source.title,
              subtitle: source.subtitle,
              onTap: () async {
                Navigator.pop(context);
                await source.onTap(controller);
              },
            ),
          ),
          SizedBox(height: DSSize.small.padding()),
          Center(
            child: DSButton.text(
              onTap: () async => Navigator.pop(context),
              buttonText: cancelText ?? 'ds_file_picker.cancel'.tr,
            ),
          ),
        ],
      ),
    );
  }
}
