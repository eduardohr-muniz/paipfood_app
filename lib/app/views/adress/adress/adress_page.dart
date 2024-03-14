import 'package:flutter/material.dart';
import 'package:paipfood_app/app/core/extensions/mask_input.dart';
import 'package:paipfood_package/paipfood_package.dart';

class AdressPage extends StatelessWidget {
  AdressPage({Key? key}) : super(key: key);
  final cepEC = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final maskInput = MaskInput();
  final FocusNode _cepFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
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
              "Qual é o seu endereço de entrega?",
              style: context.textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "Preencha os campos abaixo e deixe a entrega por nossa conta.",
              style: context.textTheme.titleSmall!.muted(context),
            ),
            Form(
              key: _formKey,
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              controller: cepEC,
                              inputFormatters: maskInput.cep.formatter,
                              validator: maskInput.cep.validator,
                              keyboardType: TextInputType.number,
                              focusNode: _cepFocus,
                              decoration: const InputDecoration(label: Text("Cep"), hintText: "00000-000"),
                            ),
                          ),
                          const Expanded(flex: 1, child: SizedBox())
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Expanded(
                            flex: 6,
                            child: CwTextFormFild(
                              label: "Rua",
                              // textCapitalization: TextCapitalization.sentences,
                              // decoration: const InputDecoration(label: Text("Rua")),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(label: Text("Nº")),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        textCapitalization: TextCapitalization.sentences,
                        decoration: const InputDecoration(label: Text("Complemento")),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        textCapitalization: TextCapitalization.sentences,
                        decoration: const InputDecoration(label: Text("Bairro")),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // lógica para continuar com a ação após a validação do formulário
              Navigator.of(context).pushNamed("adressNickName");
            } else {
              _cepFocus.nextFocus();
              _cepFocus.requestFocus();
            }
          },
          child: Icon(
            Icons.chevron_right_outlined,
            size: 40,
            color: context.color.primaryColor,
          )),
    );
  }
}
