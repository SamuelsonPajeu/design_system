class RouteValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    if (value.length < 2 ||
        !value.startsWith('/') ||
        (value.length > 1 && value.endsWith('/'))) {
      return false;
    }

    return true;
  }
}
