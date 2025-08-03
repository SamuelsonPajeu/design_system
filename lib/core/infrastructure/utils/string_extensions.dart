extension StringExtensions on String {
  String removeEverySpecialCharacter() {
    return toLowerCase()
        .replaceAllMapped(RegExp(r'[àáâãäå]'), (m) => 'a')
        .replaceAllMapped(RegExp(r'[èéêë]'), (m) => 'e')
        .replaceAllMapped(RegExp(r'[ìíîï]'), (m) => 'i')
        .replaceAllMapped(RegExp(r'[òóôõöø]'), (m) => 'o')
        .replaceAllMapped(RegExp(r'[ùúûü]'), (m) => 'u')
        .replaceAllMapped(RegExp(r'[ç]'), (m) => 'c')
        .replaceAll(RegExp(r'[^a-z0-9\s]'), ' ')
        .replaceAll(RegExp(r'\s+'), ' ');
  }

  String resumedText(int maxLength) {
    final withoutLineBreaks = replaceAll(RegExp(r'\r\n|\r|\n'), ' ');

    if (withoutLineBreaks.length <= maxLength) {
      return withoutLineBreaks;
    }

    return '${withoutLineBreaks.substring(0, maxLength)}...';
  }

  String hifenToSnakeCase() {
    return replaceAllMapped(
      RegExp(r'(-)([a-z])'),
      (match) => '_${match.group(2)!.toLowerCase()}',
    );
  }

  String snakeToHifenCase() {
    return replaceAllMapped(
      RegExp(r'(_)([a-z])'),
      (match) => '-${match.group(2)!.toLowerCase()}',
    );
  }

  String camelToHifenCase() {
    return replaceAllMapped(
      RegExp(r'([A-Z])'),
      (match) => '-${match.group(0)!.toLowerCase()}',
    );
  }

  String toSnakeCase() {
    final words = trim()
        .removeEverySpecialCharacter()
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty)
        .toList();

    if (words.isEmpty) return '';

    return words
        .map((word) => word.toLowerCase())
        .join('_')
        .replaceAll(RegExp(r'[_]+'), '_');
  }

  String toCamelCase() {
    final words = trim()
        .removeEverySpecialCharacter()
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty)
        .toList();

    if (words.isEmpty) return '';

    final firstWord = words.first.toLowerCase();
    final otherWords = words
        .skip(1)
        .map(
          (word) => word.isEmpty
              ? ''
              : word[0].toUpperCase() + word.substring(1).toLowerCase(),
        );

    return firstWord + otherWords.join('');
  }

  String? valueOrNull() {
    if (isEmpty) return null;
    return this;
  }
}
