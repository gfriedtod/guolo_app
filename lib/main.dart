import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guolo_app/material/colors.dart';
import 'package:guolo_app/pages/home_page/home_page.dart';
import 'package:guolo_app/pages/create_account_page/create_account_page.dart';
import 'package:guolo_app/pages/login_page/login_page.dart';

import 'package:guolo_app/pages/signup_page/signup_page_view.dart';
import 'package:bloc/bloc.dart';
import 'package:guolo_app/repositorys/lottery_repository.dart';
import 'package:guolo_app/repositorys/payment_proof_repository.dart';
import 'package:guolo_app/repositorys/payment_request_repository.dart';
import 'package:guolo_app/repositorys/ticket_repository.dart';
import 'package:guolo_app/services/auth/authentication_bloc.dart';
import 'package:guolo_app/services/lottery/lottery_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:localstorage/localstorage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:guolo_app/pages/splash_screen/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sup;

import 'models/user.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Portrait mode only
    // DeviceOrientation.portraitDown, // Portrait mode upside down
    // DeviceOrientation.landscapeLeft, // Landscape mode left
    // DeviceOrientation.landscapeRight, // Landscape mode right
  ]);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  await initLocalStorage();
  await sup.Supabase.initialize(
    url: 'https://drxszumeyeyrxuxltdbg.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRyeHN6dW1leWV5cnh1eGx0ZGJnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY4MjQ1MjgsImV4cCI6MjA1MjQwMDUyOH0.ELzQ5o_mBJ6E3DZObVPVXGY_fmettZ236O61Z2lQKQw',
  );
  //Assign publishable key to flutter_stripe
  Stripe.publishableKey =
      "pk_test_51Qk3wY6kIjqqcqePLoVo8eBERFkhxnwdK7WCsSBhKlq1LFDuGb0gvYIzDCjeSDIeejmVflCR3cbKvOwIkT3U73EB00YrJtv8ta";

  //Load our .env file that contains our Stripe Secret key
  await dotenv.load(fileName: "assets/env/.env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Dio dio = Dio();
  MyApp({super.key});

  Widget _determineInitialScreen() {
    try {
      String? token = localStorage.getItem('token');
      String? userJson = localStorage.getItem('user');

      if (token == null || userJson == null) {
        print('Aucun token trouvé');
        return LoginPageView();
      }

      // Vérifier l'expiration du token
      if (JwtDecoder.isExpired(token)) {
        localStorage.clear();
        return LoginPageView();
      }

      // Configurer l'en-tête du token pour Dio
      dio.options.headers["Authorization"] = "Bearer $token";

      // Si l'utilisateur est stocké, aller à la page d'accueil
      User user = User.fromJson(json.decode(userJson));
      return HomePageView();
    } catch (e) {
      print('Une erreur s’est produite lors du traitement du token: $e');

      return HomePageView();
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    BaseOptions options = BaseOptions(
      headers: {
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Credentials': 'true',
        'Access-Control-Allow-Headers': 'Content-Type',
        'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
      },
    );
    dio.options = options;
    final LotterieRepository lotteryRepository = LotterieRepository(dio: dio);
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => TicketRepository(dio: dio)),
        RepositoryProvider(create: (context) => dio),
        RepositoryProvider(create: (context) => lotteryRepository),
        RepositoryProvider(create: (context) => PaymentRequestRepository(dio: dio)),
        RepositoryProvider(create: (context) => PaymentProofRepository(dio: dio)),

      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AuthenticationBloc(dio)),
            BlocProvider(
                create: (context) => LotteryBloc(lotteryRepository)
                  ..add(LotteryEvent.started())),
          ],
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: 'Poppins',
                colorScheme:
                    ColorScheme.fromSeed(seedColor: GuoloColors.primaryColor),
                useMaterial3: true,
              ),
              home: FlutterSplashScreen.fadeIn(
                  nextScreen: _determineInitialScreen(),
                  childWidget: const SplashScreen()))),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return (snapshot.data?.get('token') != null)
                ? HomePageView()
                : CreateAccountPage();
          }
        });
  }
}
