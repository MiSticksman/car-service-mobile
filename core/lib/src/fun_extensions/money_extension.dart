import 'package:intl/intl.dart';

extension MoneyExtenstions on num {
  String formatMoney({String? symbol}) {
    final formatCurrency = NumberFormat.currency(
        decimalDigits: 0, locale: 'ru', symbol: symbol ?? 'руб.');

    return formatCurrency.format(this);
  }
}