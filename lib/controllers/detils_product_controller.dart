import 'package:flutter/material.dart';
import 'package:slicing_foodapp/models/product_model.dart';

import '../models/choice_model.dart';

class DetailProductController extends ChangeNotifier {
  static ValueNotifier<int> qty = ValueNotifier(data.qty!);
  static ValueNotifier<double> price = ValueNotifier(data.price!);

  static ValueNotifier<ChoiceModel> choiceData = ValueNotifier(choice.first);

  static ProductModel data =
      ProductModel(qty: 1, image: "assets/product.png", price: 9.50);

  static List<ChoiceModel> choice = [
    ChoiceModel(
      title: "Papper Julienned",
      price: 2.30,
    ),
    ChoiceModel(
      title: "Baby Spinach",
      price: 4.70,
    ),
    ChoiceModel(
      title: "Masroom",
      price: 2.50,
    ),
  ];

  static void increment() {
    qty.value++;
    qty.notifyListeners();
    totalPrice();
  }

  static void decrement() {
    if (qty.value > 1) {
      qty.value--;
      qty.notifyListeners();
      totalPrice();
    }
  }

  static void totalPrice() {
    double totalPayment = 0;
    totalPayment += data.price! * qty.value.toDouble();
    price.value = totalPayment;
    price.notifyListeners();
  }

  static void init() {
    qty = ValueNotifier(data.qty!);
    price = ValueNotifier(data.price!);
    choiceData = ValueNotifier(choice.first);
  }

  static void disposes() {
    qty.dispose();
    price.dispose();
    choiceData.dispose();
  }

  static void changeRadio(var value) {
    choiceData.value = value;
    choiceData.notifyListeners();
  }
}
