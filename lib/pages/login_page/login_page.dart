import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guolo_app/models/user.dart';
import 'package:guolo_app/pages/forgoten_password_enter_tel_page/forgoten_password_enter_tel_page.dart';
import 'package:guolo_app/pages/home_page/home_page.dart';
import 'package:guolo_app/pages/signup_page/signup_page_view.dart';
import 'package:guolo_app/services/auth/authentication_bloc.dart';
import 'package:guolo_app/services/auth/authentication_bloc.dart';

import '../../components/button_component.dart';
import '../../components/text_field_component.dart';
import '../../material/colors.dart';
import '../../material/environement_path.dart';

class LoginPageView extends StatelessWidget {
  LoginPageView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GuoloColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: GuoloColors.secondaryColor,
      ),
      body: Center(
        child: SizedBox(
          width: size.width * 0.8,
          height: double.infinity,
          child: SingleChildScrollView(
            child: SizedBox(
              height: size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  LayoutBuilder(builder: (context, constraint) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Connexion',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        TextFieldComponentView(
                            controller: emailController,
                            labelText: "Adresse email"),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFieldComponentView(
                            passWordWidget: true,
                            controller: passwordController,
                            labelText: "Mot de passe"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotenPasswordEnterTelPage()));
                                },
                                child: const Text("Mot de passe oublier ?",
                                    style: TextStyle(
                                      color: GuoloColors.primaryColor,
                                    )))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocConsumer<AuthenticationBloc, AuthenticationState>(
                          listener: (context, state) {
                            print(state);
                            state.maybeMap(
                                initial: (_) {},

                                authenticated: (_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Connexion réussi")),
                                  );
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePageView()));
                                },
                                unauthenticated: (_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Connexion échouée")),
                                  );
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignupPageView()));
                                },
                                unknown: (_) {},
                                loading: (_) {},
                                error: (value) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(value.message)));
                                },
                                register: (value) {}, orElse: () {  });
                          },
                          builder: (context, state) {
                            print(state);
                            return state.maybeWhen(
                                loading: () => ButtonComponentView(
                                      loading: true,
                                      title: 'Connexion',
                                      onPressed: () {},
                                    ),
                                orElse: () => ButtonComponentView(
                                      title: 'Connexion',
                                      onPressed: () {
                                        context.read<AuthenticationBloc>().add(
                                            AuthenticationEvent.startedLogin(
                                                User(
                                                    email: emailController.text,
                                                    password: passwordController
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
                            title: 'Connexion avec google',
                            onPressed: () {
                              context.read<AuthenticationBloc>().add(AuthenticationEvent.googleLogin());
                            },
                            primary: false,
                            image: SvgPicture.asset(
                              '${EnvironementPath.images}Google.svg',
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  }),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Vous n\'avez pas de compte ? ',
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
                                        builder: (context) =>
                                            SignupPageView()));
                              },
                              child: const Text("S'inscrire",
                                  style: TextStyle(
                                    color: GuoloColors.primaryLightColor,
                                  )))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
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
