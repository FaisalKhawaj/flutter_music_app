import 'package:flutter/material.dart';
import '../resources/resources.dart';

class AppTextStyle {

  TextStyle HeaderTitleText() {
    return TextStyle(
      color: R.colors.headerTitle,
    );
  }

  TextStyle ShufflePlayText(){
    return TextStyle(
        color: R.colors.primaryButtonBg,
        fontSize: 18,
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold
    );
  }

  TextStyle HeaderTitle(){
    return TextStyle(
      color: R.colors.headerTitle,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle bottomTabLabelText(){
    return const TextStyle(
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500
    );
  }

  TextStyle popularCardTitle(){
    return TextStyle(
      color: R.colors.headerTitle,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle popuplarCardSubtitle(){
    return TextStyle(
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        color:R.colors.subHeading
    );
  }

  TextStyle rowTitleHeading(){
    return TextStyle(
        color: R.colors.headerTitle,
        fontSize: 18,
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold
    );
  }

  TextStyle rowViewAllText(){
    return
      TextStyle(
          color:  R.colors.viewAllButton,
          fontWeight: FontWeight.w500,
          fontFamily: 'Inter',
          fontSize: 17
      );
  }


}
