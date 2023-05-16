import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';
import 'package:paipfood_app/app/core/widgets/icon_circle.dart';

class CardRestaurant extends StatelessWidget {
  const CardRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    const double radiusValue = 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radiusValue),
          // color: context.primaryBgColor,
          boxShadow: const [
            // BoxShadow(
            //   color: Colors.black.withOpacity(0.2), // cor da sombra
            //   spreadRadius: 0, // propagação da sombra
            //   blurRadius: 4, // desfoque da sombra
            //   offset: const Offset(0, 2), // deslocamento da sombra
            // )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LayoutBuilder(
              // Pegar a altura e largura do widget pai
              builder: (BuildContext context, BoxConstraints constraints) {
                double width = constraints.maxWidth;
                return Container(
                  height: width / 3,
                  width: width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(radiusValue), topRight: Radius.circular(radiusValue)),
                    image: DecorationImage(
                      image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.7tvU94UYZXwUG1WiJ5DTlwHaEo&pid=Api&P=0"),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text(
                      "Mac Donalds",
                      style: context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
                    ),
                    const IconCircle(
                        height: 30,
                        width: 30,
                        icon: Text("4.5", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
                  ]),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("Lanches"),
                      BulletPoint(),
                      Text("2,6 Km"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("R\$ 0 Entrega Grátis"),
                      BulletPoint(),
                      Text("20 - 40 min"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  const BulletPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(
                Icons.brightness_1,
                size: 6,
                color: context.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
