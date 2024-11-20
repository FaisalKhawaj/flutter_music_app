import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape:  Border(
        bottom: BorderSide(
          width: 1,
          color: R.colors.appBarBottomBorder,
        ),
      ),
      toolbarHeight: 100,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
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
            onPressed: () {},
            style: IconButton.styleFrom(
              side: const BorderSide(width: 1, color: Color(0xFFABABAB)),
            ),
            icon: const Icon(
              Icons.play_arrow,
              color: Color(0xFFEA6D11),
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'What do you feel like today?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    color: Color(0xFFACACAC),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xFF1f1f1f),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
