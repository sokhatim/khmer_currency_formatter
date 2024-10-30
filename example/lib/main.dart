import 'package:flutter/material.dart';
import 'package:khmer_currency_formatter/khmer_currency_formatter.dart';

void main() {
  runApp(const KhmerCurrencyFormatter());
}

class KhmerCurrencyFormatter extends StatelessWidget {
  const KhmerCurrencyFormatter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khmer Currency Formatter Example',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Khmer Currency Formatter Example',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const Center(
          child: KhmerCurrencyExample(),
        ),
      ),
    );
  }
}

class KhmerCurrencyExample extends StatelessWidget {
  const KhmerCurrencyExample({super.key});

  @override
  Widget build(BuildContext context) {
    double priceRiel = 12345.67;
    String formattedRiel = Price.riel(priceRiel);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Price in Riel:',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          formattedRiel,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
