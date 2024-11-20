

import 'package:flutter_music_app/src/search/search_music.dart';

import '../../../resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/home/home.dart';

class CustomBottomTab extends StatefulWidget{

  const CustomBottomTab({super.key});

  @override
  _CustomBottomTabState createState()=>_CustomBottomTabState();
}

class _CustomBottomTabState extends State<CustomBottomTab>{
  // Current selected index for the bottom navigation
  int _currentIndex = 0;
  final List<Widget> _screens=[
     Home(),
    SearchMusic(),

   
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void _onItemTapped(int index){
      setState(() {
        _currentIndex=index;
      });
    }
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: Text('Bottom Tab'),),
      body: _screens[_currentIndex],
      bottomNavigationBar:Theme(data: Theme.of(context).copyWith(splashFactory: NoSplash.splashFactory), child: BottomNavigationBar(
          enableFeedback: false,

          backgroundColor: R.colors.screenBg,
          selectedItemColor: R.colors.primaryButtonBg,
          unselectedItemColor: R.colors.unselectedTab,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: _currentIndex,
          onTap:_onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',),

          ])) ,
    );
  }
}
