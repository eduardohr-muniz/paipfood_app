// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';

class IconCircle extends StatelessWidget {
  final double height;
  final double width;
  final Widget icon;

  const IconCircle({
    Key? key,
    required this.height,
    required this.width,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(100),
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: context.secondaryBgColor,
        ),
        child: icon,
      ),
    );
  }
}
