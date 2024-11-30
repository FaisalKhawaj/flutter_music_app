

import 'package:flutter_music_app/src/featuredlist/featured_list.dart';
import 'package:flutter_music_app/src/searchmusiccategory/search_music_category.dart';
import 'package:flutter_music_app/src/settings/settings.dart';
import 'package:flutter_music_app/widgets/search_navigator.dart';
import 'package:get/get.dart';
import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/src/home/home.dart';
import 'package:flutter_music_app/src/search/search_music.dart';
import 'package:flutter_music_app/widgets/custom_bottom_tab.dart';

abstract class AppPages{

  static final List<GetPage> pages=[
    GetPage(name: Routes.bottomTab, page:()=> const CustomBottomTab()),
    GetPage(name: Routes.home, page: ()=>  Home()),
    GetPage(name: Routes.searchNavigator, page:()=> SearchNavigator()),
    GetPage(name: Routes.searchMusic, page: ()=>  SearchMusic()),
    GetPage(name: Routes.featuredList, page: ()=> FeaturedList()),
    GetPage(name: Routes.searchedMusicCategory, page: ()=> SearchMusicCategory()),
    GetPage(name: Routes.settings, page: ()=> const Settings())


  ];
}