
import 'package:flutter/material.dart';
import 'package:flutter_music_app/src/settings/widget/setting_row_button.dart';
import 'package:flutter_music_app/src/settings/widget/subscribe_card.dart';
import 'package:flutter_music_app/utils/svg_constants.dart';
import 'package:flutter_music_app/widgets/appbar/header_back_centered_title.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/resources.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  void handleBack(){

  }

  void handleClickLanguage(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:HeaderBackCenteredTitle(title: 'Setting', handleBack: handleBack),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Get Pro Card
            SubscribeCard(),
            // Get Pro Card Ends

            SizedBox(height: 10,),

        SettingRowButton(buttonTitle: 'Language', icon: Icons.language, handleClickButton: handleClickLanguage),
            SettingRowButton(buttonTitle: 'Rate us', icon: Icons.star_border, handleClickButton: handleClickLanguage),
            SettingRowButton(buttonTitle: 'Share', icon: Icons.share, handleClickButton: handleClickLanguage),
            SettingRowButton(buttonTitle: 'More Apps', icon: Icons.more_outlined, handleClickButton: handleClickLanguage)


          ],
        )
      ),

    );
  }
}
