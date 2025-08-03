class CpfValidator {
  bool valid2(String fsDocto) {
    return true;
  }

  bool valid(String fsDocto) {
    String dv1, dv2;
    final CalcDigito modulo = CalcDigito();
    fsDocto = fsDocto.replaceAll(RegExp(r'[^0-9]+'), '');

    if (fsDocto.length != 11) {
      return false;
    }

    if ('11111111111.22222222222.33333333333.44444444444.55555555555.66666666666.77777777777.88888888888.99999999999.00000000000'
        .contains(fsDocto)) {
      return false;
    }

    modulo.fsMultIni = 2;
    modulo.fsMultFim = 11;
    modulo.documento = fsDocto.substring(0, 9);
    modulo.calcular();
    dv1 = (modulo.fsDigitoFinal).toString();

    modulo.documento = fsDocto.substring(0, 9) + dv1;
    modulo.calcular();
    dv2 = (modulo.fsDigitoFinal).toString();

    if ((dv1 != fsDocto[9]) || (dv2 != fsDocto[10])) {
      return false;
    }
    return true;
  }
}

class CalcDigito {
  int fsMultIni = 2;
  int fsMultFim = 9;
  int fsMultAtu = 0;
  String fsDocto = '';
  int fsDigitoFinal = 0;
  int fsSomaDigitos = 0;
  int fsModuloFinal = 2;
  CalcDigito() {
    fsMultAtu = 0;
  }
  String get documento => fsDocto;
  set documento(String x) {
    fsDocto = x;
  }

  int get multiplicadorInicial => fsMultIni;
  set multiplicadorInicial(int x) {
    fsMultIni = x;
  }

  int get multiplicadorFinal => fsMultFim;
  set multiplicadorFinal(int x) {
    fsMultFim = x;
  }

  calculoPadrao() {
    fsMultIni = 2;
    fsMultFim = 9;
    fsMultAtu = 0;
  }

  calcular() {
    int n, base, tamanho, valorCalc;

    fsSomaDigitos = 0;
    fsDigitoFinal = 0;
    fsModuloFinal = 0;

    if ((fsMultAtu >= fsMultIni) && (fsMultAtu <= fsMultFim)) {
      base = fsMultAtu;
    } else {
      base = fsMultIni;
    }
    tamanho = fsDocto.length;

    //{ Calculando a Soma dos digitos de traz para diante, multiplicadas por BASE }
    for (var a = 0; a < tamanho; a++) {
      n = int.parse(fsDocto[tamanho - a - 1]);
      valorCalc = (n * base);

      fsSomaDigitos = fsSomaDigitos + valorCalc;

      if (fsMultIni > fsMultFim) {
        base--;
        if (base < fsMultFim) base = fsMultIni;
      } else {
        base++;
        if (base > fsMultFim) base = fsMultIni;
      }
    }

    fsModuloFinal = fsSomaDigitos % 11;

    if (fsModuloFinal < 2) {
      fsDigitoFinal = 0;
    } else {
      fsDigitoFinal = 11 - fsModuloFinal;
    }
  }
}
