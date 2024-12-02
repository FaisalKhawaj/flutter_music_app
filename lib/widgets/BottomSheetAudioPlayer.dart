import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_music_app/utils/helper.dart';
import 'package:flutter_music_app/utils/music.dart';
import 'package:flutter_music_app/utils/svg_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rxdart/rxdart.dart';

import '../../../resources/resources.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter_music_app/src/search/search_music.dart';

class PositionData {
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;

  PositionData(this.position, this.bufferedPosition, this.duration);
}

class Bottomsheetaudioplayer extends StatefulWidget {
  final SearchedItem item;

   Bottomsheetaudioplayer({super.key,required this.item});
  @override
  _BottomsheetaudioplayerState createState() => _BottomsheetaudioplayerState();

// State<Bottomsheetaudioplayer> createState() => _BottomsheetaudioplayerState();
}

class _BottomsheetaudioplayerState extends State<Bottomsheetaudioplayer> {

  final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    // Use initial values from player
    _init();

  }

  Future<void> _init() async {
    // Inform the operating system of our app's audio attributes etc.
    // We pick a reasonable default for an app that plays speech.
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());

    // Listen to errors during playback.
    _player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
          print('A stream error occurred: $e');
        });

    // Listen for changes in the playing state
    _player.playingStream.listen((playing) {
      setState(() {
        // Trigger a rebuild when the playing state changes
      });
    });


    // Try to load audio from a source and catch any errors.
    try {
      // AAC example: https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.aac
      await _player.setAudioSource(AudioSource.uri(Uri.parse(
          "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3")));
    } on PlayerException catch (e) {
      print("Error loading audio source: $e");
    }
  }


  @override
  void dispose() {
    // ambiguate(WidgetsBinding.instance)!.removeObserver(this);
    // Release decoders and buffers back to the operating system making them
    // available for other apps to use.
    _player.dispose();
    super.dispose();
  }

  /// Collects the data useful for displaying in a seek bar, using a handy
  /// feature of rx_dart to combine the 3 streams of interest into one.
  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _player.positionStream,
          _player.bufferedPositionStream,
          _player.durationStream,
              (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // Release the player's resources when not in use. We use "stop" so that
      // if the app resumes later, it will still remember what position to
      // resume from.
      _player.stop();
    }
  }

  void _togglePlayback() {
    if (_player.playing) {
      _player.pause();
    } else {
      _player.play();
    }
  }

  void _seekBackward() {
    final newPosition = _player.position - const Duration(seconds: 10);
    _player.seek(newPosition > Duration.zero ? newPosition : Duration.zero);
  }

  void _seekForward() {
    final newPosition = _player.position + const Duration(seconds: 10);
    if (newPosition < (_player.duration ?? Duration.zero)) {
      _player.seek(newPosition);
    }
  }



  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double responsiveImageHeight = screenHeight * 0.4;
    return Scaffold(
      backgroundColor: R.themeProvider.colors.screenBg,
      appBar: AppBar(
        backgroundColor: R.themeProvider.colors.screenBg,
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset(SvgConstant.arrowDown,color: R.themeProvider.colors.headerTitle,)),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined,color: R.themeProvider.colors.headerTitle,))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Music Image Full Screen Icon
          Padding(padding: const EdgeInsets.symmetric(vertical: 10),
            child:
            Stack(children: [
              Positioned(child: ClipRRect(
                child: Image.network(widget.item.image,width: double.infinity,height: responsiveImageHeight,fit: BoxFit.cover,),
              )),
              Positioned( top: 15 ,right: 20, child:
              IconButton(color: R.themeProvider.colors.screenBg, style: IconButton.styleFrom(backgroundColor: R.themeProvider.colors.maximizeButton), onPressed: (){}, icon: Icon(size: 30, Icons.fullscreen,color: R.themeProvider.colors.headerTitle,))
              )
            ],),
          ),
          // Music Image Full Screen Icon

          Padding(padding:const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.item.title,style: R.textStyle.rowTitleHeading().copyWith(fontSize: 22, fontWeight: FontWeight.w500),),
                SizedBox(height: 4,),
                Text('Taylor Swift',style: R.textStyle.popuplarCardSubtitle(),),

// Play Buttons

              const SizedBox(height: 15,),

                StreamBuilder<PositionData>(
                  stream: _positionDataStream,
                  builder: (context, snapshot) {
                    final positionData = snapshot.data;
                    final currentPosition = positionData?.position ?? Duration.zero;
                    final totalDuration = positionData?.duration ?? Duration.zero;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Slider(
                          value: positionData?.position.inSeconds.toDouble() ?? 0,
                          max: positionData?.duration.inSeconds.toDouble() ?? 1,
                          onChanged: (value) {
                            _player.seek(Duration(seconds: value.toInt()));
                          },
                          activeColor: R.themeProvider.colors.primaryButtonBg,
                          thumbColor: R.themeProvider.colors.primaryButtonBg,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(Helper.formatDuration(currentPosition),style: R.textStyle.popuplarCardSubtitle()),
                          Text(Helper.formatDuration(totalDuration),style: R.textStyle.popuplarCardSubtitle()),

                        ],
                        )
                      ],
                    );
                  },
                ),
                const SizedBox(height: 15,),
              Container(
                height: screenHeight*0.16,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    IconButton(onPressed: (){}, icon: Icon(Icons.shuffle,size: 35,)),
                    IconButton(onPressed: _seekBackward, icon: Icon(Icons.skip_previous,size: 35, color: R.themeProvider.colors.headerTitle),),
                    IconButton(onPressed: _togglePlayback,
                        iconSize: 40,
                        style: IconButton.styleFrom(
                          backgroundColor: R.themeProvider.colors.primaryButtonBg,
                        ),
                        icon: Icon(_player.playing ? Icons.pause : Icons.play_arrow,color: R.themeProvider.colors.screenBg,)),

                    IconButton(onPressed:_seekForward, icon: Icon(Icons.skip_next, size: 35,color: R.themeProvider.colors.headerTitle,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.repeat, size: 35,color: R.themeProvider.colors.headerTitle,))

                  ],
                ),
              ),

// Play Buttons


                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    IconButton( color: R.themeProvider.colors.screenBg, style: IconButton.styleFrom(backgroundColor: R.themeProvider.colors.maximizeButton), onPressed: (){}, icon: Icon(size: 30, Icons.music_note,color: R.themeProvider.colors.headerTitle,)),
                    IconButton(color: R.themeProvider.colors.screenBg, style: IconButton.styleFrom(backgroundColor: R.themeProvider.colors.maximizeButton), onPressed: (){}, icon: Icon(size: 30, Icons.favorite_outline,color: R.themeProvider.colors.headerTitle,)),
                    IconButton(color: R.themeProvider.colors.screenBg, style: IconButton.styleFrom(backgroundColor: R.themeProvider.colors.maximizeButton), onPressed: (){}, icon: Icon(size: 30, Icons.sensors,color: R.themeProvider.colors.headerTitle,)),
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


