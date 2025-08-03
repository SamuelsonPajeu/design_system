class HeightValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    final height = int.tryParse(value.replaceAll(',', ''));
    if (height == null || height < 20 || height > 250) {
      return false;
    }

    return true;
  }
}
