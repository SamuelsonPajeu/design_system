class WeightValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    final weight = int.tryParse(value);
    if (weight == null || weight < 20 || weight > 250) {
      return false;
    }

    return true;
  }
}
