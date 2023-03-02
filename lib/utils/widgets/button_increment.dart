import 'package:flutter/material.dart';

import '../color.dart';

class ButtonIncrement extends StatelessWidget {
  final VoidCallback onTap;
  const ButtonIncrement({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      color: orangeColor,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(30.0),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 30.0,
          width: 30.0,
          child: Center(
            child: Icon(
              Icons.add,
              size: 13.0,
              color: whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
