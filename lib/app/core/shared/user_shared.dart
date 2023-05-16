import 'package:flutter/material.dart';

// index scan
// gist

class UserShared with ChangeNotifier {
  String? _name;
  String state = "init";

  repository() {
    state = "init";
    notifyListeners();
    //buscar na api
    //Erro
    state = "Erro";
    notifyListeners();
    //Sucesso
    state = "Sucess";
    notifyListeners();
  }

  String? get name => _name;

  set name(String? value) {
    _name = value;
    notifyListeners();
  }
}
