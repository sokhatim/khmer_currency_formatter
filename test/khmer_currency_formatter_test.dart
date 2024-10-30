import 'package:flutter_test/flutter_test.dart';
import 'package:khmer_currency_formatter/khmer_currency_formatter.dart';

void main() {
  test('Riel formatting', () {
    expect(Price.riel(12345), '12,345');
  });

  test('Format number', () {
    expect(Price.formatNumber('1,234.56'), '1234.56');
  });
}
