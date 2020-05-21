import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import '../SettingPage.dart';


enum Answers {
  A1,
  A2,
  A3,
  A4
}

var SelectedIndex;

class Cmp_Quizz_4Radio extends StatefulWidget {

  final String AppBarTitle,Question,Ans1Txt,Ans2Txt,Ans3Txt,Ans4Txt,SolutionTxt,GoRoute;
  final int CorrectIndex;

  Cmp_Quizz_4Radio({
    @required this.AppBarTitle,
    @required this.Question,
    @required this.Ans1Txt,
    @required this.Ans2Txt,
    @required this.Ans3Txt,
    @required this.Ans4Txt,
    @required this.SolutionTxt,
    @required this.CorrectIndex,
    @required this.GoRoute,
  });

  _Cmp_Quizz_4Radio_State createState() => _Cmp_Quizz_4Radio_State();
}

class _Cmp_Quizz_4Radio_State extends State<Cmp_Quizz_4Radio> {
  Answers _Ans=null;

  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();
    _Ans=null;
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

  void PlayWinSound() async{
    if(SoundResult=="NotMuted") {
      audioCache.play('Music/Success.mp3');
    }
  }

  void PlayLoseSound() async{
    if(SoundResult=="NotMuted") {
      audioCache.play('Music/Wrong.mp3');
    }
  }

  void CheckAnswer(BuildContext context) {

    var Result,TxtClr;

    if(SelectedIndex==widget.CorrectIndex){
      Result="Correct Answer";
      TxtClr=Colors.green;
      PlayWinSound();
    }
    else{
      Result="Wrong Answer";
      TxtClr=Colors.red;
      PlayLoseSound();
    }

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
                widget.SolutionTxt,
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
                        Navigator.of(context).pushReplacementNamed(widget.GoRoute);
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
      title:widget.AppBarTitle,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              PlayTapSound();
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
            },
          ),
          title:Text(widget.AppBarTitle),
        ),
        body:Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30,),
              Text(widget.Question,),

              RadioListTile<Answers>(
                title: Text(widget.Ans1Txt),
                value: Answers.A1,
                groupValue: _Ans,
                onChanged: (Answers value) {
                  setState(() {
                    SelectedIndex=1;
                    CheckAnswer(context);
                    _Ans = value;
                  });
                },
              ),

              RadioListTile<Answers>(
                title: Text(widget.Ans2Txt),
                value: Answers.A2,
                groupValue: _Ans,
                onChanged: (Answers value) {
                  setState(() {
                    SelectedIndex=2;
                    CheckAnswer(context);
                    _Ans = value;
                  });
                },
              ),

              RadioListTile<Answers>(
                title: Text(widget.Ans3Txt),
                value: Answers.A3,
                groupValue: _Ans,
                onChanged: (Answers value) {
                  setState(() {
                    SelectedIndex=3;
                    CheckAnswer(context);
                    _Ans = value;
                  });
                },
              ),

              RadioListTile<Answers>(
                title: Text(widget.Ans4Txt),
                value: Answers.A4,
                groupValue: _Ans,
                onChanged: (Answers value) {
                  setState(() {
                    SelectedIndex=4;
                    CheckAnswer(context);
                    _Ans = value;
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
