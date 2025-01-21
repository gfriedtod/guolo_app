import 'package:flutter/material.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/components/text_field_component.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/pages/forgoten_password_enter_conde_identification_page/forgoten_password_enter_conde_identification_page.dart';

class ForgotenPasswordEnterTelPage extends StatelessWidget {
  ForgotenPasswordEnterTelPage({super.key});
  TextEditingController numeroTelController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: GuoloColors.secondaryColor,
        body: Center(
            child: SizedBox(
          width: size.width * 0.9,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Mot de passe oublier',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Entrez le numero de telephone que vous utiisez pour creer votre compte',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white60,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFieldComponentView(
              controller: numeroTelController,
              labelText: 'Numero de telephone',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: const Text(
                      'Renvoyer',
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonComponentView(
              title: 'Continuer',
              onPressed: (numeroTelController.text.isNotEmpty)
                  ? () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ForgotenPasswordEnterCodeIdentificationPage()));
                    }
                  : () {},
              color: (numeroTelController.text.isNotEmpty)
                  ? null
                  : Colors.grey.shade400,
            ),
          ]),
        )));
  }
}
