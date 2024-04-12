import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_commerce/Widgets/my_button.dart';
import 'package:mini_commerce/Widgets/textfileds.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final forgotPasswordController = TextEditingController();

  @override
  void dispose() {
    forgotPasswordController.dispose();
    super.dispose();
  }

  //password reset method
  Future passwordReset() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: forgotPasswordController.text.trim(),
      );
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (content) {
            return const AlertDialog(
              content: Text("Reset link sent to your email"),
            );
          });
    } on FirebaseException catch (e) {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (content) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Enter your email and you will be redirected to reset your password",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          MyTextField(
            hintText: 'Email',
            obscuredText: false,
            controller: forgotPasswordController,
          ),
          const SizedBox(height: 10),
          MyButton(
            onTap: passwordReset,
            child: const Text(
              "Reset",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
