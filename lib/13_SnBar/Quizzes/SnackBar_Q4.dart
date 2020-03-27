import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'SnackBar_GenerateQuizzes.dart';

String Result="";
Color TxtClr;

String TxtSol="Answer Is:\n\n"
    "final SBarVar=SnackBar(\n"
    " content:Text('Hello'),\n"
    " action: SnackBarAction(\n"
    "  label:'Go'\n,"
    "  onPressed:_launchUrl,\n"
    "  ),"
    ");\n"
    "Scaffold.of(context).showSnackBar(SBarVar);";


TextEditingController T1=new TextEditingController();
TextEditingController T2=new TextEditingController();
TextEditingController T3=new TextEditingController();
TextEditingController T4=new TextEditingController();
TextEditingController T5=new TextEditingController();


typedef void OnError(Exception exception);

class SnackBarQ4 extends StatefulWidget {
  @override
  _SnackBarQ4State createState() => new _SnackBarQ4State();
}

class _SnackBarQ4State extends State<SnackBarQ4> {
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
          height: 430,
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
                        Generate_SnackBar_Quiz(context);
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
            title: Text("SnackBar Quizz"),
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
                      "Fill The Missing Fields To Create A SnackBar That Last For 10 Seconds",
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
                          "    title:Text('SnackBar'),\n"
                          "   ),\n"
                          "   body:\n"
                          "    Center(\n"
                          "     child:\n"
                          "      FlatButton(\n"
                          "       child: Text('Show SnackBar'),\n"
                          "       onPressed:(){\n",
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 70,),
                        Text("final SBarVar="),
                        Container(
                          width:80,
                          child: TextField(
                            controller: T1,
                            autofocus: true,
                            maxLength:8,
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
                        SizedBox(width: 78,),
                        Container(
                          width:70,
                          child: TextField(
                            controller: T2,
                            maxLength:7,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(":Text('Hello'),"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 78,),
                        Container(
                          width:60,
                          child: TextField(
                            controller: T3,
                            maxLength:6,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(":SnackBarAction("),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 78,),
                        Container(
                          width:50,
                          child: TextField(
                            controller: T4,
                            maxLength:5,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(":'Do',"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 78,),
                        Text(" onPressed:(){}"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 70,),
                        Text("),"),
                      ],
                    ),



                    Row(
                      children: <Widget>[
                        SizedBox(width: 70,),
                        Text(");"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 70,),
                        Text("Scaffold.of(context)."),
                        Container(
                          width:120,
                          child: TextField(
                            controller: T3,
                            maxLength:12,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text("(SBarVar);"),
                      ],
                    ),

                    Text(
                          "            },\n"
                          "           ),\n"
                          "         ),\n"
                          "       ),\n"
                          "     );\n"
                          "  }\n"
                          "}\n"
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

                          if(T1.text.trim()=="SnackBar" && T2.text.trim()=="content" && T3.text.trim()=="action" && T4.text.trim()=="label" ){
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



