import 'package:flutter/material.dart';
import 'package:flutter_ui_e_shop/screens/bottomNavbar.dart';
import 'package:flutter_ui_e_shop/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-SHOP',
      home: BottomNavBar(),
    );
  }
}
