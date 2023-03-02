import 'package:flutter/material.dart';

class PriceCart extends StatelessWidget {
  final String title;
  final String price;
  const PriceCart({super.key, required this.price, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        Text(
          price,
          style: const TextStyle(
            fontSize: 19.0,
          ),
        ),
        const Text(
          "USD",
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
