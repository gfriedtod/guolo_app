import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:guolo_app/pages/create_account_page/create_account_page.dart';

import '../../material/colors.dart';
import '../../material/environement_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => CreateAccountPage()));
    });
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightGreen,
            GuoloColors.primaryColor,
            GuoloColors.primaryColor
          ],
        )),
        child: Center(
          child: Image.asset('${EnvironementPath.images}bull-logo.png'),
        ),
      ),
    );
  }
}
