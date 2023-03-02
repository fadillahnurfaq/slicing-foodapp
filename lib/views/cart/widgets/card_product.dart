import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/widgets/button_decrement.dart';
import '../../../utils/widgets/button_increment.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 82.0,
          width: 82.0,
          margin: const EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: const DecorationImage(
              image: AssetImage("assets/product.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Product name",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                "with masroom",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "\$19.00",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: orangeColor,
                      ),
                    ),
                  ),
                  ButtonDecrement(
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "02",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  ButtonIncrement(
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        Icon(
          Icons.close,
          color: orangeColor,
          size: 20.0,
        ),
      ],
    );
  }
}
