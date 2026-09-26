class HouseNumberValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    if (value.toUpperCase() == 'S/N') {
      return true;
    }

    final intValue = int.tryParse(value);

    return intValue != null && intValue > 0;
  }
}
