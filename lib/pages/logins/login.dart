import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_commerce/Widgets/my_button.dart';

import '../../Widgets/textfileds.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showregisterPage;
  const LoginPage({
    super.key,
    required this.showregisterPage,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //key for the form
  final _formKey = GlobalKey<FormState>();

  //login method
  Future login() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
      } catch (e) {
        showDialog(
            // ignore: use_build_context_synchronously
            context: context,
            builder: (content) {
              return AlertDialog(
                content: Text(e.toString()),
              );
            });
      }
    } else {}
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // img
                  Icon(
                    Icons.shopping_cart_rounded,
                    size: 100.0,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  const SizedBox(height: 75),
                  //text
                  const Text(
                    ' HELLO AGAIN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Great to see you again, login in to access affordable goods with safe delivery",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  //email field
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscuredText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  //password field
                  MyTextField(
                    hintText: 'Password',
                    obscuredText: true,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgotpassword');
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // login button
                  MyButton(
                    onTap: login,
                    child: const Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a member?'),
                      GestureDetector(
                        onTap: widget.showregisterPage,
                        child: const Text(
                          " Register Here",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
