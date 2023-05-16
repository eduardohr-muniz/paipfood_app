import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/theme_ext.dart';
import 'package:paipfood_app/app/core/provider/providers.dart';
import 'package:paipfood_app/app/views/adress/adress/adress_page.dart';
import 'package:paipfood_app/app/views/adress/nick_name/adress_nick_name_page.dart';
import 'package:paipfood_app/app/views/adress/phone/phone_page.dart';
import 'package:paipfood_app/app/views/auth/pin_code/pin_code_page.dart';
import 'package:paipfood_app/app/views/auth/login/login_page.dart';
import 'package:paipfood_app/app/views/home/home_page.dart';
import 'package:flutter/services.dart';
import 'package:paipfood_app/app/views/teste/teste_page.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeExt.lightTheme,
        darkTheme: ThemeExt.darkTheme,
        title: 'Flutter Demo',
        routes: {
          "home": (context) => const HomePage(),
          "login": (context) => TestePage(),
          "adress": (context) => AdressPage(),
          "adressNickName": (context) => const AdressNickNamePage(),
          "phone": (context) => const PhonePage(),
          "pinCode": (context) => const PinCodePage(),
        },
        initialRoute: "login",
      ),
    );
  }
}
