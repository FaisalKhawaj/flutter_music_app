import 'package:flutter/material.dart';
import 'package:flutter_music_app/routes/app_routes.dart';
import 'package:flutter_music_app/routes/app_pages.dart';
import '../../../resources/resources.dart';
import 'package:provider/provider.dart';

import 'package:flutter_music_app/widgets/custom_bottom_tab.dart';
import 'package:get/get.dart'; // Import GetX

void main() async {
// runApp(ChangeNotifierP)
runApp(ChangeNotifierProvider(
  create: (_) => R.themeProvider,  // Initialize the themeProvider here
  child: const MyApp(),
));

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      theme: ThemeData(
        brightness: R.themeProvider.isDarkMode ? Brightness.dark : Brightness.light,
        primaryColor: R.themeProvider.colors.primaryButtonBg,  // Use theme colors
        scaffoldBackgroundColor: R.themeProvider.colors.screenBg,
        useMaterial3: true,
      ),
      home:  const CustomBottomTab(),
      initialRoute: Routes.bottomTab, // Set your initial route
      getPages: AppPages.pages,
    );
  }
}

