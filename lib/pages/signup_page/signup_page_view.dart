import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/components/text_field_component.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/material/environement_path.dart';
import 'package:guolo_app/models/user.dart';
import 'package:guolo_app/pages/forgoten_password_enter_otp_code_page/forgoten_password_enter_otp_code_page.dart';
import 'package:guolo_app/pages/home_page/home_page.dart';
import 'package:guolo_app/pages/login_page/login_page.dart';
import 'package:guolo_app/services/auth/authentication_bloc.dart';
import 'package:guolo_app/services/auth/authentication_bloc.dart';

/// This is the view of the signup page
class SignupPageView extends StatelessWidget {
  /// Constructs a new [SignupPageView].
  SignupPageView({super.key});
  TextEditingController prenomController = TextEditingController();
  TextEditingController nomController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GuoloColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: GuoloColors.secondaryColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width * 0.8,
            height: size.height * 0.88,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  LayoutBuilder(builder: (context, constraint) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'S\'inscrire',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
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
                          height: 10,
                        ),
                        TextFieldComponentView(
                            controller: emailController,
                            labelText: "Adresse email"),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFieldComponentView(
                            passWordWidget: true,
                            controller: passwordController,
                            labelText: "Mot de passe"),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocConsumer<AuthenticationBloc, AuthenticationState>(
                          listener: (context, state) {
                            print(state);
                            state.maybeMap(
                                existedEmail: (_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              Text('email existe déjà')));
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotenPasswordOtpCodePageView(
                                                email: emailController.text,
                                              )));
                                },
                                authenticated: (_) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePageView()));
                                },
                                unauthenticated: (_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'email ou mot de passe incorrecte')));
                                },
                                error: (_) {
                                  SnackBar(
                                      content: Text(
                                          'une erreur est survenu'));
                                },
                                register: (value) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoginPageView()
                                              ));
                                },
                                orElse: () {});
                          },
                          builder: (context, state) {
                            print(state);
                            return state.maybeWhen(
                                loading: () => ButtonComponentView(
                                      loading: true,
                                      title: 'S\'inscrire',
                                      onPressed: () {},
                                    ),
                                orElse: () => ButtonComponentView(
                                      title: 'S\'inscrire',
                                      onPressed: () {
                                        context.read<AuthenticationBloc>().add(
                                            AuthenticationEvent.startedRegister(
                                                User(
                                                    email: emailController.text,
                                                    password:
                                                        passwordController.text,
                                                    lastname:
                                                        nomController.text,
                                                    firstname: prenomController
                                                        .text)));
                                      },
                                    ));
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: constraint.maxWidth * 0.44,
                              child: const Divider(),
                            ),
                            const Text(
                              "Ou",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: constraint.maxWidth * 0.45,
                              child: const Divider(),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ButtonComponentView(
                            title: 'S\'inscrire avec google',
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePageView()));
                            },
                            primary: false,
                            image: SvgPicture.asset(
                              '${EnvironementPath.images}Google.svg',
                            )),
                      ],
                    );
                  }),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Vous etes dajas inscrits ? ',
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPageView()));
                              },
                              child: const Text("Se connecter",
                                  style: TextStyle(
                                    color: GuoloColors.primaryLightColor,
                                  )))
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
