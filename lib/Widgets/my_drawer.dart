import 'package:flutter/material.dart';
import 'package:mini_commerce/Widgets/my_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.7,
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // icon
              DrawerHeader(
                child: Icon(
                  Icons.shopping_basket_outlined,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              //shop title
              CustomListTile(
                text: 'Shop',
                icon: Icons.home_max_outlined,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/homepage');
                },
              ),
              //cart tile
              CustomListTile(
                text: 'Cart',
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.of(context).pop();
                  //routing to cart page
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),
          //exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: CustomListTile(
              text: 'Logout',
              icon: Icons.logout_rounded,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
