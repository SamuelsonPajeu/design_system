class PasswordValidator {
  bool valid(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.length < 6 ||
        !value.contains(RegExp(r'[0-9]')) ||
        !value.contains(RegExp(r'[a-z]')) ||
        !value.contains(RegExp(r'[A-Z]'))) {
      return false;
    }
    return true;
  }
}
