class CodeValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    if (value.length < 4) {
      return false;
    }
    return true;
  }
}
