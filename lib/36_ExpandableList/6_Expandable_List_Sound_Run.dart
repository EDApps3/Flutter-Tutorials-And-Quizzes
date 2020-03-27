import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

typedef void OnError(Exception exception);

void main() => runApp(ExpandableListTapSoundRun());

class ExpandableListTapSoundRun extends StatefulWidget {
  @override
  _ExpLstSoundState createState() => new _ExpLstSoundState();
}

class _ExpLstSoundState extends State<ExpandableListTapSoundRun> {
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

  bool _ETvalue = false;


  void _onETChanged(bool value) {
    setState (() {
      _ETvalue = value;

      if(_ETvalue==false){
        PlayTapSound();
      }
      else{
        PlayTapSound();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expandable List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar:AppBar(
          title:Text("Expandable List Sound"),
        ),
        body:
        Column(
          children:<Widget>[
            SizedBox(height: 20,),
            Text(
              "Select Wanted Option!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
              ),
            ),
            ExpansionTile (
              onExpansionChanged:_onETChanged,
              title: Text ("Account"),
              children: <Widget>[
                Divider(color: Colors.grey,),
                ListTile (
                  title: Text ("SignUp"),
                  subtitle: Text ("Where You Can Register An Account"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

