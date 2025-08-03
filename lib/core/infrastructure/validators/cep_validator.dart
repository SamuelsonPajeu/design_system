class CepValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    final val = value.replaceAll('-', '');
    if (val.length < 8) {
      return false;
    }
    return true;
  }
}
