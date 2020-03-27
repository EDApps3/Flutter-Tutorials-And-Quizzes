import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import 'SettingPage.dart';
import 'UsersCodesPage.dart';

class CodesByUsersUI extends StatefulWidget {
  @override
  CodesByUsersUIState createState() => new CodesByUsersUIState();
}

class CodesByUsersUIState extends State<CodesByUsersUI> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();
  }

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    if(AppSoundRetrieve=="NotMuted") {
      audioCache.play('Music/Tap.mp3');
    }
  }

  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius:BorderRadius.circular(30.0),
    child:
    Card(
      color: Colors.cyan,
      child:
      ListTile (
        leading:new Icon(Icons.code),
        title: Text (
          "Codes By Users",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Raleway",
          ),
        ),
        subtitle: Text (
          "Discover Users Code!",
          style: TextStyle(
            fontFamily: "PT Mono",
          ),
        ),
        onTap: (){
          PlayTapSound();
          Navigator.push(context,MaterialPageRoute(builder:(context)=>UsersCodePage()));
        },
      ),
    ),
    );
  }
}



