class SimpleListValidator {
  bool valid(String? value) {
    if (value == null || value.trim().isEmpty) {
      return false;
    }

    String content = value.trim();

    // Handle optional list format
    if (content.startsWith('[') && content.endsWith(']')) {
      if (content.length == 2) return true; // Empty list '[]' is valid.
      content = content.substring(1, content.length - 1);
    } else if (content.contains('[') || content.contains(']')) {
      return false; // Malformed list
    }

    // Check if any item in the comma-separated content is empty.
    return content.split(',').every((item) => item.trim().isNotEmpty);
  }
}
