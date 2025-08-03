class DateValidator {
  final RegExp _singleDateRegex = RegExp(
      r'^(?:(?:31/(?:0?[13578]|1[02]))|(?:29|30)/(?:0?[13-9]|1[0-2]))/(?:19|20)\d{2}$'
      r'|^(?:29/0?2/(?:(?:19|20)(?:[02468][048]|[13579][26])|2000))$'
      r'|^(?:0?[1-9]|1\d|2[0-8])/(?:0?[1-9]|1[0-2])/(?:19|20)\d{2}$'
  );

  final RegExp _singleDateTimeRegex = RegExp(
      r'^(?:(?:31/(?:0?[13578]|1[02]))|(?:29|30)/(?:0?[13-9]|1[0-2])|(?:0?[1-9]|1\d|2[0-8])/(?:0?[1-9]|1[0-2]))/(?:19|20)\d{2}\s+([01]?\d|2[0-3]):[0-5]\d$'
      r'|^(?:29/0?2/(?:(?:19|20)(?:[02468][048]|[13579][26])|2000))\s+([01]?\d|2[0-3]):[0-5]\d$'
      r'|^(?:0?[1-9]|1\d|2[0-8])/(?:0?[1-9]|1[0-2])/(?:19|20)\d{2}\s+([01]?\d|2[0-3]):[0-5]\d$'
  );

  final RegExp _rangeDateRegex = RegExp(
      r'^(?:(?:31/(?:0?[13578]|1[02]))|(?:29|30)/(?:0?[13-9]|1[0-2])|(?:0?[1-9]|1\d|2[0-8])/(?:0?[1-9]|1[0-2]))/(?:19|20)\d{2}\s*-\s*'
      r'(?:(?:31/(?:0?[13578]|1[02]))|(?:29|30)/(?:0?[13-9]|1[0-2])|(?:0?[1-9]|1\d|2[0-8])/(?:0?[1-9]|1[0-2]))/(?:19|20)\d{2}$'
  );

  final RegExp _singleTimeRegex = RegExp(
      r'^([01]?\d|2[0-3]):[0-5]\d$'
  );

  final RegExp _rangeTimeRegex = RegExp(
      r'^([01]?\d|2[0-3]):[0-5]\d\s*-\s*([01]?\d|2[0-3]):[0-5]\d$'
  );

  final RegExp _singleDateTimeConcatenatedRegex = RegExp(
      r'^(0[1-9]|[12]\d|3[01])(0[1-9]|1[0-2])(19|20)\d{2}([01]?\d|2[0-3])([0-5]\d)$'
  );

  bool valid(String? value) {
    if (value == null || value.trim().isEmpty) return false;

    value = value.trim();

    if( _singleDateTimeConcatenatedRegex.hasMatch(value)) {
      try {
        final day = int.parse(value.substring(0, 2));
        final month = int.parse(value.substring(2, 4));
        final year = int.parse(value.substring(4, 8));
        final hour = int.parse(value.substring(8, 10));
        final minute = int.parse(value.substring(10, 12));
        DateTime(year, month, day, hour, minute); // This throws if invalid
        return true;
      } catch (e) {
        return false;
      }
    }

    if( _singleDateTimeRegex.hasMatch(value)) return true;

    if (_singleDateRegex.hasMatch(value)) return true;

    if (_rangeDateRegex.hasMatch(value)) return true;

    if (_singleTimeRegex.hasMatch(value)) return true;

    if (_rangeTimeRegex.hasMatch(value)) return true;

    return false;
  }
}