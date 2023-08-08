import 'package:flutter/material.dart';

import 'buttom_navigation.dart';
import 'homescreen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(
          shadowColor: Colors.black,
        )
      ),
      home:  BottomNavigationbar(selectedIndex: 0)

    );
  }
}
