import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:dart_amqp/dart_amqp.dart';
import 'package:dio/dio.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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
import 'package:guolo_app/repositorys/message_repository.dart';
import 'package:guolo_app/repositorys/payment_proof_repository.dart';
import 'package:guolo_app/repositorys/payment_request_repository.dart';
import 'package:guolo_app/repositorys/ticket_repository.dart';
import 'package:guolo_app/services/auth/authentication_bloc.dart';
import 'package:guolo_app/services/lottery/lottery_bloc.dart';
import 'package:guolo_app/services/message/message_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:localstorage/localstorage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:guolo_app/pages/splash_screen/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sup;

import 'models/chat_message.dart';
import 'models/user.dart';


void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Portrait mode only
    // DeviceOrientation.portraitDown, // Portrait mode upside down
    // DeviceOrientation.landscapeLeft, // Landscape mode left
    // DeviceOrientation.landscapeRight, // Landscape mode right
  ]);

  await Hive.initFlutter(); //// Initialise Hive dans Flutter
  Hive.registerAdapter(ChatMessageAdapter()); // Enregistre l’adaptateur
  await Hive.openBox<ChatMessage>('messages');
  await initializeService();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  await initLocalStorage();
  await sup.Supabase.initialize(
    url: 'https://drxszumeyeyrxuxltdbg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRyeHN6dW1leWV5cnh1eGx0ZGJnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY4MjQ1MjgsImV4cCI6MjA1MjQwMDUyOH0.ELzQ5o_mBJ6E3DZObVPVXGY_fmettZ236O61Z2lQKQw',
  );
  //Assign publishable key to flutter_stripe
  Stripe.publishableKey =
      "pk_live_51Ns7lSLpz6nIxV1VRZ3fF5UZOkucnrIaUN827YGTuMdf84MGINWYo3e8nQBEGlb3tWRZI3AZOIz4NMwjqM80tQGX00C4KHvU4F";

  //Load our .env file that contains our Stripe Secret key
  await dotenv.load(fileName: "assets/env/.env");
  runApp(MyApp());
}

initializeService() async {
  FlutterBackgroundService service = FlutterBackgroundService();
  PermissionStatus status = await Permission.notification.request();

  if (!status.isGranted) {
    await Permission.notification.request();
  }else {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'my_foreground', // id
      'MY FOREGROUND SERVICE', // title
      description:
      'This channel is used for important notifications.', // description
      importance: Importance.max,
      // importance must be at low or higher level
    );

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

    void requestNotificationPermissions() async {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
          ?.requestExactAlarmsPermission();
    }
    if (Platform.isIOS || Platform.isAndroid) {
      await flutterLocalNotificationsPlugin.initialize(
        const InitializationSettings(
          iOS: DarwinInitializationSettings(),
          android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        ),
      );
    }

    // requestNotificationPermissions();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }


  await service.configure(
    androidConfiguration: AndroidConfiguration(
      // this will be executed when app is in foreground or background in separated isolate
      onStart: onStart,

      // auto start service
      autoStart: true,
      isForegroundMode: true,

      notificationChannelId: 'my_foreground',
      initialNotificationTitle: 'AWESOME SERVICE',
      foregroundServiceNotificationId: 888,
      foregroundServiceTypes: [AndroidForegroundType.remoteMessaging],
    ),
    iosConfiguration: IosConfiguration(
      // auto start service
      autoStart: true,

      // this will be executed when app is in foreground in separated isolate
      onForeground: onStart,

      // you have to enable background fetch capability on xcode project
      onBackground: onIosBackground,
    ),
  );
}

@pragma('vm:entry-point')
FutureOr<bool> onIosBackground(ServiceInstance service) {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();


  return true;
}

@pragma('vm:entry-point')
onStart(ServiceInstance service) async {
  // Only available for flutter 3.0.0 and later
  // DartPluginRegistrant.ensureInitialized();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  if (Platform.isIOS || Platform.isAndroid) {
    await flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        iOS: DarwinInitializationSettings(),
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      ),
    );
  }

  // requestNotificationPermissions();

  if (!Hive.isBoxOpen('messages')) {
    await Hive.initFlutter(); //// Initialise Hive dans Flutter
    if (!Hive.isAdapterRegistered(ChatMessageAdapter().typeId)) {
      Hive.registerAdapter(ChatMessageAdapter());
    }
    await Hive.openBox<ChatMessage>('messages');
  }
  await initLocalStorage();
  print("hey men is me");
  final Box<ChatMessage> messageBox = Hive.box<ChatMessage>('messages');

  ConnectionSettings settings = ConnectionSettings(
      host: "37.60.239.221",
      port: 5672,
      authProvider: PlainAuthenticator("guest", "guest"));

  Client client = Client(settings: settings);

  Channel channel = await client.channel();

  User user =
  User.fromJson(JsonDecoder().convert(localStorage.getItem('user')!));

  // Déclaration de la queue
  Queue queue = await channel.queue('notification-${user.id}',
      durable: false, declare: true);
  Queue generalQueue = await channel.queue('general',durable: true);
  // Création d'un StreamController pour capturer les messages

  // Consommation des messages
  Consumer consumer = await queue.consume();
  Consumer generalConsumer = await generalQueue.consume();

  generalConsumer.listen((message) {
    print(message);
    String? chatMessage = message.payloadAsString;

    // messageBox.add(chatMessage);
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (service is AndroidServiceInstance) {
        if (await service.isForegroundService()) {
          /// OPTIONAL for use custom notification
          /// the notification id must be equals with AndroidConfiguration when you call configure() method.
          print(chatMessage);

          if(chatMessage != null) {
            flutterLocalNotificationsPlugin.show(
              888,
              'New message',
              chatMessage,
              const NotificationDetails(
                android: AndroidNotificationDetails(
                  'my_foreground',
                  'MY FOREGROUND SERVICE',
                  icon: '@mipmap/ic_launcher',
                  ongoing: true,
                ),
              ),
            );

            chatMessage = null;
          }
          service.setForegroundNotificationInfo(
            title: "My App Service",
            content: chatMessage!,
          );


          // if you don't using custom notification, uncomment this

        }
      }
    });


  });

  consumer.listen((message) {
    print(message);
    ChatMessage? chatMessage =
    ChatMessage.fromJson(JsonDecoder().convert(message.payloadAsString));
    chatMessage?.isUser = false;
    // messageBox.add(chatMessage);
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (service is AndroidServiceInstance) {
        if (await service.isForegroundService()) {
          /// OPTIONAL for use custom notification
          /// the notification id must be equals with AndroidConfiguration when you call configure() method.
          print(chatMessage?.message);

          if(chatMessage != null) {
            flutterLocalNotificationsPlugin.show(
              888,
              'New message',
              chatMessage?.message,
              const NotificationDetails(
                android: AndroidNotificationDetails(
                  'my_foreground',
                  'MY FOREGROUND SERVICE',
                  icon: '@mipmap/ic_launcher',
                  ongoing: true,
                ),
              ),
            );

            chatMessage = null;
          }
          service.setForegroundNotificationInfo(
            title: "My App Service",
            content: chatMessage!.message,
          );


          // if you don't using custom notification, uncomment this

        }
      }
    });


  });
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
    final MessageRepository messageRepository = MessageRepository();
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => TicketRepository(dio: dio)),
        RepositoryProvider(create: (context) => dio),
        RepositoryProvider(create: (context) => lotteryRepository),
        RepositoryProvider(
            create: (context) => PaymentRequestRepository(dio: dio)),
        RepositoryProvider(
            create: (context) => PaymentProofRepository(dio: dio)),
        RepositoryProvider(create: (context) => messageRepository)
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AuthenticationBloc(dio)),
            BlocProvider(
                create: (context) => MessageBloc(dio, messageRepository)
                  ..add(MessageEvent.init())),
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
