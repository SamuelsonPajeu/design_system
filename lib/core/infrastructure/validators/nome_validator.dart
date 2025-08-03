class NomeValidator {
  static Map<String, String> accentsMap = {
    'á': 'a',
    'à': 'a',
    'â': 'a',
    'ã': 'a',
    'ä': 'a',
    'Á': 'A',
    'À': 'A',
    'Â': 'A',
    'Ã': 'A',
    'Ä': 'A',
    'é': 'e',
    'è': 'e',
    'ê': 'e',
    'ë': 'e',
    'É': 'E',
    'È': 'E',
    'Ê': 'E',
    'Ë': 'E',
    'í': 'i',
    'ì': 'i',
    'î': 'i',
    'ï': 'i',
    'Í': 'I',
    'Ì': 'I',
    'Î': 'I',
    'Ï': 'I',
    'ó': 'o',
    'ò': 'o',
    'ô': 'o',
    'õ': 'o',
    'ö': 'o',
    'Ó': 'O',
    'Ò': 'O',
    'Ô': 'O',
    'Õ': 'O',
    'Ö': 'O',
    'ú': 'u',
    'ù': 'u',
    'û': 'u',
    'ü': 'u',
    'Ú': 'U',
    'Ù': 'U',
    'Û': 'U',
    'Ü': 'U',
  };

  String prepare(String? input) {
    String result = (input ?? '').toLowerCase();
    accentsMap.forEach(
      (String key, String value) {
        result = result.replaceAll(key, value);
      },
    );
    return result;
  }

  bool valid(String? input, List<String>? blockList) {
    if (input == null || input.isEmpty) {
      return false;
    }

    if (input.split(' ').length < 2) {
      return false;
    }

    if (input.split(' ').length <= 2 &&
        input.split(' ').any((e) => e.isEmpty)) {
      return false;
    }

    print(blockList);
    print(blockList?.contains(prepare(input).toUpperCase()) == true);

    if (blockList?.contains(prepare(input).toUpperCase()) == true) {
      return false;
    }

    RegExp regExp = RegExp((blockList ?? []).join('|'), caseSensitive: true);
    print(regExp);
    Iterable<Match> matchs = regExp.allMatches(prepare(input).toUpperCase());
    print(matchs);
    if (matchs.isNotEmpty) {
      for (var match in matchs) {
        if (blockList?.contains(match.group(0).toString().toUpperCase()) ==
            true) {
          return false;
        }
      }
    }

    return true;
  }
}
