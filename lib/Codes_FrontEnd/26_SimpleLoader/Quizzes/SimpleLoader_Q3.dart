import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'SimpleLoader_GenerateQuizzes.dart';

String Result="";
Color TxtClr;

String TxtSol="Answer Is:\n\n"
    "CircularProgressIndicator(\n"
    " backgroundColor:\n"
    "  Colors.blue,\n"
    " valueColor:\n"
    "  AlwaysStoppedAnimation<Color>(\n"
    "   Colors.indingo\n"
    " ),\n"
    "),\n";


TextEditingController T1=new TextEditingController();
TextEditingController T2=new TextEditingController();
TextEditingController T3=new TextEditingController();


typedef void OnError(Exception exception);

class SimpleLoaderQ3 extends StatefulWidget {
  @override
  _SimpleLoaderQ3State createState() => new _SimpleLoaderQ3State();
}

class _SimpleLoaderQ3State extends State<SimpleLoaderQ3> {
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
                        Generate_SimpleLoader_Quiz(context);
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
      home: new Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: (){
                PlayTapSound();
              },
            ),
            title: Text("Loader Quizz"),
          ),
          body:
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Text(
                      "Fill The Missing Fields To Create A Linear Progress Indicator Having Bg Color blue,Active Value Color indigo",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PT Mono"
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "import 'package:flutter/material.dart';\n\n"

                      "void main(){\n"
                      " runApp(Quizz());\n"
                      "}\n\n"

                      "class Quizz extends StatelessWidget{\n\n"
                      " @override\n"
                      " Widget build(BuildContext context) {\n"
                      "  return MaterialApp(\n"
                      "   debugShowCheckedModeBanner:false,\n"
                      "   title:'Simple Loader',\n"
                      "   home: new Scaffold(\n"
                      "   appBar: AppBar(\n"
                      "    title:Text('Simple Loader'),\n"
                      "   ),\n"
                      "   body:\n"
                      "    Center(\n"
                      "     child:\n"


                      ,
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 76,),
                        Container(
                          width:200,
                          child: TextField(
                            controller: T1,
                            autofocus: true,
                            maxLength:23,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text("("),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 80,),
                        Container(
                          width:150,
                          child: TextField(
                            controller: T2,
                            maxLength:15,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(":Colors.blue,"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 80,),
                        Container(
                          width:100,
                          child: TextField(
                            controller: T3,
                            maxLength:10,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(":"),
                      ],
                    ),

                    Text(
                      " AlwaysStoppedAnimation<Color>(\n"
                      "  Colors.indigo\n"
                      " ),\n"
                      "),\n"
                      "),\n"
                      "),\n"
                      " );\n"
                      "}\n"
                      "}"
                          ,
                    ),






                    SizedBox(height: 15,),
                    SizedBox(
                      width: double.infinity,
                      child:RaisedButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "Check My Answer",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: (){

                          if(T1.text.trim()=="CircularProgressIndicator" && T2.text.trim()=="backgroundColor" && T3.text.trim()=="valueColor"  ){
                            TxtClr=Colors.green;
                            PlayWinSound();
                            Result="Correct Answer";
                          }
                          else{
                            TxtClr=Colors.red;
                            PlayLoseSound();
                            Result="Wrong Answer";
                          }
                          T1.text="";
                          T2.text="";
                          T3.text="";
                          testAlert(context);
                        },
                      ),
                    )

                  ],
                ),
              )
            ],
          )
      ),
    );
  }

}



