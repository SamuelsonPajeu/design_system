import 'package:design_system/core/infrastructure/utils/string_extensions.dart';

class PhoneValidator {
  bool valid(String? value) {
    final validDDD = [
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      21,
      22,
      24,
      27,
      28,
      31,
      32,
      33,
      34,
      35,
      37,
      38,
      41,
      42,
      43,
      44,
      45,
      46,
      47,
      48,
      49,
      51,
      53,
      54,
      55,
      61,
      62,
      63,
      64,
      65,
      66,
      67,
      68,
      69,
      71,
      73,
      74,
      75,
      77,
      79,
      81,
      82,
      83,
      84,
      85,
      86,
      87,
      88,
      89,
      91,
      92,
      93,
      94,
      95,
      96,
      97,
      98,
      99,
    ];

    final validationValue =
        value?.removeEverySpecialCharacter().replaceAll(' ', '');
    if (validationValue == null || validationValue.isEmpty) {
      return false;
    }
    if (validationValue.length < 11) {
      return false;
    }
    if (validationValue[2] != '9') {
      return false;
    }
    final ddd = int.tryParse(validationValue.substring(0, 2));
    if (ddd == null || !validDDD.contains(ddd)) {
      return false;
    }

    return true;
  }
}
