import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'Toast_GenrateQuizzes.dart';

String Result="";
Color TxtClr;
String TxtSol="Answer Is:\n"
    "void show Toast(){\n"
    " Toast.show(\n"
    "  'Hello',"
    "  context,"
    "  backgroundColor:Colors.yellow,"
    " );"
    "}\n";

TextEditingController T1=new TextEditingController();
TextEditingController T2=new TextEditingController();
TextEditingController T3=new TextEditingController();
TextEditingController T4=new TextEditingController();
TextEditingController T5=new TextEditingController();

typedef void OnError(Exception exception);

class ToastQ8 extends StatefulWidget {
  @override
  _ToastQ8State createState() => new _ToastQ8State();
}

class _ToastQ8State extends State<ToastQ8> {
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
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>cl_ToastQuizz()));
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
      home: new Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: (){
                PlayTapSound();
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
              },
            ),
            title: Text("Toast Quizz"),
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
                      "Fill The Missing Fields To Show A Toast Saying Hello When The Page Is Loaded Having Yellow As Background Color",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PT Mono"
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "import 'package:flutter/material.dart';\n"
                      "import 'package:toast/toast.dart';\n\n"
                      "void main() {\n"
                      " runApp(Quizz());\n"
                      "}\n\n"

                      "class Quizz extends StatefulWidget{\n"
                      " Quizz({Key Key}) : super (key: Key);\n"
                      " _QuizzState createState() => _QuizzState();\n"
                      "}\n\n"

                      "class _QuizzState extends State<Quizz> {\n\n"
                      " @override\n"
                      " void initState() {\n"
                      "   super.initState();\n"
                      "   showToast();\n"
                      " }\n\n"

                      "void showToast(){\n"
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 76,),
                        Container(
                          width: 50,
                          child:TextField(
                            controller: T1,
                            autofocus: true,
                            maxLength:5,
                            decoration:InputDecoration(
                              counterText:""
                            ),
                          ),
                        ),
                        Text("."),
                        Container(
                          width: 40,
                          child:TextField(
                            controller: T2,
                            maxLength:4,
                            decoration:InputDecoration(
                                counterText:""
                            ),
                          ),
                        ),
                        Text("(\n")
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 85,),
                        Text("'Hello',"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 85,),
                        Container(
                          width: 70,
                          child:TextField(
                            controller: T3,
                            maxLength:7,
                            decoration:InputDecoration(
                                counterText:""
                            ),
                          ),
                        ),
                        Text(",")
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 85,),
                        Container(
                          width: 150,
                          child:TextField(
                            controller: T4,
                            maxLength:15,
                            decoration:InputDecoration(
                                counterText:""
                            ),
                          ),
                        ),
                        Text(":Colors."),
                        Container(
                          width: 60,
                          child:TextField(
                            controller: T5,
                            maxLength:6,
                            decoration:InputDecoration(
                                counterText:""
                            ),
                          ),
                        ),
                        Text(","),
                      ],
                    ),

                    Text(
                      " );\n"
                      "}\n\n\n"

                      "  @override\n"
                      "  Widget build(BuildContext context) {\n"
                      "   return MaterialApp (\n"
                      "    debugShowCheckedModeBanner: false,\n"
                      "    title:'Quizz',\n"
                      "    home: Scaffold(\n"
                      "    body:\n"
                      "     Center(\n"
                      "     child:Text('Toast Quizz!'),\n"
                      "     ),\n"
                      "    ),\n"
                      "   );\n"
                      " }\n"
                      "}\n",

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

                          if( T1.text.trim()=='Toast' && T2.text.trim()=='show' && T3.text.trim()=='context' && T4.text.trim()=='backgroundColor' && T5.text.trim()=='yellow' ) {
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
                          T4.text="";
                          T5.text="";
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



