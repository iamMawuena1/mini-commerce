import 'package:flutter/material.dart';
import 'package:mini_commerce/controllers/mainscreen_provider.dart';

import 'package:mini_commerce/pages/ui/mainscreen.dart';
import 'package:provider/provider.dart';
// import 'package:mini_commerce/pages/splashpage.dart';
// import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MainScreenNotifier())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
