import 'package:flutter/material.dart';
import 'package:slicing_foodapp/utils/widgets/button_decrement.dart';
import 'package:slicing_foodapp/utils/widgets/button_increment.dart';

import '../../../../controllers/detils_product_controller.dart';
import '../../../../utils/color.dart';

class HandlePrice extends StatelessWidget {
  const HandlePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: DetailProductController.price,
      builder: (_, price, __) {
        return ValueListenableBuilder<int>(
          valueListenable: DetailProductController.qty,
          builder: (_, qty, __) {
            return Row(
              children: [
                Expanded(
                  child: Text(
                    "\$$price",
                    style: TextStyle(
                      fontSize: 24.0,
                      color: orangeColor,
                    ),
                  ),
                ),
                ButtonDecrement(
                  onTap: () {
                    DetailProductController.decrement();
                  },
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "$qty",
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                ButtonIncrement(
                  onTap: () {},
                ),
              ],
            );
          },
        );
      },
    );
  }
}
