import 'dart:convert';

class JsonMapValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return true; // Optional: empty is considered valid.
    }

    try {
      final dynamic decodedJson = jsonDecode(value);
      // Ensure the decoded object is a Map.
      return decodedJson is Map<String, dynamic>;
    } catch (e) {
      return false;
    }
  }
}
