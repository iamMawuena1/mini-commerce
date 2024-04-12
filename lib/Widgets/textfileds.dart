import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscuredText;
  final TextEditingController? controller;
  const MyTextField({
    super.key,
    required this.hintText,
    required this.obscuredText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onPrimary),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: hintText,
          fillColor: Theme.of(context).colorScheme.primary,
          filled: true,
        ),
        obscureText: obscuredText,
      ),
    );
  }
}
