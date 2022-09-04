import 'package:flutter/material.dart';
import 'package:movie_app_ui_flutter/Pages/Navigaton%20Pages/home_page.dart';
import 'package:movie_app_ui_flutter/Pages/Navigaton%20Pages/profile.dart';
import 'package:movie_app_ui_flutter/Pages/Navigaton%20Pages/download_page.dart';
import 'package:movie_app_ui_flutter/Pages/Navigaton%20Pages/newsfeed_page.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int currentIndex = 0;
  final screen= [
    HomePage(),
    UpdatesPage(),
    DownloadPage(),
    ProfilePage()
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBody: true,
      body: screen[currentIndex],
      bottomNavigationBar: currentIndex==3 ? Container(): Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 15, right: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            showSelectedLabels: true,
            selectedItemColor: Colors.purple,
            selectedFontSize: 9,
            iconSize: 28,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white70,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor:  Colors.white,
              ),
              BottomNavigationBarItem(
                label: "Updates",
                backgroundColor:  Colors.white,
                icon: Icon(Icons.group_work_outlined),
              ),
              BottomNavigationBarItem(
                label: "Download",
                backgroundColor:  Colors.white,
                icon: Icon(Icons.download),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                backgroundColor:  Colors.white,
                icon: Icon(Icons.person_outline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}