import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;

  const BottomNavWidget({
    super.key, required this.icon, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  SizedBox(
        height: 36.0,
        width: 36.0,
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
