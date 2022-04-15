// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meetdr/home/chat.dart';
import 'package:meetdr/home/home.dart';
import 'package:meetdr/home/profile.dart';
import 'package:meetdr/home/store.dart';
import 'package:meetdr/theme.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customButton() {
      return ClipRRect(
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bgNavbar,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Image.asset(
                    'assets/icon_home.png',
                    width: 25,
                    color:
                        currentIndex == 0 ? primaryColor : secondaryTextColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Image.asset('assets/icon_chat.png',
                      width: 25,
                      color: currentIndex == 1
                          ? primaryColor
                          : secondaryTextColor),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Image.asset('assets/icon_drug.png',
                      width: 20,
                      color: currentIndex == 2
                          ? primaryColor
                          : secondaryTextColor),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Image.asset('assets/icon_profile.png',
                      width: 25,
                      color: currentIndex == 3
                          ? primaryColor
                          : secondaryTextColor),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 1:
          return ChatPage();
        case 2:
          return StorePage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? bgColor1 : bgColor3,
      bottomNavigationBar: customButton(),
      body: body(),
    );
  }
}
