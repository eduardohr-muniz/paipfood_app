import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodePage extends StatefulWidget {
  const PinCodePage({Key? key}) : super(key: key);

  @override
  State<PinCodePage> createState() => _PinCodePageState();
}

class _PinCodePageState extends State<PinCodePage> {
  late final int code;

  @override
  void initState() {
    setState(() {
      code = Random.secure().nextInt(90000) + 10000;
    });
    super.initState();
  }

  Future<void> signInWithPhone(String phoneNumber) async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.primaryBgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Insira o código enviado no seu WhatsApp $code",
              style: context.textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text(
              "O numero informado foi (35) 9 8409-1567?",
              style: context.textTheme.labelSmall,
            ),
            Text(
              "Clique aqui se deseja informar outro numero",
              style: context.textTheme.bodyLarge,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                child: PinCodeTextField(
                  onCompleted: (value) {
                    signInWithPhone("+553584091567");
                  },
                  autoFocus: true,
                  cursorColor: context.primaryColor,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    // disabledColor: context.tertiaryColor,
                    inactiveColor: Colors.grey.withOpacity(0.4),
                    activeFillColor: Colors.grey.withOpacity(0.2),
                    errorBorderColor: Colors.amber,
                    selectedFillColor: Colors.grey.withOpacity(0.4),
                    inactiveFillColor: Colors.grey.withOpacity(0.2),
                    shape: PinCodeFieldShape.box,
                    borderWidth: null,
                    borderRadius: BorderRadius.circular(10),
                    activeColor: context.primaryColor,
                    selectedColor: context.primaryTextColor,
                  ),
                  appContext: context,
                  length: 5,
                  onChanged: (_) {},
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("adress");
          },
          child: Icon(
            Icons.chevron_right_outlined,
            size: 40,
            color: context.primaryColor,
          )),
    );
  }
}
