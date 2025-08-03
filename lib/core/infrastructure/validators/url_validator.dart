class UrlValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    // Uri.tryParse is a safe way to check format without exceptions.
    return Uri.tryParse(value) != null;
  }
}
