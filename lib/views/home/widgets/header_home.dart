import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          color: whiteColor,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: InkWell(
            onTap: () {},
            child: const SizedBox(
              height: 30.0,
              width: 40.0,
              child: Icon(
                Icons.segment_outlined,
              ),
            ),
          ),
        ),
        Material(
          color: const Color(0xffC4C4C4),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {},
            child: const SizedBox(
              height: 38.0,
              width: 38.0,
              child: Icon(
                Icons.person,
              ),
            ),
          ),
        )
      ],
    );
  }
}
