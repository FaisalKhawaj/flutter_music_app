import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // surfaceTintColor:R.themeProvider.colors.screenBg ,
      scrolledUnderElevation: 0,
      shadowColor: R.themeProvider.colors.screenBg,
      elevation: 0,
      shape:  Border(
        bottom: BorderSide(
          width: 1,
          color: R.themeProvider.colors.appBarBottomBorder,
        ),
      ),
      toolbarHeight: 100,
      actions: [
        IconButton(
          onPressed: () {},
          icon:  Icon(
            Icons.settings,
            color: R.themeProvider.colors.headerTitle
          ),
        )
      ],
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {

            },
            style: IconButton.styleFrom(
              side: const BorderSide(width: 1, color: Color(0xFFABABAB)),
            ),
            icon: const Icon(
              Icons.play_arrow,
              color: Color(0xFFEA6D11),
              size: 30,
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style:R.textStyle.rowTitleHeading(),
                ),
                Text(
                  'What do you feel like today?',
                  style:R.textStyle.popuplarCardSubtitle(),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: R.themeProvider.colors.screenBg,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
