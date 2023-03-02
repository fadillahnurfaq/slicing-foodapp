import 'package:flutter/material.dart';
import 'package:slicing_foodapp/models/menu_model.dart';

class HomeController {
  static List<MenuModel> listMenu = [
    MenuModel(
      image: const AssetImage("assets/meat.png"),
      onTap: () {},
      title: "Meat",
    ),
    MenuModel(
      image: const AssetImage("assets/rice.png"),
      onTap: () {},
      title: "Rice",
    ),
    MenuModel(
      image: const AssetImage("assets/drink.png"),
      onTap: () {},
      title: "Drink",
    ),
    MenuModel(
      image: const AssetImage("assets/salad.png"),
      onTap: () {},
      title: "Salad",
    ),
    MenuModel(
      image: const AssetImage("assets/other.png"),
      onTap: () {},
      title: "Other",
    ),
  ];
}
