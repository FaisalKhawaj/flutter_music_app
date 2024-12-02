
import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/settings/widget/setting_row_button.dart';
import 'package:flutter_music_app/src/settings/widget/subscribe_card.dart';
import 'package:flutter_music_app/utils/svg_constants.dart';
import 'package:flutter_music_app/widgets/appbar/header_back_centered_title.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_music_app/provider/theme_provider.dart';

import '../../../resources/resources.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  void handleBack(){

  }

  void handleClickLanguage(){

  }

  void handleClickShare(){
    try{
      Share.share('https://picsum.photos/id/1/200/300', subject: 'Check out this image!');

    }catch(e){
      print('Error $e');
    }

  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    void toggleTheme(){
      themeProvider.toggleTheme();
    }


    return Scaffold(
      backgroundColor: R.themeProvider.colors.screenBg,
      appBar:HeaderBackCenteredTitle(title: 'Setting',),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Get Pro Card
            SubscribeCard(),
            // Get Pro Card Ends

            SizedBox(height: 10,),

           SettingRowButton(buttonTitle: 'Language', icon: Icons.language, handleClickButton: toggleTheme),
            SettingRowButton(buttonTitle: 'Rate us', icon: Icons.star_border, handleClickButton: handleClickLanguage),
            SettingRowButton(buttonTitle: 'Share', icon: Icons.share, handleClickButton: handleClickShare),
            SettingRowButton(buttonTitle: 'More Apps', icon: Icons.more_outlined, handleClickButton: handleClickLanguage)


          ],
        )
      ),

    );
  }
}
