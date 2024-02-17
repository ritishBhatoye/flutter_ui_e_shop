import 'package:flutter/material.dart';
import 'package:flutter_ui_e_shop/screens/cartScreen.dart';
import 'package:flutter_ui_e_shop/screens/feedScreen.dart';
import 'package:flutter_ui_e_shop/screens/home.dart';
import 'package:flutter_ui_e_shop/screens/inboxScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  List pages = [Home(), FeedScreen(), CartScreen(), InboxScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedLabelStyle: TextStyle(color: Colors.blue),
        unselectedLabelStyle:
            TextStyle(color: Color.fromARGB(255, 171, 215, 247)),
        // backgroundColor: Colors.green,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color.fromARGB(255, 171, 215, 247),
        onTap: (index) {
          setState(() {
            _index = index;
            print("Index: $index");
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.featured_play_list,
              color: Colors.blue,
            ),
            icon: Icon(Icons.featured_play_list_outlined, color: Colors.black),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.shopping_bag,
              color: Colors.blue,
            ),
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.mail_rounded,
              color: Colors.blue,
            ),
            icon: Icon(Icons.mail_outline, color: Colors.black),
            label: 'Inbox',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.white,
        // onTap: _onItemTapped,
      ),
    );
  }
}
