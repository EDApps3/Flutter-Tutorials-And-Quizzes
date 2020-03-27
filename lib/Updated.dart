import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_SubTitle.dart';
import '_Comp_Courses/Cmp_Title.dart';

class UpdatesUI extends StatefulWidget {
  @override
  UpdatesState createState() => new UpdatesState();
}

class UpdatesState extends State<UpdatesUI> {
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
    audioCache.play('Music/Tap.mp3');
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[
          Divider(color:Colors.black,),

          CmpTitle(Title:"Improvement:",),
          CmpSubTitle(SubTitle:"-Sound Mute Added\n-Bug Fix",),

          SizedBox(height:7,),

          CmpTitle(Title:"Contents:",),
          CmpSubTitle(SubTitle:"-Advance PDF Viewer Asset",),
          CmpSubTitle(SubTitle:"-Advance PDF Viewer Url",),
          CmpSubTitle(SubTitle:"-Google NavBar",),
          CmpSubTitle(SubTitle:"-Clippy Triangle",),
          CmpSubTitle(SubTitle:"-Clippy Chevron",),
          CmpSubTitle(SubTitle:"-Clippy Arc",),
          CmpSubTitle(SubTitle:"-Clippy Diagonal",),
          CmpSubTitle(SubTitle:"-Clippy Bevel",),
          CmpSubTitle(SubTitle:"-Clippy ButtCheek",),
          CmpSubTitle(SubTitle:"-Water Drop",),


          SizedBox(height:7,),

          //CmpTitle(Title:"Quizzes:",),
          //CmpSubTitle(SubTitle:"-Text Quizz",),

          SizedBox(height:10,),

          Text(
              "Feel Free To Contact Us At edapps.contact@gmail.com For Any Suggestions Or Any Error,Thank You.",
            style:TextStyle(
              color:Colors.indigo,
            ),
          ),

          SizedBox(height:10,),
          Divider(color:Colors.black,),


        ],
      ),
    );
  }






}



