

import 'package:get/get.dart';
import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/src/home/home.dart';
import 'package:flutter_music_app/src/search/search_music.dart';
import 'package:flutter_music_app/widgets/custom_bottom_tab.dart';

abstract class AppPages{

  static final List<GetPage> pages=[
    GetPage(name: Routes.bottomTab, page:()=> const CustomBottomTab()),
    GetPage(name: Routes.home, page: ()=>  Home()),
    GetPage(name: Routes.searchMusic, page: ()=> const SearchMusic())

  ];
}