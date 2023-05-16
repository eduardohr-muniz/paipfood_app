import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/themes/ext_theme.dart';
import 'package:paipfood_app/app/core/shared/user_shared.dart';

import 'package:provider/provider.dart';

class AdressNickNamePage extends StatelessWidget {
  const AdressNickNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<UserShared, UserShared>(
      builder: (_, user, user2, __) {
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
                Text(user.name.toString()),
                Text(
                  "Informe um apelido para o seu endereço",
                  style: context.textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  "Ex: Casa, Trabalho, Casa da sogra...",
                  style: context.textTheme.labelSmall,
                ),
                const SizedBox(height: 20),
                Form(
                  child: TextFormField(
                    autofocus: true,
                    textCapitalization: TextCapitalization.sentences,
                    style: context.textTheme.titleLarge,
                    initialValue: "Casa",
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                // user.name = "Muniz";
              },
              child: Icon(
                Icons.chevron_right_outlined,
                size: 40,
                color: context.primaryColor,
              )),
        );
      },
    );
  }
}
