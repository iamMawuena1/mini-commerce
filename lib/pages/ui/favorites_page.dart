import 'package:flutter/material.dart';
import 'package:mini_commerce/components/appstyle.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Favorite Page",
          style: appstyle(
            36,
            Colors.black,
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
