import 'package:flutter/material.dart';

class MenuModel {
  AssetImage? image;
  String? title;
  VoidCallback? onTap;

  MenuModel({
    this.image,
    this.title,
    this.onTap,
  });
}
