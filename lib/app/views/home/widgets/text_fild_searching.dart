import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';

class TextFildSearching extends StatelessWidget {
  const TextFildSearching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        style: context.textTheme.labelSmall,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            filled: true,
            hintText: "Onde vamos pedir hoje?",
            prefixIcon: const Icon(Icons.search),
            border: UnderlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none)),
      ),
    );
  }
}
