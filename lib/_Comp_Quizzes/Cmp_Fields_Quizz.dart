import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import '../SettingPage.dart';


class Cmp_Fields_Quizz extends StatefulWidget {

  final String AppBarTitle,Question,SolutionTxt,GoRoute;
  final TextEditingController Ans1Txt,Ans2Txt,Ans3Txt,Ans4Txt,Ans5Txt,Ans6Txt,Ans7Txt;
  final String CorrectAns1,CorrectAns2,CorrectAns3,CorrectAns4,CorrectAns5,CorrectAns6,CorrectAns7;
  var QuizzList;

  Cmp_Fields_Quizz({
    @required this.AppBarTitle,
    @required this.Question,
    @required this.SolutionTxt,
    @required this.GoRoute,
    @required this.Ans1Txt,
    @required this.Ans2Txt,
    @required this.Ans3Txt,
    @required this.Ans4Txt,
    @required this.Ans5Txt,
    @required this.Ans6Txt,
    @required this.Ans7Txt,
    @required this.CorrectAns1,
    @required this.CorrectAns2,
    @required this.CorrectAns3,
    @required this.CorrectAns4,
    @required this.CorrectAns5,
    @required this.CorrectAns6,
    @required this.CorrectAns7,
    @required this.QuizzList,
  });

  _Cmp_Field_Quizz_State createState() => _Cmp_Field_Quizz_State();
}

class _Cmp_Field_Quizz_State extends State<Cmp_Fields_Quizz> {
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
    String Result;
    Color TxtClr;


    if(widget.CorrectAns2=="NotSet"){
      widget.Ans2Txt.text="NotSet";
    }

    if(widget.CorrectAns3=="NotSet"){
      widget.Ans3Txt.text="NotSet";
    }

    if(widget.CorrectAns4=="NotSet"){
      widget.Ans4Txt.text="NotSet";
    }

    if(widget.CorrectAns5=="NotSet"){
      widget.Ans5Txt.text="NotSet";
    }

    if(widget.CorrectAns6=="NotSet"){
      widget.Ans6Txt.text="NotSet";
    }

    if(widget.CorrectAns7=="NotSet"){
      widget.Ans7Txt.text="NotSet";
    }


    if(
        widget.Ans1Txt.text==widget.CorrectAns1 &&
        widget.Ans2Txt.text==widget.CorrectAns2 &&
        widget.Ans3Txt.text==widget.CorrectAns3 &&
        widget.Ans4Txt.text==widget.CorrectAns4 &&
        widget.Ans5Txt.text==widget.CorrectAns5 &&
        widget.Ans6Txt.text==widget.CorrectAns6 &&
        widget.Ans7Txt.text==widget.CorrectAns7
    ){
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
          height: 440,
          child: ListView(
            children: <Widget>[
              Divider(color: Colors.black,),
              Text(
                "Answer Is:",
                style: TextStyle(
                  fontSize:16,
                  color: Colors.teal,
                  fontFamily:"Lora",
                ),
              ),
              Text(
                widget.SolutionTxt,
                style: TextStyle(
                  fontSize:15,
                  color: Colors.cyan,
                  fontFamily:"Lora",
                ),
              ),
              SizedBox(height: 20,),
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

    widget.Ans1Txt.text="";
    widget.Ans2Txt.text="";
    widget.Ans3Txt.text="";
    widget.Ans4Txt.text="";
    widget.Ans5Txt.text="";
    widget.Ans6Txt.text="";
    widget.Ans7Txt.text="";
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
          actions: <Widget>[
             Padding(
               padding: const EdgeInsets.all(7.0),
               child: ClipOval(
                child:
                Container(
                  color:Colors.green,
                  child:IconButton(
                    icon: Icon(Icons.check,color:Colors.white,),
                    color: Colors.green,
                    onPressed: () {
                      CheckAnswer(context);
                    },
                  ),
                ),
               ),
             ),
          ],
        ),
        body:
         ListView(
            scrollDirection:Axis.vertical,
            children: <Widget>[
              SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  widget.Question,
                  style:TextStyle(
                    fontSize:17,
                    color:Colors.teal,
                    fontWeight:FontWeight.bold,
                  )
                ),
              ),
              SizedBox(height:8,),

              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child:Row(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[


                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          mainAxisAlignment:MainAxisAlignment.start,
                          children: <Widget>[
                            for(var item in widget.QuizzList)
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(child:item),
                              ),
                          ],
                        )


                  ],
                ),
              )






            ],
          ),
        ),
    );

  }
}
