import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DSFieldMask {
  DSFieldMask({
    required this.mask,
    required this.inputFormatter,
  });

  final MaskTextInputFormatter? mask;
  final List<TextInputFormatter>? inputFormatter;

  static final cep = MaskTextInputFormatter(
    mask: '#####-###',
    filter: {"#": RegExp(r'[0-9]')},
  );

  static final cpf = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  static final numeroCasa = MaskTextInputFormatter(
    mask: '######',
    filter: {"#": RegExp(r'[A-Z0-9]+')},
  );

  static final uf = MaskTextInputFormatter(
    mask: '##',
    filter: {"#": RegExp(r'[A-Z]')},
  );

  static final data = MaskTextInputFormatter(mask: '##/##/####');
  static final dataRange =
      MaskTextInputFormatter(mask: '##/##/####-##/##/####');
  static final time = MaskTextInputFormatter(mask: '##:##');

  static final dateTime = MaskTextInputFormatter(
    mask: '##/##/#### ##:##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  static final phone = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  static final pisPasepNis = MaskTextInputFormatter(
    mask: '###.#####.##-#',
    filter: {"#": RegExp(r'[0-9]')},
  );

  static final cns = MaskTextInputFormatter(
    mask: '### #### #### ####',
    filter: {'#': RegExp('[0-9]')},
  );

  static DSFieldMask? fromType(DSFieldMaskType? type) {
    switch (type) {
      case DSFieldMaskType.cep:
        final mask = cep;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );

      case DSFieldMaskType.cpf:
        final mask = cpf;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );

      case DSFieldMaskType.numeroCasa:
        final mask = numeroCasa;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
            const DSUpperCaseTextFormatter(),
            mask,
          ],
        );

      case DSFieldMaskType.uf:
        final mask = uf;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [
            LengthLimitingTextInputFormatter(2),
            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
            const DSUpperCaseTextFormatter(),
            mask,
          ],
        );

      case DSFieldMaskType.data:
        final mask = data;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );

      case DSFieldMaskType.dateTime:
        final mask = dateTime;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );

      case DSFieldMaskType.dataRange:
        final mask = dataRange;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );
      case DSFieldMaskType.time:
        final mask = time;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );
      case DSFieldMaskType.phone:
        final mask = phone;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );
      case DSFieldMaskType.pis:
      case DSFieldMaskType.pasep:
      case DSFieldMaskType.nis:
        final mask = pisPasepNis;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );
      case DSFieldMaskType.height:
        return DSFieldMask(
          mask: null,
          inputFormatter: [DSHeightTextInputFormatter()],
        );
      case DSFieldMaskType.weight:
        return DSFieldMask(
          mask: null,
          inputFormatter: [DSWeightTextInputFormatter()],
        );
      case DSFieldMaskType.cns:
        final mask = cns;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [FilteringTextInputFormatter.digitsOnly, mask],
        );
      case _:
        return null;
    }
  }
}

enum DSFieldMaskType {
  cep,
  cpf,
  numeroCasa,
  uf,
  data,
  dataRange,
  time,
  phone,
  pis,
  pasep,
  nis,
  dateTime,
  height,
  weight,
  cns
}

class DSUpperCaseTextFormatter implements TextInputFormatter {
  const DSUpperCaseTextFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class DSHeightTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) return newValue;

    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');
    if (digits.length > 3) {
      digits = digits.substring(0, 3);
    }

    String formatted = digits;
    if (digits.length == 2) {
      formatted = '${digits[0]}.${digits[1]}';
    } else if (digits.length == 3) {
      formatted = '${digits[0]}.${digits.substring(1)}';
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

class DSWeightTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) return newValue;

    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');
    if (digits.length > 5) {
      digits = digits.substring(0, 5);
    }

    String formatted = digits;
    if (digits.length == 3) {
      formatted = '${digits.substring(0, 2)}.${digits[2]}'; // XX.X
    } else if (digits.length == 4) {
      formatted = '${digits.substring(0, 3)}.${digits[3]}'; // XXX.X
    } else if (digits.length == 5) {
      formatted = '${digits.substring(0, 3)}.${digits.substring(3)}'; // XXX.XX
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
