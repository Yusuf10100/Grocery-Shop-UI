import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int quantity = 0;
  plusCounter() {
    quantity++;
    notifyListeners();
  }

  minusCounter() {
    if (quantity > 0) quantity--;
    notifyListeners();
  }
  int get getQuantityValue => quantity;

}
