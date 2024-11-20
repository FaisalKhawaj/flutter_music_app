import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

import 'package:flutter_music_app/widgets/custom_bottom_tab.dart';
import 'package:get/get.dart'; // Import GetX

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      theme: ThemeData(
        scaffoldBackgroundColor: R.colors.screenBg,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const CustomBottomTab(),
      // initialRoute: Routes.bottomTab, // Set your initial route
      // getPages: AppPages.pages,
    );
  }
}

