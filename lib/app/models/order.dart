import 'package:flutter/material.dart';

enum OrderType { ent, ret, mes, tot, com }

class OrderTypeSelectorModel extends ChangeNotifier {
  OrderType _orderType = OrderType.ent;

  OrderType get orderType => _orderType;

  void setOrderType(OrderType orderType) {
    _orderType = orderType;
    notifyListeners();
  }
}

class Order {}
