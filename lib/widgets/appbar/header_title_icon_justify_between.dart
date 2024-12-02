import 'package:flutter/material.dart';
import '../../../resources/resources.dart';


class HeaderTitleIconJustifyBetween extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final VoidCallback handleButtonClick;

  const HeaderTitleIconJustifyBetween({super.key,required this.title,required this.handleButtonClick});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      backgroundColor: R.themeProvider.colors.screenBg,
      title:Text(title,style: R.textStyle.HeaderTitle(),) ,
      // leading: ,
      actions: [
        IconButton(onPressed:handleButtonClick, icon: Icon(Icons.settings,color: R.themeProvider.colors.headerTitle,))
      ],
    );
  }

  @override
  Size get preferredSize=>const Size.fromHeight(70);
}
