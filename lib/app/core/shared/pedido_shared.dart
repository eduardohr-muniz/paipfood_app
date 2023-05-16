import 'package:flutter/material.dart';

class PedidoShared with ChangeNotifier {
  List<String> pedidos = [];

  addPedido(String pedido) {
    pedidos.add(pedido);
    notifyListeners();
  }

  removePedido(String pedido) {
    pedidos.remove(pedido);
    notifyListeners();
  }
}
