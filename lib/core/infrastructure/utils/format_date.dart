import 'package:intl/intl.dart';

class FormatDate {
  String formatDateBydMMMYYYY(DateTime dateTime) {
    return DateFormat("d MMM, yyyy").format(dateTime);
  }

  String formatDateByMMMYYYY(DateTime dateTime) {
    return DateFormat("MMM, yyyy").format(dateTime);
  }

  String formatDateByYYYY(DateTime dateTime) {
    return DateFormat("yyyy").format(dateTime);
  }

  String formatDateByMMYYYY(DateTime dateTime) {
    return DateFormat("MMyyyy").format(dateTime);
  }

  static convertDateBrToIso8601(String dataBr) {
    if (dataBr.contains('/')) {
      final List finalData = dataBr.split('/');
      return DateTime.parse(
              '${finalData[2] + '-' + finalData[1] + '-' + finalData[0]}')
          .toIso8601String();
    }

    return dataBr;
  }

  static String formatData(date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String formatDataBr(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String formatDataBrDateTimeParse(String date) {
    final dateFormat = DateTime.parse(date);
    return DateFormat('dd/MM/yyyy').format(dateFormat);
  }

  static String formatedDateDtToDataBase(DateTime? dt) {
    if (dt == null) return '';
    return dt.toIso8601String();
  }

  static String formatedDateToChart(DateTime? dt) {
    if (dt == null) return '';
    final DateFormat dateFormatToDisplay = DateFormat('dd/MM');
    return dateFormatToDisplay.format(dt);
  }
}
