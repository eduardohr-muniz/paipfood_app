import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonLoginGoogle extends StatelessWidget {
  const ButtonLoginGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.blue),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    SizedBox(width: 24, height: 24, child: SvgPicture.asset("assets/icons/google_icon.svg")),
                    const SizedBox(width: 20),
                    const Text("Entrar com Google", style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
