import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../utils/color.dart';
import '../../../utils/state_util.dart';

class CardVoucher extends StatelessWidget {
  const CardVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 52,
        width: Get.width,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: whiteColor,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: Offset(2, 5),
              color: Color(0xffBEBEBE),
            )
          ],
        ),
        child: Row(
          children: [
            Icon(
              MdiIcons.ticketConfirmationOutline,
              color: orangeColor,
              size: 24.0,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Text(
                "Voucher",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: orangeColor,
                ),
              ),
            ),
            Text(
              "Select or enter code",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: greyColor,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: greyColor,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
