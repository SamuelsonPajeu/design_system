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

  static final height = MaskTextInputFormatter(
    mask: '#,##',
    filter: {'#': RegExp('[0-9]')},
  );

  static final weight = MaskTextInputFormatter(
    mask: '###',
    filter: {'#': RegExp('[0-9]')},
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
          inputFormatter: [mask],
        );

      case DSFieldMaskType.cpf:
        final mask = cpf;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );

      case DSFieldMaskType.numeroCasa:
        final mask = numeroCasa;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [
            const DSUpperCaseTextFormatter(),
            mask,
          ],
        );

      case DSFieldMaskType.uf:
        final mask = uf;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [
            const DSUpperCaseTextFormatter(),
            mask,
          ],
        );

      case DSFieldMaskType.data:
        final mask = data;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );

      case DSFieldMaskType.dateTime:
        final mask = dateTime;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );

      case DSFieldMaskType.dataRange:
        final mask = dataRange;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );
      case DSFieldMaskType.time:
        final mask = time;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );
      case DSFieldMaskType.phone:
        final mask = phone;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );
      case DSFieldMaskType.pis:
      case DSFieldMaskType.pasep:
      case DSFieldMaskType.nis:
        final mask = pisPasepNis;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );
      case DSFieldMaskType.height:
        final mask = height;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );
      case DSFieldMaskType.weight:
        final mask = weight;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
        );
      case DSFieldMaskType.cns:
        final mask = cns;
        return DSFieldMask(
          mask: mask,
          inputFormatter: [mask],
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
