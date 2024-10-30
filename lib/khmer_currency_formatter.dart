library khmer_currency_formatter;

import 'package:intl/intl.dart';

/// A formatter for Cambodian Riel and utility methods for currency formatting.
class Price {
  static final NumberFormat currencyRiel = NumberFormat.currency(locale: 'km_KH', symbol: '៛', decimalDigits: 2);

  /// Formats a price in Riel.
  ///
  /// Takes a dynamic price and returns a formatted string in Riel.
  static String riel(dynamic priceRiel) {
    // Use formatNumber to format the input price
    String formattedPrice = formatNumber(priceRiel.toString());

    // Convert formatted price to double
    double price = double.parse(formattedPrice);

    // Use original substring and replace logic
    String formattedCurrency = currencyRiel.format(price);
    return "${formattedCurrency.substring(0, formattedCurrency.length - 4).replaceAll(".", ",")}៛";
  }

  /// Formats a string number by removing commas and ensuring two decimal places.
  static String formatNumber(String numStr) {
    // Remove commas from the string
    numStr = numStr.replaceAll(",", "");

    // Convert the string to a double
    double number = double.tryParse(numStr) ?? 0.0;

    // Format the number to two decimal places
    String formattedNumber = number.toStringAsFixed(2);

    return formattedNumber;
  }
}
