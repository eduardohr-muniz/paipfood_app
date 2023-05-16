// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';

import 'package:paipfood_app/app/models/order.dart';

class SelectorTypeOrder extends StatelessWidget {
  const SelectorTypeOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: context.secondaryBgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ButtonTypeOrder(label: "Entrega", id: "ent", onTap: () {}),
            ButtonTypeOrder(label: "Retirada", id: "ret", onTap: () {}),
          ],
        ),
      ),
    );
  }
}

//*******************************************************************

class ButtonTypeOrder extends StatelessWidget {
  final OrderType? orderType;
  final String label;
  final String id; // id OrderType
  final void Function()? onTap;
  final void Function()? onLongPress;
  const ButtonTypeOrder({
    Key? key,
    this.orderType = OrderType.ent,
    required this.label,
    required this.id,
    this.onTap,
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String orderTypeName = orderType.toString().split('.')[1]; // obter o nome do valor do enum
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        onLongPress: onLongPress,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: id.toLowerCase() == orderTypeName ? context.primaryTextColor : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(label,
              style: context.textTheme.labelLarge!.copyWith(
                color: id.toLowerCase() == orderTypeName ? context.primaryBgColor : context.primaryTextColor,
              )),
        ),
      ),
    );
  }
}
