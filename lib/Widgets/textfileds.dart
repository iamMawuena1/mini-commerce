import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final bool obscuredText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const MyTextField({
    super.key,
    required this.hintText,
    required this.obscuredText,
    required this.controller,
    this.validator,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscuredText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.obscuredText
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscuredText = !_obscuredText;
                    });
                  },
                  icon: Icon(
                    _obscuredText ? Icons.visibility_off : Icons.visibility,
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.onPrimary),
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(12.0),
          ),
          hintText: widget.hintText,
          fillColor: Theme.of(context).colorScheme.primary,
          filled: true,
        ),
        obscureText: widget.obscuredText,
        validator: widget.validator,
      ),
    );
  }
}
