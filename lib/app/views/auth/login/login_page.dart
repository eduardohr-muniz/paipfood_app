import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';
import 'package:paipfood_app/app/views/auth/login/widgets/button_login_google.dart';
import 'package:paipfood_app/app/views/auth/login/widgets/button_login_phone.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/login_image.jpg"), fit: BoxFit.cover)),
        ),
        Container(
          height: 220,
          width: context.mediaQuery.size.width * 1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.transparent],
          )),
          child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: SvgPicture.asset(
                      "assets/images/logo_green_white.svg",
                      fit: BoxFit.cover,
                    )),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black, Colors.transparent],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonLoginPhone(
                  onPressed: () => Navigator.of(context).pushNamed("phone"),
                ),
                const SizedBox(height: 16),
                const ButtonLoginGoogle(),
                const SizedBox(height: 26),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
