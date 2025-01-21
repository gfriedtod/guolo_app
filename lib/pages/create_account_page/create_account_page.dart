import 'package:flutter/material.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/pages/login_page/login_page.dart';

import '../../material/environement_path.dart';
import '../signup_page/signup_page_view.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GuoloColors.secondaryColor,
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "JOUER ET GAGNER !",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Des jeux pout tout ceux qui aoment essayer la chance de deviner les nombres ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('${EnvironementPath.images}illustration1.png'),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: size.width * 0.6,
                  child: ButtonComponentView(
                      title: 'Crée un compte',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  SignupPageView()));
                      })),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Vous tes deja inscrit ? ',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                  TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  LoginPageView()));
                      },
                      child: const Text("Se connecter",
                          style: TextStyle(
                            color: Colors.lightGreen,
                          )))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
