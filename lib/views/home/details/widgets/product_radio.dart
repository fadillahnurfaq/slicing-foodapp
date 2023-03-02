import 'package:flutter/material.dart';
import 'package:slicing_foodapp/models/choice_model.dart';

import '../../../../controllers/detils_product_controller.dart';

class ProductRadio extends StatelessWidget {
  const ProductRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ChoiceModel>(
      valueListenable: DetailProductController.choiceData,
      builder: (_, radio, __) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: DetailProductController.choice.length,
          itemBuilder: (context, index) {
            ChoiceModel data = DetailProductController.choice[index];
            return Row(
              children: [
                Expanded(
                  child: Text(
                    data.title!,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Text(
                  "\$${data.price}0",
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                Radio(
                  value: data,
                  groupValue: radio,
                  onChanged: (value) {
                    DetailProductController.changeRadio(value);
                  },
                ),
              ],
            );
          },
        );
        // return Column(
        //   children: [
        //     Row(
        //       children: [
        //         const Expanded(
        //           child: Text(
        //             "Papper Julienned",
        //             style: TextStyle(
        //               fontSize: 14.0,
        //             ),
        //           ),
        //         ),
        //         const Text(
        //           "+\$2.30",
        //           style: TextStyle(
        //             fontSize: 14.0,
        //           ),
        //         ),
        //         Radio(
        //           value: 1,
        //           groupValue: radio,
        //           onChanged: (value) {
        //             DetailProductController.changeRadio(value);
        //           },
        //         ),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         const Expanded(
        //           child: Text(
        //             "Baby Spinach",
        //             style: TextStyle(
        //               fontSize: 14.0,
        //             ),
        //           ),
        //         ),
        //         const Text(
        //           "+\$4.70",
        //           style: TextStyle(
        //             fontSize: 14.0,
        //           ),
        //         ),
        //         Radio(
        //           value: 2,
        //           groupValue: radio,
        //           onChanged: (value) {
        //             DetailProductController.changeRadio(value);
        //           },
        //         ),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         const Expanded(
        //           child: Text(
        //             "Masroom",
        //             style: TextStyle(
        //               fontSize: 14.0,
        //             ),
        //           ),
        //         ),
        //         const Text(
        //           "+\$2.50",
        //           style: TextStyle(
        //             fontSize: 14.0,
        //           ),
        //         ),
        //         Radio(
        //           value: 3,
        //           groupValue: radio,
        //           onChanged: (value) {
        //             DetailProductController.changeRadio(value);
        //           },
        //         ),
        //       ],
        //     ),
        //   ],
        // );
      },
    );
  }
}
