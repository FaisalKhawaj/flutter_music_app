
import 'package:flutter/material.dart';
import '../resources/resources.dart';

class AppDecorations{

  BoxDecoration popularCardDecoration(){
    return BoxDecoration(
      border: Border.all(width: 1, color: R.themeProvider.colors.cardBorder),
      color: R.themeProvider.colors.cardBg,  boxShadow: [
      // BoxShadow(
      //   color: Colors.grey.withOpacity(0.1),
      //   spreadRadius: 2,
      //   blurRadius: 2,
      //   offset: Offset(0, 2), // changes position of shadow
      // ),
    ],

      borderRadius: BorderRadius.circular(12),
    );
  }

  BoxDecoration subscriptionCardDecoration(){
    return  BoxDecoration(
      color: R.themeProvider.colors.primaryButtonBg,
      borderRadius: BorderRadius.circular(20),

    );
  }




}