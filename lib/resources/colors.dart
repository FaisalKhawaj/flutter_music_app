import 'package:flutter/material.dart';

class AppColor {
  Color screenBg = const Color(0xFF1f1f1f);
  Color headerTitle = const Color(0xFFFFFFFF);
  Color subHeading = const Color(0xFFADADAD);
  Color inputBg = const Color(0xFF3b3b3b);
  // Color inputLine= const Color(0xFF);
  Color cardBorder = const Color(0xFF373737);
  Color primaryButtonBg = const Color(0xFFF97314);
  Color appBarBottomBorder = const Color(0xFF383838);
  Color unselectedTab= const Color(0xFFAFAFAF);
  Color viewAllButton= const Color(0xFFEEBB2A);
  Color cardBg=const Color(0xFF252525);
  Color activeSlide= const Color(0xFFF2B800);
  Color maximizeButton=const Color(0xFF373737);
  Color settingButton= const Color(0xFF252525);
  Color subscriptionTitle= const Color(0xFFFFFFFF);

  // Method to get the Dark Theme Colors
  static AppColor dark() {
    AppColor darkColors = AppColor();

    darkColors.screenBg = const Color(0xFF121212); // Dark background
    darkColors.headerTitle = const Color(0xFFFFFFFF); // White header title
    darkColors.subHeading = const Color(0xFFB0B0B0); // Light gray subheading
    darkColors.inputBg = const Color(0xFF3b3b3b); // Dark input background
    darkColors.cardBorder = const Color(0xFF373737); // Dark card border
    darkColors.primaryButtonBg = const Color(0xFFF97314); // Primary button background
    darkColors.appBarBottomBorder = const Color(0xFF383838); // AppBar bottom border
    darkColors.unselectedTab = const Color(0xFFB0B0B0); // Unselected tab color
    darkColors.viewAllButton = const Color(0xFFEEBB2A); // View all button color
    darkColors.cardBg = const Color(0xFF2B2B2B); // Card background color
    darkColors.activeSlide = const Color(0xFFF2B800); // Active slide color
    darkColors.maximizeButton = const Color(0xFF373737); // Maximize button color
    darkColors.settingButton= const Color(0xFF252525);
    darkColors.subscriptionTitle= const Color(0xFFFFFFFF);
    return darkColors;
  }

  // Method to get the Light Theme Colors (returns default light theme colors)
  static AppColor light() {
    AppColor lightColors = AppColor();

    lightColors.screenBg = const Color(0xFFFFFFFF); // Light background
    lightColors.headerTitle = const Color(0xFF000000); // Black header title
    lightColors.subHeading = const Color(0xFF909090); // Dark gray subheading
    lightColors.inputBg = const Color(0xFFF5F5F5); // Light input background
    lightColors.cardBorder = const Color(0xFFDDDDDD); // Light card border
    lightColors.primaryButtonBg = const Color(0xFFF97314); // Primary button background
    lightColors.appBarBottomBorder = const Color(0xFFDDDDDD); // AppBar bottom border
    lightColors.unselectedTab = const Color(0xFF757575); // Unselected tab color
    lightColors.viewAllButton = const Color(0xFFE16814); // View all button color
    lightColors.cardBg = const Color(0xFFFFF); // Card background color
    lightColors.activeSlide = const Color(0xFFF2B800); // Active slide color
    lightColors.maximizeButton = const Color(0xFFDDDDDD); // Maximize button color
    lightColors.settingButton= const Color(0xFFFFFFFF);
    lightColors.subscriptionTitle= const Color(0xFFFFFFFF);


    return lightColors;
  }
}
