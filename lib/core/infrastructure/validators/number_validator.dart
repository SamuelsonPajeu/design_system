class NumberValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return true; // Optional: empty is considered valid.
    }

    return double.tryParse(value) != null;
  }
}
