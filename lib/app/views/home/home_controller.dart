// ignore_for_file: unused_element, prefer_final_fields

import 'package:flutter/material.dart';

// Controller Provider provider privado
class HomeController with ChangeNotifier {
  HomeController();

  List<String> _todosRestaurantes = ["Bar do joão | Bar", "Lanche do perdro | Lanche"];

  List<String> restaurantes = [];

  String _tipoRestauranteSelecionado = "Todos";

  String get tipoRestauranteSelecionado => _tipoRestauranteSelecionado;

  set tipoRestauranteSelecionado(String value) {
    _tipoRestauranteSelecionado = value;
    notifyListeners();
  }

  _refreshRestaurantes() {
    restaurantes = [];
    for (var restaurante in _todosRestaurantes) {
      restaurantes.add(restaurante);
    }
    notifyListeners();
  }

  // String get userName => user.name.toString();

  // nomeF(BuildContext context) {
  //   context.read<UserShared>().state;
  // }
}
