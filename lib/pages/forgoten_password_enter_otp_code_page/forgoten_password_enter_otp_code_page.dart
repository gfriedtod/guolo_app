import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:guolo_app/components/button_component.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/material/environement_path.dart';
import 'package:guolo_app/models/email_verified.dart';
import 'package:guolo_app/pages/home_page/home_page.dart';
import 'package:guolo_app/pages/login_page/login_page.dart';
import 'package:guolo_app/services/auth/authentication_bloc.dart';

class ForgotenPasswordOtpCodePageView extends StatefulWidget {
  final String email;
  const ForgotenPasswordOtpCodePageView({super.key, required this.email});

  @override
  State<ForgotenPasswordOtpCodePageView> createState() =>
      _ForgotenPasswordOtpCodePageViewState();
}

class _ForgotenPasswordOtpCodePageViewState
    extends State<ForgotenPasswordOtpCodePageView> {
  String code = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GuoloColors.secondaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width * 0.9,
            child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
              builder: (BuildContext context, state) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        '${EnvironementPath.images}illustration3.png',
                        height: size.height * 0.38,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Entrez le code a 4 chiffres envoyer a votre email',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      OtpTextField(
                        fieldWidth: 60.0,
                        fieldHeight: 80,
                        numberOfFields: 4,
                        borderColor: Colors.black,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        cursorColor: GuoloColors.primaryColor,
                        focusedBorderColor: GuoloColors.primaryColor,
                        showCursor: true,
                        styles: const [
                          TextStyle(color: Colors.white),
                          TextStyle(color: Colors.white),
                          TextStyle(color: Colors.white),
                          TextStyle(color: Colors.white),
                        ],
                        showFieldAsBox: true,
                        onCodeChanged: (String vCode) {
                          setState(() {
                            code = vCode;
                          });
                          // handle validation or checks here
                        },
                        onSubmit: (String verificationCode) {
                          setState(() {
                            if (verificationCode.isNotEmpty) {
                              code = verificationCode;
                            }
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Vous n\'avez pas recu le code?',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                context.read<AuthenticationBloc>().add(AuthenticationEvent.sendOtp('${widget.email}'));
                              },
                              child: const Text(
                                'Renvoyer',
                                style:
                                    TextStyle(color: GuoloColors.primaryColor),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonComponentView(
                        loading: state == AuthenticationState.loading(),
                        title: 'Continuer',
                        onPressed: (code.isEmpty || code.length != 4)
                            ? () {}
                            : () {
                                print(state);
                                context.read<AuthenticationBloc>().add(
                                    AuthenticationEvent.startedVerified(
                                        new EmailVerified(
                                            otp: code, email: widget.email)));
                              },
                        color: (code.isEmpty || code.length != 4)
                            ? Colors.grey.shade50
                            : null,
                      )
                    ]);
              },
              listener: (BuildContext context, AuthenticationState state) {
                if (state == AuthenticationState.verified()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPageView()));
                }else if (state == AuthenticationState.otpSend()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("code envoyer")));
                } else if (state == AuthenticationState.unauthenticated()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("code invalide")));

                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
