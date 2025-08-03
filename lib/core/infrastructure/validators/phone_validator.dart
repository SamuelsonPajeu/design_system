import 'package:design_system/core/infrastructure/utils/string_extensions.dart';

class PhoneValidator {
  bool valid(String? value) {
    final validationValue =
        value?.removeEverySpecialCharacter().replaceAll(' ', '');
    if (validationValue == null || validationValue.isEmpty) {
      return false;
    }
    if (validationValue.length < 11) {
      return false;
    }
    return true;
  }
}
