// import 'package:flutter/material.dart';
// import 'package:mini_commerce/components/buttons/button.dart';
// import 'package:mini_commerce/components/buttons/social-media.dart';
// import 'package:mini_commerce/components/buttons/textfield.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   //editing controllers
//   final usernameController = TextEditingController();
//   final passWordController = TextEditingController();

//   //sign in
//   void UserSignIn() {}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(height: 50.0),
//               // logo img
//               const Icon(
//                 Icons.cake_outlined,
//                 size: 150.0,
//               ),
//               const SizedBox(height: 50.0),
//               Text(
//                 "Hungry!! Login and order",
//                 style: TextStyle(
//                   color: Colors.grey[700],
//                   fontSize: 16,
//                 ),
//               ),
//               const SizedBox(height: 25.0),

//               //username textfeild
//               MyTextField(
//                 controller: usernameController,
//                 hintText: "Enter Email",
//                 obscureText: false,
//               ),
//               const SizedBox(height: 10.0),

//               //password textfield
//               MyTextField(
//                 controller: passWordController,
//                 hintText: "Enter password",
//                 obscureText: true,
//               ),
//               const SizedBox(height: 10.0),
//               //forgot pass
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       "Forgot Password",
//                       style: TextStyle(
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 25.0),
//               //button
//               MyButton(
//                 onTap: UserSignIn,
//                 btnName: "Login",
//                 color: Colors.black,
//               ),
//               const SizedBox(height: 50.0),
//               //or continue with
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         thickness: 0.5,
//                         color: Colors.grey[400],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                       child: Text(
//                         "or continue with",
//                         style: TextStyle(color: Colors.grey[700]),
//                       ),
//                     ),
//                     Expanded(
//                       child: Divider(
//                         thickness: 0.5,
//                         color: Colors.grey[400],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 50.0),
//               // google + apple
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SocialMedia(imagePath: "assets/google.png"),
//                   SizedBox(width: 25.0),
//                   SocialMedia(imagePath: "assets/apple.png"),
//                 ],
//               ),
//               const SizedBox(height: 50.0),
//               //not registered
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Not a member?",
//                     style: TextStyle(
//                       color: Colors.grey[700],
//                     ),
//                   ),
//                   const SizedBox(width: 4),
//                   const Text(
//                     "Register now",
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
