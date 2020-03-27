import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';

import '../../0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import '_Layouts_GenerateQuizzes.dart';

String Result="";
String TxtSol="";
Color TxtClr =Colors.black;


enum ClrVal {
  A1,
  A2
}

class LayoutQ1 extends StatefulWidget {
  LayoutQ1({Key key}) : super(key: key);
  @override
  _LayoutQ1State createState() => _LayoutQ1State();
}

class _LayoutQ1State extends State<LayoutQ1> {
  ClrVal _character=null;

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

  void PlayWinSound() async{
    audioCache.play('Music/Success.mp3');
  }

  void PlayLoseSound() async{
    audioCache.play('Music/Wrong.mp3');
  }

  void testAlert(BuildContext context) {
    var alert = AlertDialog(
        title:Text(
          Result,
          style: TextStyle(
            color: TxtClr,
            fontFamily:"Lobster",
          ),
        ),
        content:
        Container(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(color: Colors.black,),
              Text(
                TxtSol,
                style: TextStyle(
                  color: Colors.cyan,
                  fontFamily:"Lora",
                ),
              ),
              SizedBox(height: 27,),
              SizedBox(
                  width: double.infinity,
                  child:
                  RaisedButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Great! Load Another Quizz ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: (){
                      PlayTapSound();
                      Navigator.of(context,rootNavigator: true).pop('dialog');
                      if(RandQuizz==false){
                        Generate_Layout_Quiz(context);
                      }
                      else{
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>cl_RandomQuizz()));
                      }
                    },
                  )
              ),
              SizedBox(height: 7,),
              SizedBox(
                  width: double.infinity,
                  child:
                  RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Thanks! Get Me Back To Menu ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: (){
                      PlayTapSound();
                      Navigator.of(context,rootNavigator: true).pop('dialog');
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
                    },
                  )
              ),
            ],
          ),

        )

    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Into Quizz",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              PlayTapSound();
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
            },
          ),
          title:Text("Layout Quizz"),
        ),
        body:Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30,),
              Text(
                "In Row Layout,Main Axis Used To Align:",
              ),
              RadioListTile<ClrVal>(
                title: const Text('Vertically'),
                value: ClrVal.A1,
                groupValue: _character,
                onChanged: (ClrVal value) {
                  setState(() {
                    _character = value;
                    PlayLoseSound();
                    Result="Wrong Answer";
                    TxtClr=Colors.red;
                    TxtSol="In Row Layout,Main Axis Used To Align Horizontally";
                    testAlert(context);
                    _character=null;
                  });
                },
              ),
              RadioListTile<ClrVal>(
                title: const Text('Horizontally'),
                value: ClrVal.A2,
                groupValue: _character,
                onChanged: (ClrVal value) {
                  setState(() {
                    _character = value;
                    PlayWinSound();
                    Result="Correct Answer";
                    TxtClr=Colors.green;
                    TxtSol="In Row Layout,Main Axis Used To Align Horizontally";
                    testAlert(context);
                    _character=null;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );

  }
}
