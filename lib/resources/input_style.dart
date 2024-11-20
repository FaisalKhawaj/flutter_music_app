
import 'package:flutter/material.dart';
import '../resources/resources.dart';

class AppInputStyle{

  TextStyle searchInputTextStyle(){
    return TextStyle(
        color: R.colors.subHeading,
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500

    );
  }

  OutlineInputBorder searchInputBorderStyle(){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(width: 1,color: R.colors.inputBg));
  }

  OutlineInputBorder searchInputFocusedBorderStyle(){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(width: 1,color: R.colors.subHeading));
  }
}