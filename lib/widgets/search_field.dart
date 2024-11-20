import 'package:flutter/material.dart';
import '../../../resources/resources.dart';


class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
        child:  TextField(
          style: R.inputStyle.searchInputTextStyle(),
          decoration: InputDecoration(
            fillColor: R.colors.inputBg,
            filled: true,contentPadding: EdgeInsets.zero,
            focusColor: R.colors.inputBg,
            hoverColor: R.colors.subHeading,
            hintStyle:  TextStyle(color: R.colors.subHeading),
            hintText: 'Search',
            labelStyle: TextStyle(color: R.colors.subHeading),
            border: R.inputStyle.searchInputBorderStyle(),
            focusedErrorBorder: R.inputStyle.searchInputFocusedBorderStyle(),
            focusedBorder: R.inputStyle.searchInputBorderStyle(),
            prefixIcon: Icon(Icons.search,color: R.colors.subHeading,),

          ),
        ),
      );
  }
}
