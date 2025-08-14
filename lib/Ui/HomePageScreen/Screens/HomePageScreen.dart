import 'package:carshop/Ui/HomePageScreen/Tabs/favorite_Screen.dart';

import 'package:carshop/Ui/HomePageScreen/Tabs/My_Profile.dart';
import 'package:carshop/Ui/HomePageScreen/Tabs/Notification_Screen.dart';
import 'package:flutter/material.dart';

import 'Home_Content.dart';

class HomePageScreen extends StatefulWidget {
  static const String routename = "Homescreen";

  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int changeIndex = 0;

  List<Widget> screen = [Home(), FavoriteScreen(favoriteCars: [],),NotificationScreen(),Profile()];

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF4F6F8), body: IndexedStack(
      index: changeIndex,
      children: screen,

    ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: changeIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          onTap: (index){
           setState(() {
             changeIndex=index;
           });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_add_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: ""),
          ]),

    );
  }
}
