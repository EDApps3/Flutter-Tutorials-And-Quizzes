import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'SettingPage.dart';

class RatingUI extends StatefulWidget {
  @override
  RatingUIState createState() => new RatingUIState();
}

class RatingUIState extends State<RatingUI> {
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
      color: Colors.yellow,
      child:
      ListTile (
        leading:new Icon(Icons.rate_review),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              new Icon(Icons.star),
              new Icon(Icons.star),
              new Icon(Icons.star),
              new Icon(Icons.star),
              new Icon(Icons.star),
            ],
          ),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text (
            "Rate Us 5 Stars So We Can Keep Going And Upload New Contents,Codes And Quizzes",
            style: TextStyle(
              fontFamily: "PT Mono",
            ),
          ),
        ),
        onTap:_launchUrl,
      ),
     ),
    );
  }


  _launchUrl() async{
    const url="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }
  }



}



