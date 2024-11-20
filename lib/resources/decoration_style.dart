
import 'package:flutter/material.dart';
import '../resources/resources.dart';

class AppDecorations{

  BoxDecoration popularCardDecoration(){
    return BoxDecoration(border:
    Border.all(width: 1, color: R.colors.cardBorder),
      color: R.colors.cardBg,
      borderRadius: BorderRadius.circular(12),
    );
  }




}