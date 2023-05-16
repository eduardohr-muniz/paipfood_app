import 'package:flutter/material.dart';

enum Categories { pizzas, lanches, orientais, cafes, com }

class OrderTypeSelectorModel extends ChangeNotifier {
  Categories _orderType = Categories.pizzas;

  Categories get orderType => _orderType;

  void setOrderType(Categories orderType) {
    _orderType = orderType;
    notifyListeners();
  }
}
