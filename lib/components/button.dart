import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onTap,
    required this.btnName,
    required this.color,
  });
  final Function()? onTap;
  final String btnName;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              btnName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
