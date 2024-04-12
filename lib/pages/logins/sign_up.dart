import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Widgets/my_button.dart';
import '../../Widgets/textfileds.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({
    super.key,
    required this.showLoginPage,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //Text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //keys to the form
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  //sign up method
  Future signUp() async {
    if (_formKey.currentState!.validate() && passwordConfirmed()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
      } catch (e) {
        // Handle sign-up errors
        return Text("Error signing up: $e");
      }
    }
  }

  //checking for passwords
  bool passwordConfirmed() {
    if (passwordController.text.trim() ==
        confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
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
                    Icons.app_registration_outlined,
                    size: 100.0,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  const SizedBox(height: 45),
                  //text
                  const Text(
                    ' W E L C O M E',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Register here with your details in order to access affordable goods with safe delivery",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    hintText: 'Confirm Password',
                    obscuredText: true,
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  // login button
                  MyButton(
                    onTap: signUp,
                    child: const Text(
                      'Register',
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
                      const Text('Already a member?'),
                      GestureDetector(
                        onTap: widget.showLoginPage,
                        child: const Text(
                          " Login Here",
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
