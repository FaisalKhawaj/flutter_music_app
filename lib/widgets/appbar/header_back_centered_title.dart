
import 'package:flutter/material.dart';
import '../../../resources/resources.dart';

class HeaderBackCenteredTitle extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback handleBack;
  const HeaderBackCenteredTitle({super.key,required this.title, required this.handleBack});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.red,
        backgroundColor:R.colors.screenBg ,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading:IconButton(onPressed: handleBack, icon: Icon(Icons.chevron_left,size: 40, color: R.colors.headerTitle,)) ,
        title: Text(title,style: R.textStyle.HeaderTitle(),)
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(70);
}
