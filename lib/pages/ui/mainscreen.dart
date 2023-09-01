import 'package:flutter/material.dart';
import 'package:mini_commerce/components/custombottom.dart';
import 'package:mini_commerce/controllers/mainscreen_provider.dart';
import 'package:mini_commerce/pages/ui/cartpage.dart';
import 'package:mini_commerce/pages/ui/favorites_page.dart';
import 'package:mini_commerce/pages/ui/homepage.dart';
import 'package:mini_commerce/pages/ui/profile.dart';
import 'package:mini_commerce/pages/ui/search.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(cakeproduct: [],),
    SearchPage(),
    FavoritePage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: ((context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xffe2e2e2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const CustomBottomNav(),
        );
      }),
    );
  }
}
