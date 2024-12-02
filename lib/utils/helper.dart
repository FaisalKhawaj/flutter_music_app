import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/resources.dart';

class Helper{


  static void inSnackBar(String title, String message) {
    Get.snackbar(title, message,
        icon: const Icon(Icons.info_rounded),
        backgroundColor: R.colors.primaryButtonBg,
        colorText: Colors.white);
  }

  static bool isKeyboardOpen(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom != 0.0;
  }

  static String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }



}