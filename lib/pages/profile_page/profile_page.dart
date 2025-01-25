import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guolo_app/components/text_field_component.dart';
import 'package:guolo_app/material/environement_path.dart';
import 'package:guolo_app/pages/home_page/home_page.dart';
import 'package:guolo_app/services/auth/authentication_bloc.dart';
import 'package:localstorage/localstorage.dart';

import '../../components/button_component.dart';
import '../../models/user.dart';

class ProfilePageView extends StatelessWidget {
  ProfilePageView({super.key}) {
    initControllerValue();
  }

  void initControllerValue() {
    User user =
        User.fromJson(JsonDecoder().convert(localStorage.getItem('user')!));
    prenomController.text = user.lastname!;
    nomController.text = user.lastname!;
    emailController.text = user.email!;
  }

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
    return BlocProvider(
      create: (context) =>
          AuthenticationBloc(RepositoryProvider.of<Dio>(context)),
      child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
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
                      backgroundImage: const AssetImage(
                          '${EnvironementPath.images}user.jpg'),
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
                                    controller: nomController,
                                    labelText: "Nom"),
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
                          state.maybeWhen(
                            orElse: () => ButtonComponentView(
                              // width: double.infinity,
                              title: 'Modifier le profile',
                              onPressed: () {
                                context
                                    .read<AuthenticationBloc>()
                                    .add(AuthenticationEvent.updateUser(User(
                                      id: User.fromJson(JsonDecoder().convert(localStorage.getItem('user')!)).id,
                                      lastname: this.nomController.text,
                                      firstname: this.prenomController.text,
                                      email: this.emailController.text,
                                    )));
                              },
                            ),
                            loading: () => ButtonComponentView(
                              // width: double.infinity,
                              loading: true,
                              title: 'Modifier le profile',
                              onPressed: () {},
                            ),
                          )
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ),
          );
        },
        listener: (BuildContext context, AuthenticationState state) {
          state.maybeWhen(
              orElse: () {},
              authenticated: () {
                initControllerValue();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('Mise a jour reussie'),
                ));
              },
              error: (val) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.red,
                    content: Text('Un probleme est survenu veuiller ressayer'),
                    ));
              });
        },
      ),
    );
  }
}
