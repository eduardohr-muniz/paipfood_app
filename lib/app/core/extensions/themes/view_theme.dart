import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';

class ViewTheme extends StatelessWidget {
  const ViewTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text View'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: const [],
              ),
              Text("Boas vindas, ao Nubank! TL", style: context.textTheme.titleLarge),
              Text("Precisamos dele LS", style: context.textTheme.labelSmall),
              Text("Precisamos dele LM", style: context.textTheme.labelMedium),
              Text("000.000.000 TS", style: context.textTheme.titleSmall),
              Text("É novo por aqui ->. BL", style: context.textTheme.bodyLarge),
              const SizedBox(height: 30),
              Text("BodySmall", style: context.textTheme.bodySmall),
              const SizedBox(height: 10),
              Text("bodyMedium / Defaut", style: context.textTheme.bodyMedium),
              const SizedBox(height: 10),
              Text("bodyLarge", style: context.textTheme.bodyLarge),
              const SizedBox(height: 10),
              Text("labelSmall", style: context.textTheme.labelSmall),
              const SizedBox(height: 10),
              Text("labelMedium", style: context.textTheme.labelMedium),
              const SizedBox(height: 10),
              Text("labelLarge", style: context.textTheme.labelLarge),
              const SizedBox(height: 10),
              Text("titleSmall", style: context.textTheme.titleSmall),
              const SizedBox(height: 10),
              Text("titleMedium", style: context.textTheme.titleMedium),
              const SizedBox(height: 10),
              Text("titleLarge", style: context.textTheme.titleLarge),
            ],
          ),
        ),
      ),
    );
  }
}
