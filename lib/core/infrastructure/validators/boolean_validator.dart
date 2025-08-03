class BooleanValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return true; // Optional: empty is considered valid.
    }

    final lowerValue = value.toLowerCase();
    return lowerValue == 'true' || lowerValue == 'false';
  }
}
