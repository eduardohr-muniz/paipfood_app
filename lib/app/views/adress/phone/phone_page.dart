import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/mask_input.dart';
// import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';
import 'package:paipfood_package/paipfood_package.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MaskInput maskInput = MaskInput();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.color.primaryBG,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Informe seu Telefone",
              style: context.textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text(
              "Precisamos do seu telefone em caso de emprevistos e para te notificar sobre o status do seu pedido.",
              style: context.textTheme.labelSmall,
            ),
            const SizedBox(height: 20),
            Form(
              child: CwTextFormFild(
                autofocus: true,
                inputFormatters: maskInput.phonePtBr.formatter,
                keyboardType: TextInputType.number,
                hintText: "(00) 0 0000-0000",
                obscureText: true,
                // decoration: const InputDecoration(hintText: "(00) 0 0000-0000"),
                // textCapitalization: TextCapitalization.sentences,
                style: context.textTheme.titleLarge,
              ).underline(),
            ),
            TextFormField(
              autofocus: true,
              inputFormatters: maskInput.phonePtBr.formatter,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "(00) 0 0000-0000"),
              textCapitalization: TextCapitalization.sentences,
              style: context.textTheme.titleLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("pinCode");
            // user.name = "Muniz";
          },
          child: Icon(
            Icons.chevron_right_rounded,
            size: 40,
            color: context.color.primaryColor,
          )),
    );
  }
}
