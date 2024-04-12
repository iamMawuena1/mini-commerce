import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mini_commerce/home.dart';
import 'package:mini_commerce/models/shop.dart';
import 'package:mini_commerce/pages/cart.dart';
import 'package:mini_commerce/pages/logins/forgotpass.dart';
import 'package:mini_commerce/pages/logins/login.dart';
import 'package:mini_commerce/pages/onboarding/intro_page1.dart';
import 'package:mini_commerce/pages/onboarding/intro_page2.dart';
import 'package:mini_commerce/pages/onboarding/intro_page3.dart';
import 'package:mini_commerce/pages/splashscreen.dart';
import 'package:mini_commerce/themes/light_mode.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      routes: {
        '/intro1': (context) => const IntroPage(),
        '/intro2': (context) => const IntroPage2(),
        '/intro3': (context) => const IntroPage3(),
        '/homepage': (context) => const HomePage(),
        '/cart_page': (context) => const CartPage(),
        '/forgotpassword': (context) => const ForgotPasswordPage(),
        '/loginpage': (content) => LoginPage(showregisterPage: () {}),
      },
      home: const SplashScreen(),
    );
  }
}
