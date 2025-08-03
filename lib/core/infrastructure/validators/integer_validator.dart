class IntegerValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return true; // Optional: empty is considered valid.
    }

    return int.tryParse(value) != null;
  }
}
