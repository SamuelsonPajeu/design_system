import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File?> pickImage() async {
  try {
    final xFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    //TODO: Adicionar o bloqueio de imagens 4k ou imagens acima de 5MB.
    if (xFile != null) {
      return File(xFile.path);
    }
    return null;
  } catch (e) {
    return null;
  }
}
