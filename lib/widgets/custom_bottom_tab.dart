

import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/src/featuredlist/featured_list.dart';
import 'package:flutter_music_app/src/search/search_music.dart';
import 'package:flutter_music_app/src/searchmusiccategory/search_music_category.dart';
import 'package:flutter_music_app/src/settings/settings.dart';
import 'package:get/get.dart';

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
    SearchMusicCategory(),
    SearchMusic(),
    FeaturedList(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void onItemTapped(int index){
      setState(() {
        _currentIndex=index;

        // Add Get.toNamed() here if you want to use Get for navigation:
        // if (index == 3) {  // If Featured is tapped
        //   Get.toNamed(Routes.featuredList); // Navigate to FeaturedList
        // }
      });
    }
    return Scaffold(
      backgroundColor: R.colors.screenBg,
      // appBar: AppBar(title: Text('Bottom Tab'),),
      body: _screens[_currentIndex],
      bottomNavigationBar:Theme(data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent

      ),
          child: BottomNavigationBar(
          backgroundColor: R.colors.screenBg,
          selectedItemColor: R.colors.primaryButtonBg,
          unselectedItemColor: R.colors.unselectedTab,
          selectedLabelStyle:R.textStyle.bottomTabLabelText().copyWith(
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: R.textStyle.bottomTabLabelText(),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: _currentIndex,
          onTap:onItemTapped,
type: BottomNavigationBarType.fixed,
          items:  [
            BottomNavigationBarItem(backgroundColor: R.colors.screenBg , icon: Icon(Icons.home,size: 35,),label: 'Home',),
            BottomNavigationBarItem(backgroundColor: R.colors.screenBg, icon: Icon(Icons.search,size: 35,),label: 'Search',),
            BottomNavigationBarItem(backgroundColor: R.colors.screenBg,icon: Icon(Icons.music_note,size: 35,),label: 'Featured',),
            BottomNavigationBarItem(backgroundColor:R.colors.screenBg, icon:Icon(Icons.settings,size: 35,),label: 'Settings',),

            // BottomNavigationBarItem(icon: Icon(Icons.settings,size: 35,),label: 'Settings',),

          ],

          )) ,
    );
  }
}
