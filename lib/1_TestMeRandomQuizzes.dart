import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';

import 'SettingPage.dart';
import 'SoonAlert.dart';
import 'main.dart';
import 'AppLang.dart';

class TestMeRandomQuizzesUI extends StatefulWidget {
  @override
  TestMeRandomQuizzesUIState createState() => new TestMeRandomQuizzesUIState();
}

class TestMeRandomQuizzesUIState extends State<TestMeRandomQuizzesUI> {
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
    if(SoundResult=="NotMuted") {
      audioCache.play('Music/Tap.mp3');
    }
  }

  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius:BorderRadius.circular(30.0),
    child:
      Card(
      color: (ThemeResult=="Light")?Colors.lightGreen:CardBg,
      child:
      ListTile (
        leading: Image.asset("Images/Quizz.png"),
        title: Text (
          TestMeTxtTrans,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Raleway",
          ),
        ),
        subtitle: Text (
          RunRandomQuizzesTxtTrans,
          style: TextStyle(
            fontFamily: "PT Mono",
            color:Colors.white,
          ),
        ),
        onTap: (){
          PlayTapSound();
          Navigator.push(context,MaterialPageRoute(builder:(context)=>cl_RandomQuizz()));
          RandQuizz=true;
        },
      ),
      ),
    );
  }
}



