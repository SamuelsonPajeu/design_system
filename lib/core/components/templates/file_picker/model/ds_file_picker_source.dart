import 'package:design_system/core/components/templates/file_picker/controller/ds_file_picker_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_symbols_icons/symbols.dart';

typedef DSFilePickerSourceCallback = Future<void> Function(
    DSFilePickerController controller);

class DSFilePickerSource {
  const DSFilePickerSource({
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final DSFilePickerSourceCallback onTap;

  factory DSFilePickerSource.camera({
    IconData icon = Symbols.photo_camera,
    String? title,
    String? subtitle,
  }) {
    return DSFilePickerSource(
      icon: icon,
      title: title ?? 'ds_file_picker.take_photo'.tr,
      subtitle: subtitle ?? 'ds_file_picker.use_camera_now'.tr,
      onTap: (controller) => _pickImageSource(controller, ImageSource.camera),
    );
  }

  factory DSFilePickerSource.gallery({
    IconData icon = Symbols.gallery_thumbnail,
    String? title,
    String? subtitle,
  }) {
    return DSFilePickerSource(
      icon: icon,
      title: title ?? 'ds_file_picker.choose_from_gallery'.tr,
      subtitle: subtitle ?? 'ds_file_picker.select_saved_photo'.tr,
      onTap: (controller) => _pickImageSource(controller, ImageSource.gallery),
    );
  }

  factory DSFilePickerSource.pdf({
    IconData icon = Symbols.description,
    String? title,
    String? subtitle,
  }) {
    return DSFilePickerSource(
      icon: icon,
      title: title ?? 'ds_file_picker.attach_pdf'.tr,
      subtitle: subtitle ?? 'ds_file_picker.send_pdf_document'.tr,
      onTap: _pickPdf,
    );
  }
}

Future<void> _pickImageSource(
    DSFilePickerController controller, ImageSource source) async {
  final XFile? file = await ImagePicker().pickImage(source: source);
  if (file == null) return;
  await controller.addDroppedFiles(
    [DropItem(name: file.name, readAsBytes: file.readAsBytes)],
  );
}

Future<void> _pickPdf(DSFilePickerController controller) async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: const ['pdf'],
    withData: true,
    allowMultiple: controller.allowMultiple,
  );
  if (result == null) return;
  await controller.addDroppedFiles(
    result.files
        .where((f) => f.bytes != null)
        .map((f) => DropItem(name: f.name, readAsBytes: () async => f.bytes!))
        .toList(),
  );
}
