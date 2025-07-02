import 'package:intl/intl.dart';

class FormatterUtil {
  static final _rupiahFormatter =
      NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);

  static String currency(num value) {
    return _rupiahFormatter.format(value);
  }
}
