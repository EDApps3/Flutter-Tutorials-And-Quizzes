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

          Container(
            height:200,
            child:ListView(
              children: <Widget>[
                CmpTitle(Title:"Improvement:",),
                CmpSubTitle(SubTitle:"-Bug Fix",),
                CmpSubTitle(SubTitle:"-Option To Disable Update Popup",),
                CmpSubTitle(SubTitle:"-Codes PlayGround:\n -ScrollFix For Some Device\n -Theme Change\n",),

                SizedBox(height:7,),

                CmpTitle(Title:"Contents:",),
                CmpSubTitle(SubTitle:"-GestureDetector Body DoubleTap",),
                CmpSubTitle(SubTitle:"-GridView.count",),
                CmpSubTitle(SubTitle:"-GridView.builder",),
                CmpSubTitle(SubTitle:"-GridView.custom",),
                CmpSubTitle(SubTitle:"-GridView.extent",),
                CmpSubTitle(SubTitle:"-Curved Navigation Bar",),
                CmpSubTitle(SubTitle:"-Simple Floating Action Button",),
                CmpSubTitle(SubTitle:"-Animated Floating Action Button",),
                CmpSubTitle(SubTitle:"-Circular Floating Action Button",),
                CmpSubTitle(SubTitle:"-Tooltip",),
                CmpSubTitle(SubTitle:"-Back Detector",),
                CmpSubTitle(SubTitle:"-ClipOval",),
                CmpSubTitle(SubTitle:"-ClipRRect",),
                CmpSubTitle(SubTitle:"-NavBar Rail",),
                CmpSubTitle(SubTitle:"-Fancy Bottom NavBar",),
                CmpSubTitle(SubTitle:"-Color Picker",),
                CmpSubTitle(SubTitle:"-Like Button",),
                CmpSubTitle(SubTitle:"-Sliver AppBar",),
                CmpSubTitle(SubTitle:"-Advanced Animation",),
                CmpSubTitle(SubTitle:"-Bounce Sound Button",),

              ],
            ),
          ),


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