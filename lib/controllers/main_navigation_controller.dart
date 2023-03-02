import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:slicing_foodapp/views/cart/cart_view.dart';
import 'package:slicing_foodapp/views/home/home_view.dart';

class MainNavigationController extends ChangeNotifier {
  static List<Widget> widgetOptions = <Widget>[
    const HomeView(),
    const Center(
      child: Text("Favorite"),
    ),
    const CartView(),
    const Center(
      child: Text("Message"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  static List<IconData> listOfIcons = [
    Icons.home_outlined,
    Icons.favorite,
    Icons.shopping_bag,
    MdiIcons.chatProcessingOutline,
    Icons.person_3_outlined,
  ];

  static List<String> listOfStrings = [
    'Home',
    'Favorite',
    'Cart',
    'Message',
    'Profile',
  ];

  static ValueNotifier<int> currentIndex = ValueNotifier(0);

  static void onTap(int value) {
    currentIndex.value = value;
    currentIndex.notifyListeners();
  }
}
