import 'package:flutter/material.dart';

import '../color.dart';

class ButtonDecrement extends StatelessWidget {
  final VoidCallback onTap;
  const ButtonDecrement({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(30.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: orangeColor,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.remove,
              size: 13.0,
            ),
          ),
        ),
      ),
    );
  }
}
