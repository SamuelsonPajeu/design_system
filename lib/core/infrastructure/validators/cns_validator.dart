class CnsValidator {
  bool valid(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    return _validateCNS(value);
  }
}

bool _validateCNS(String cns) {
  cns = cns.replaceAll(RegExp(r'\D'), '');

  if (cns.length != 15) {
    return false;
  }

  final firstDigit = int.parse(cns[0]);
  if (firstDigit >= 3 && firstDigit <= 6) {
    return false;
  }

  return _isSumDivisibleByEleven(cns);
}

bool _isSumDivisibleByEleven(String cns) {
  int soma = 0;
  for (int i = 0; i < cns.length; i++) {
    soma += int.parse(cns[i]) * (15 - i);
  }
  return soma % 11 == 0;
}
