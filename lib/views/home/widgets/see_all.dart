import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class SeeAll extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const SeeAll({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 40,
          width: 80,
          child: InkWell(
            onTap: onTap,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: orangeColor,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: orangeColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
