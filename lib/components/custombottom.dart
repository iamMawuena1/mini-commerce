import 'package:flutter/material.dart';

import 'package:mini_commerce/controllers/mainscreen_provider.dart';
import 'package:provider/provider.dart';

import 'bottomnav.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.symmetric(horizontal: 18),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(
                
                  onTap: () {
                    mainScreenNotifier.pageIndex = 0;
                  },
                  icon: mainScreenNotifier.pageIndex == 0
                      ? Icons.home
                      : Icons.home_outlined,
                ),
                BottomNavWidget(
                  icon: mainScreenNotifier.pageIndex == 1
                      ? Icons.search
                      : Icons.search_outlined,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 1;
                  },
                ),
                BottomNavWidget(
                  icon: mainScreenNotifier.pageIndex == 2
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 2;
                  },
                ),
                BottomNavWidget(
                  icon: mainScreenNotifier.pageIndex == 3
                      ? Icons.shopping_bag
                      : Icons.shopping_bag_outlined,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 3;
                  },
                ),
                BottomNavWidget(
                  icon: mainScreenNotifier.pageIndex == 4 ? Icons.person : Icons.person_outline_outlined,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 4;
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
