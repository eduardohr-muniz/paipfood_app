import 'package:flutter/material.dart';

class ButtonLoginPhone extends StatelessWidget {
  final void Function()? onPressed;
  const ButtonLoginPhone({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: ElevatedButton(
                  onPressed: onPressed,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: const [
                        Icon(Icons.phone, color: Colors.black),
                        SizedBox(width: 20),
                        Text(
                          "Entrar com Telefone",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ))),
        ],
      ),
    );
  }
}
