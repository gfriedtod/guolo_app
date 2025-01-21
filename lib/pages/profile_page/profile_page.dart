import 'package:flutter/material.dart';
import 'package:guolo_app/components/text_field_component.dart';
import 'package:guolo_app/material/environement_path.dart';
import 'package:guolo_app/pages/home_page/home_page.dart';

import '../../components/button_component.dart';

class ProfilePageView extends StatelessWidget {
  ProfilePageView({super.key});
  TextEditingController prenomController =
      TextEditingController(text: 'Mathiew');
  TextEditingController nomController =
      TextEditingController(text: 'Mc Donald');
  TextEditingController emailController =
      TextEditingController(text: 'a@gmail.com');
  TextEditingController localisationController =
      TextEditingController(text: 'Douala-Wouri');
  TextEditingController numeroTelController =
      TextEditingController(text: '6 99 87 41 20');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.84,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: size.height * 0.08,
                backgroundImage:
                    const AssetImage('${EnvironementPath.images}user.jpg'),
              ),
              const SizedBox(
                height: 40,
              ),
              LayoutBuilder(builder: (context, constraint) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: constraint.maxWidth * 0.49,
                          child: TextFieldComponentView(
                            labelText: 'Prenom',
                            controller: prenomController,
                          ),
                        ),
                        SizedBox(
                          width: constraint.maxWidth * 0.49,
                          child: TextFieldComponentView(
                              controller: nomController, labelText: "Nom"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldComponentView(
                        controller: numeroTelController,
                        labelText: "Numero Tel"),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldComponentView(
                        controller: emailController,
                        labelText: "Adresse email"),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldComponentView(
                        controller: localisationController,
                        labelText: "Localisation"),
                    const SizedBox(
                      height: 40,
                    ),
                    ButtonComponentView(
                      width: size.width * 0.6,
                      height: 45,
                      title: 'Modifier le profile',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePageView()));
                      },
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
