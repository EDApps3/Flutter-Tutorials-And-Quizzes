import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

typedef void OnError(Exception exception);

void main() {
  runApp(TapSoundBtnRun());
}

class TapSoundBtnRun extends StatefulWidget {
  @override
  _TapSoundBtnState createState() => new _TapSoundBtnState();
}

class _TapSoundBtnState extends State<TapSoundBtnRun> {
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


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:new Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.lightBlueAccent,
          title: Text('Audio'),
        ),
        body:
        Center(
            child:
            RaisedButton(
              child:Text("Click Me"),
              onPressed:(){
                audioCache.play('Music/Tap.mp3');
              },
            )
        ),
      ),
    );
  }
}