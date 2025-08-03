import 'package:flutter/services.dart';

class CpfAndCnpjInputFormatter extends TextInputFormatter {
  final int maxLength;

  CpfAndCnpjInputFormatter({
    this.maxLength = 14,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;

    if (newTextLength > maxLength) {
      return oldValue;
    }

    if (newTextLength <= 11) {
      int usedSubstringIndex = 0;
      final StringBuffer newText = StringBuffer();

      if (newTextLength >= 4) {
        newText.write('${newValue.text.substring(0, usedSubstringIndex = 3)}.');
        if (newValue.selection.end >= 3) selectionIndex++;
      }
      if (newTextLength >= 7) {
        newText.write('${newValue.text.substring(3, usedSubstringIndex = 6)}.');
        if (newValue.selection.end >= 6) selectionIndex++;
      }
      if (newTextLength >= 10) {
        newText.write('${newValue.text.substring(6, usedSubstringIndex = 9)}-');
        if (newValue.selection.end >= 9) selectionIndex++;
      }
      if (newTextLength >= usedSubstringIndex) {
        newText.write(newValue.text.substring(usedSubstringIndex));
      }

      return TextEditingValue(
        text: newText.toString(),
        selection: TextSelection.collapsed(offset: selectionIndex),
      );
    } else {
      int usedSubstringIndex = 0;
      final StringBuffer newText = StringBuffer();

      if (newTextLength >= 3) {
        newText.write('${newValue.text.substring(0, usedSubstringIndex = 2)}.');
        if (newValue.selection.end >= 2) {
          selectionIndex++;
        }
      }
      if (newTextLength >= 6) {
        newText.write('${newValue.text.substring(2, usedSubstringIndex = 5)}.');
        if (newValue.selection.end >= 5) {
          selectionIndex++;
        }
      }
      if (newTextLength >= 9) {
        newText.write('${newValue.text.substring(5, usedSubstringIndex = 8)}/');
        if (newValue.selection.end >= 8) {
          selectionIndex++;
        }
      }
      if (newTextLength >= 13) {
        newText
            .write('${newValue.text.substring(8, usedSubstringIndex = 12)}-');
        if (newValue.selection.end >= 12) {
          selectionIndex++;
        }
      }
      if (newTextLength >= usedSubstringIndex) {
        newText.write(newValue.text.substring(usedSubstringIndex));
      }

      return TextEditingValue(
        text: newText.toString(),
        selection: TextSelection.collapsed(offset: selectionIndex),
      );
    }
  }
}
