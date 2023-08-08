import 'package:flutter/material.dart';
import 'package:flutter_luckypet_app/buttom_navigation.dart';
import 'package:flutter_luckypet_app/cart_screen.dart';

import 'app_styles.dart';
import 'app_styles.dart';
import 'app_styles.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color:kOrange,
            ),
            child: Text(
              'Drawer ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text(
              'Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigationbar(
                    selectedIndex: 1,
                  ),
                ),
              );
              // Navigator.pop(context); // Close the drawer
            },
          ),
          
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigationbar(
                    selectedIndex: 2,
                  ),
                ),
              );
              // Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}
