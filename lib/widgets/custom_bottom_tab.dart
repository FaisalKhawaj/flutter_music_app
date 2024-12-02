import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/src/settings/settings.dart';
import 'package:flutter_music_app/widgets/search_navigator.dart';
import 'package:get/get.dart';

import '../../../resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/home/home.dart';

class CustomBottomTab extends StatefulWidget {
  const CustomBottomTab({super.key});

  @override
  _CustomBottomTabState createState() => _CustomBottomTabState();
}

class _CustomBottomTabState extends State<CustomBottomTab> {
  // Current selected index for the bottom navigation
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Home(),
    SearchNavigator(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void onItemTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: R.themeProvider.colors.screenBg,
      // appBar: AppBar(title: Text('Bottom Tab'),),
      body: _screens[_currentIndex],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent),
          child: BottomNavigationBar(
            backgroundColor: R.themeProvider.colors.screenBg,
            selectedItemColor: R.themeProvider.colors.primaryButtonBg,
            unselectedItemColor: R.themeProvider.colors.unselectedTab,
            selectedLabelStyle: R.textStyle.bottomTabLabelText().copyWith(
                  fontWeight: FontWeight.w600,
                ),
            unselectedLabelStyle: R.textStyle.bottomTabLabelText(),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: _currentIndex,
            onTap: onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                backgroundColor: R.themeProvider.colors.screenBg,
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: R.themeProvider.colors.screenBg,
                icon: Icon(
                  Icons.search,
                  size: 35,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                backgroundColor: R.themeProvider.colors.screenBg,
                icon: Icon(
                  Icons.settings,
                  size: 35,
                ),
                label: 'Settings',
              ),

              // BottomNavigationBarItem(icon: Icon(Icons.settings,size: 35,),label: 'Settings',),
            ],
          )),
    );
  }
}
