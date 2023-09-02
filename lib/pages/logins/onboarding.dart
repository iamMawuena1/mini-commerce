// import 'package:flutter/material.dart';
// import 'package:intro_screen_onboarding_flutter/introduction.dart';
// import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
// import 'package:mini_commerce/pages/login.dart';

// class OnboardingScreen extends StatelessWidget {
//   final List<Introduction> list = [
//     Introduction(
//       title: 'Dessert',
//       subTitle: 'Enjoy some cake of Life',
//       imageUrl: 'assets/chef.png',
//     ),
//     Introduction(
//       title: 'Bake and Sell',
//       subTitle: 'Up your baking skills ans upload',
//       imageUrl: 'assets/onboarding.jpg',
//     ),
//     Introduction(
//       title: 'Cake of life',
//       subTitle: 'Pick up delivery at your door and enjoy cakes',
//       imageUrl: 'assets/chef.png',
//     ),
//   ];

//   OnboardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return IntroScreenOnboarding(
//       introductionList: list,
//       backgroudColor: Colors.amber,
//       skipTextStyle: const TextStyle(
//         fontSize: 30,
//         fontWeight: FontWeight.w700,
//         color: Colors.brown,
//       ),
//       onTapSkipButton: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) =>  LoginPage(),
//           ), //MaterialPageRoute
//         );
//       },
//     );
//   }
// }
