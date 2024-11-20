

import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/src/home/home.dart';
import 'package:flutter_music_app/src/search/search_music.dart';
import 'package:get/get.dart';

abstract class AppPages{

  static final List<GetPage> pages=[
    GetPage(name: Routes.home, page: ()=>const Home()),
    GetPage(name: Routes.searchMusic, page: ()=>const SearchMusic())
  ];
}