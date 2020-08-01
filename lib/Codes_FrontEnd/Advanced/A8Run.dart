import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(TapSoundBounceBtnRun());
}

class TapSoundBounceBtnRun extends StatefulWidget {
  @override
  _TapSoundBounceBtnState createState() => new _TapSoundBounceBtnState();
}

class _TapSoundBounceBtnState extends State<TapSoundBounceBtnRun> with TickerProviderStateMixin {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  AnimationController AC;

  @override
  void initState(){
    AC=AnimationController(
        vsync: this,
        duration: Duration(milliseconds:100),
      lowerBound:0.1,
      upperBound:0.2,
    )..addListener(() {
      setState(() {
      });
    });

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
          title: Text('Bounce Sound Button'),
        ),
        body:
        Center(
            child:
             GestureDetector(
               onTap:(){
                 AC.forward().whenComplete(() => AC.reverse());
                 audioCache.play('Music/Tap.mp3');
               },
               child:Transform.scale(
                 scale:1-AC.value,
                 child:ClipRRect(
                   borderRadius:BorderRadius.circular(30.0),
                   child:Container(
                     width:MediaQuery.of(context).size.width -40,
                     height:40,
                     color:Colors.teal,
                     child:Center(
                       child:Text(
                         "Click Me!",
                         style:TextStyle(
                           color:Colors.white,
                         ),
                       ),
                     ),
                   )
                 )
               ),
             )

        ),
      ),
    );
  }
}