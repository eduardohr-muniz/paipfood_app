// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';

class TabBarCustom extends StatelessWidget {
  const TabBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ButtonTabBar(isSelected: true, text: "Todos"),
          ButtonTabBar(isSelected: false, text: "Lanches"),
          ButtonTabBar(isSelected: false, text: "Pizzas"),
          ButtonTabBar(isSelected: false, text: "Orientais"),
          ButtonTabBar(isSelected: false, text: "Supermercados"),
          ButtonTabBar(isSelected: false, text: "Doces"),
          ButtonTabBar(isSelected: false, text: "Sorvetes"),
        ],
      ),
    );
  }
}

//*******************************************************************

class ButtonTabBar extends StatelessWidget {
  final bool isSelected;
  final String text;
  const ButtonTabBar({
    Key? key,
    required this.isSelected,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? context.primaryTextColor : context.secondaryBgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: context.textTheme.labelLarge!.copyWith(
              color: isSelected ? context.secondaryBgColor : context.primaryTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
