import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskInputModel {
  final List<TextInputFormatter>? formatter;
  final FormFieldValidator<String>? validator;
  final String hint;
  final TextInputType textInputType;
  final FocusManager? focusNode;
  MaskInputModel({
    required this.formatter,
    this.validator,
    required this.hint,
    required this.textInputType,
    this.focusNode,
  });
}

class MaskInput {
  MaskInputModel get phonePtBr => MaskInputModel(
        formatter: [MaskTextInputFormatter(mask: "(##) # ####-####")],
        hint: "(00) 0 0000-0000",
        textInputType: TextInputType.number,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Telefone obrigatório.";
          }
          if (value.length < 16) {
            return "Telefone incompleto";
          }
          return null;
        },
      );

  MaskInputModel get cep => MaskInputModel(
        formatter: [MaskTextInputFormatter(mask: "#####-###")],
        hint: "00000-000",
        textInputType: TextInputType.number,
        validator: (value) {
          if (value != null && value.length > 1 && value.length < 9) {
            return "Cep incompleto";
          }
          return null;
        },
      );
  MaskInputModel get cnpj => MaskInputModel(
        formatter: [MaskTextInputFormatter(mask: "##.###.###/####-##")],
        hint: "00.000.000/0001-00",
        textInputType: TextInputType.number,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Cnpj obrigatório.";
          }
          if (value.length < 20) {
            return "Cnpj incompleto";
          }
          return null;
        },
      );
  MaskInputModel get cpf => MaskInputModel(
        formatter: [MaskTextInputFormatter(mask: "###.###.###-##")],
        hint: "000.000.000-00",
        textInputType: TextInputType.number,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Cpf obrigatório.";
          }
          if (value.length < 14) {
            return "Cpf incompleto";
          }
          return null;
        },
      );
}
