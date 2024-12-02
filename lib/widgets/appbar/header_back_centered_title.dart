
import 'package:flutter/material.dart';
import '../../../resources/resources.dart';
import 'package:get/get.dart';

class HeaderBackCenteredTitle extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HeaderBackCenteredTitle({super.key,required this.title,});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
        backgroundColor:R.themeProvider.colors.screenBg ,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading:IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.chevron_left,size: 40, color: R.themeProvider.colors.headerTitle,)) ,
        title: Text(title,style: R.textStyle.HeaderTitle(),)
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(70);
}
