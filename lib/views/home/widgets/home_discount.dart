import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../utils/color.dart';
import '../../../utils/state_util.dart';

class HomeDiscount extends StatelessWidget {
  const HomeDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 131.0,
            width: Get.width,
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              gradient: const LinearGradient(
                colors: [
                  Color(0xffD6C000),
                  Color(0xff70FF00),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Up to",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "60% OFF",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "with free delivery",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: const [
                      Text(
                        "get discount",
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        MdiIcons.arrowDown,
                        size: 15.0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 30,
          right: 10,
          child: Image(
            image: AssetImage("assets/scooter.png"),
          ),
        )
      ],
    );
  }
}
