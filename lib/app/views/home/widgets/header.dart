// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';
import 'package:paipfood_app/app/core/widgets/icon_circle.dart';

class Header extends StatelessWidget {
  final void Function()? onTap;
  const Header({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "R. João Quinteiro, 90, Jardim Primavera, Poços de Caldas - MG",
                      style: context.textTheme.labelLarge,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: true,
                    ),
                  ),
                  const Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
            const SizedBox(width: 25),
            const IconCircle(height: 35, width: 35, icon: Icon(Icons.filter_alt, size: 25)),
            const SizedBox(width: 10),
            const IconCircle(height: 35, width: 35, icon: Icon(Icons.person, size: 25)),
          ],
        ),
      ),
    );
  }
}
