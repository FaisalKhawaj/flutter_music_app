// Create a separate Navigator for the Search tab
import 'package:flutter/material.dart';
import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/src/search/search_music.dart';
import 'package:flutter_music_app/src/searchmusiccategory/search_music_category.dart';
import 'package:get/get.dart'; // Import GetX

class SearchNavigator extends StatelessWidget {
  const SearchNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: Routes.searchedMusicCategory,
      onGenerateRoute: (settings) {
        print('Search Navigator: Navigating to $settings.name');
        // Define the initial route for the Search stack
        Widget page =  SearchMusicCategory();

        // Handle navigation to other pages in the Search stack
        switch (settings.name) {
          case Routes.searchMusic:
            return GetPageRoute(
              page: () =>  SearchMusic(),
              settings: settings,
            );
          case Routes.searchedMusicCategory:
          default:return GetPageRoute(
          page: () =>  SearchMusicCategory(),
          settings: settings,
        );
        }

      },
    );
  }
}
