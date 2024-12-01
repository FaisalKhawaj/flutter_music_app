import 'package:flutter/material.dart';
import 'package:flutter_music_app/utils/svg_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/resources.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Bottomsheetaudioplayer extends StatefulWidget {
  const Bottomsheetaudioplayer({super.key});

  @override
  State<Bottomsheetaudioplayer> createState() => _BottomsheetaudioplayerState();
}

class _BottomsheetaudioplayerState extends State<Bottomsheetaudioplayer> {
  late AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    super.initState();

    // Create the audio player.
    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);

    // Start the player as soon as the app is displayed.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSource(AssetSource('ambient_c_motion.mp3'));
      await player.resume();
    });
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double responsiveImageHeight = screenHeight * 0.4;
    return Scaffold(
      backgroundColor: R.colors.screenBg,
      appBar: AppBar(
        backgroundColor: R.colors.screenBg,
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset(SvgConstant.arrowDown,)),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined,color: R.colors.headerTitle,))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Music Image Full Screen Icon
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child:
            Stack(children: [
              Positioned(child: ClipRRect(
                child: Image.network("https://images-na.ssl-images-amazon.com/images/M/MV5BMTM4NDcyNDMzMF5BMl5BanBnXkFtZTgwOTI0MTI2MDE@._V1_SY1000_CR0,0,1495,1000_AL_.jpg",width: double.infinity,height: responsiveImageHeight,fit: BoxFit.cover,),
              )),
              Positioned( top: 15 ,right: 20, child:
              IconButton(color: R.colors.screenBg, style: IconButton.styleFrom(backgroundColor: R.colors.maximizeButton), onPressed: (){}, icon: Icon(size: 30, Icons.fullscreen,color: R.colors.headerTitle,))
              )
            ],),
          ),
          // Music Image Full Screen Icon
          Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Don't blame me",style: R.textStyle.rowTitleHeading().copyWith(fontSize: 22, fontWeight: FontWeight.w500),),
                SizedBox(height: 4,),
                Text('Taylor Swift',style: R.textStyle.popuplarCardSubtitle(),),

// Play Buttons

              SizedBox(height: 32,),
              Container(
                height: screenHeight*0.2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    IconButton(onPressed: (){}, icon: Icon(Icons.shuffle,size: 35,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,size: 35, color: R.colors.headerTitle),),
                    IconButton(onPressed: (){},
                        iconSize: 40,
                        style: IconButton.styleFrom(
                          backgroundColor: R.colors.primaryButtonBg,
                        ),
                        icon: Icon(Icons.play_arrow,color: R.colors.headerTitle,)),

                    IconButton(onPressed: (){}, icon: Icon(Icons.skip_next, size: 35,color: R.colors.headerTitle,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.repeat, size: 35,color: R.colors.headerTitle,))

                  ],
                ),
              ),

// Play Buttons


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(color: R.colors.screenBg, style: IconButton.styleFrom(backgroundColor: R.colors.maximizeButton), onPressed: (){}, icon: Icon(size: 30, Icons.music_note,color: R.colors.headerTitle,)),
                    IconButton(color: R.colors.screenBg, style: IconButton.styleFrom(backgroundColor: R.colors.maximizeButton), onPressed: (){}, icon: Icon(size: 30, Icons.favorite_outline,color: R.colors.headerTitle,)),
                    IconButton(color: R.colors.screenBg, style: IconButton.styleFrom(backgroundColor: R.colors.maximizeButton), onPressed: (){}, icon: Icon(size: 30, Icons.sensors,color: R.colors.headerTitle,)),
                  ],
                ),
              ],
            ),
          )



        ],
      ),
    );
  }
}
