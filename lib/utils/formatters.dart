import 'package:intl/intl.dart';

class Formatters {
  static final NumberFormat _currencyFormat = NumberFormat.currency(
    locale: 'en_IN',
    symbol: '₹',
    decimalDigits: 2,
  );

  static final NumberFormat _numberFormat =
      NumberFormat.decimalPattern('en_IN');

  static final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');
  static final DateFormat _timeFormat = DateFormat('hh:mm a');
  static final DateFormat _dateTimeFormat = DateFormat('dd/MM/yyyy hh:mm a');

  static String formatCurrency(double amount) {
    return _currencyFormat.format(amount);
  }

  static String formatNumber(double number) {
    return _numberFormat.format(number);
  }

  static String formatDate(DateTime date) {
    return _dateFormat.format(date);
  }

  static String formatTime(DateTime time) {
    return _timeFormat.format(time);
  }

  static String formatDateTime(DateTime dateTime) {
    return _dateTimeFormat.format(dateTime);
  }

  static String formatGstRate(double rate) {
    return '${rate.toStringAsFixed(0)}%';
  }

  static String formatInvoiceNumber(int number) {
    return 'INV${number.toString().padLeft(6, '0')}';
  }
}
