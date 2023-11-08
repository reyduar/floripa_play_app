import 'package:intl/intl.dart';

class HumnanFormat {
  static String humanReableNumber(double number) {
    final formatterNumber =
        NumberFormat.compactCurrency(decimalDigits: 0, symbol: '')
            .format(number);
    return formatterNumber;
  }
}
