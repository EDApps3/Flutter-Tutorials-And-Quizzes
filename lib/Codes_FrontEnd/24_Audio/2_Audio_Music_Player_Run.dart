import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

typedef void OnError(Exception exception);

void main() {
  runApp(AudioRun());
}

String CurPlaying="Currently Playing:None";
String DurMaxMus="00:00:00";
String DurActiveMus="00:00:00";

class AudioRun extends StatefulWidget {
  @override
  _AudioRunState createState() => new _AudioRunState();
}

class _AudioRunState extends State<AudioRun> {
  Duration _durationM = new Duration();
  Duration _positionM = new Duration();

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

    advancedPlayer.durationHandler = (d) => setState(() {
      _durationM = d;

      var MaxM = Duration(seconds:_durationM.inSeconds.toInt());
      DurMaxMus=_printDuration(MaxM);
    });

    advancedPlayer.positionHandler = (p) => setState(() {
      _positionM = p;

      var ActiveM = Duration(seconds:_positionM.inSeconds.toInt());
      DurActiveMus=_printDuration(ActiveM);
    });
  }

  
  void seekToSecond(int second){
    Duration newDuration = Duration(seconds: second);
    advancedPlayer.seek(newDuration);

  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:new Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 20,
          color:Colors.lightBlueAccent,
          child:
           Padding(
             padding: const EdgeInsets.all(14.0),
             child: Container(
               height:85,
               child:
                Column(
                 children: <Widget>[
                   Text("$CurPlaying"),
                   Row(
                     children: <Widget>[
                       Text("$DurActiveMus"),
                       Slider(
                           activeColor: Colors.white,
                           inactiveColor: Colors.white70,

                           value: _positionM.inSeconds.toDouble(),
                           min: 0.0,
                           max: _durationM.inSeconds.toDouble(),
                           onChanged: (double value) {
                             setState(() {
                               seekToSecond(value.toInt());
                               value = value;
                             });}),
                       Text("$DurMaxMus"),
                     ],
                   )
                 ],
                ),

             ),
           ),

        ),
        appBar: AppBar(
          backgroundColor:Colors.lightBlueAccent,
          title: Text('Audio'),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  child:
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width:120,
                              height:120,
                              child:CircleAvatar(
                                radius:40,
                                backgroundImage:ExactAssetImage("Images/Cover_Unstoppable.jpg"),
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("  Ustoppable"),
                                Text("  Sia"),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon:new Icon(Icons.play_circle_filled),
                                      onPressed: (){
                                        CurPlaying="Currently Playing:Unstoppable-Sia";
                                        audioCache.play('Music/Unstoppable.mp3');
                                      },
                                    ),
                                    IconButton(
                                      icon:new Icon(Icons.pause_circle_filled),
                                      onPressed: (){
                                        advancedPlayer.pause();
                                      },
                                    ),
                                    IconButton(
                                      icon:new Icon(Icons.stop),
                                      onPressed: (){
                                        CurPlaying="Currently Playing:None";
                                        advancedPlayer.stop();
                                      },
                                    ),
                                  ],
                                ),

                              ],
                            )
                          ],
                        ),


                      ],

                    ),
                  ),
                ),
                Card(
                  child:
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width:120,
                              height:120,
                              child:CircleAvatar(
                                radius:40,
                                backgroundImage:ExactAssetImage("Images/Cover_Despacito.jpg"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("  Despacito"),
                                Text("  Luis Fonsi ft. yanki"),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon:new Icon(Icons.play_circle_filled),
                                      onPressed: (){
                                        CurPlaying="Currently Playing:Despacito-Luis Fonsi ft Yanki";
                                        audioCache.play('Music/Despacito.mp3');



                                      },
                                    ),
                                    IconButton(
                                      icon:new Icon(Icons.pause_circle_filled),
                                      onPressed: (){
                                        advancedPlayer.pause();
                                      },
                                    ),
                                    IconButton(
                                      icon:new Icon(Icons.stop),
                                      onPressed: (){
                                        CurPlaying="Currently Playing:None";
                                        advancedPlayer.stop();
                                      },
                                    ),
                                  ],
                                ),


                              ],
                            )
                          ],
                        ),


                      ],

                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}