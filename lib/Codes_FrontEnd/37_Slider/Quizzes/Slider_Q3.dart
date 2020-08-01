import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'Slider_GenerateQuizzes.dart';

String Result="";
Color TxtClr;

String TxtSol="Answer Is:\n"
    "new Slider(\n"
    "  value: _value,\n"
    "  onChanged: _setvalue\n"
    "  min: 0,\n"
    "  divisions: 2,"
    "  max: 10,"
    "),";

TextEditingController T1=new TextEditingController();
TextEditingController T2=new TextEditingController();
TextEditingController T3=new TextEditingController();
TextEditingController T4=new TextEditingController();
TextEditingController T5=new TextEditingController();
TextEditingController T6=new TextEditingController();


typedef void OnError(Exception exception);

class SliderQ3 extends StatefulWidget {
  @override
  _SliderQ3State createState() => new _SliderQ3State();
}

class _SliderQ3State extends State<SliderQ3> {
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
                        Generate_Slider_Quiz(context);
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
            title: Text("Slider Quizz"),
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
                      "Fill The Missing Fields To Obtain Slidable Slider Having As Maximum Value 10,Minimum Value 1, Slidable Division By 2",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PT Mono"
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "import 'package:flutter/material.dart';\n\n"
                      " void main(){\n"
                      "  runApp(Quizz());\n"
                      " }\n\n"

                      " class Quizz extends StatefulWidget {\n"
                      "  @override\n"
                      "  _QState createState() => new _QState();\n"
                      " }\n\n"

                      " class _QState extends State<Quizz>{\n"
                      " double _value = 0.0;\n\n"

                      " void _setvalue(double value)\n"
                      "  => setState(\n"
                      "    () => _value = value\n"
                      " );\n\n"

                      " @override\n"
                      "  Widget build(BuildContext context){\n"
                      "   return MaterialApp(\n"
                      "     debugShowCheckedModeBanner:false,\n"
                      "     home:Scaffold(\n"
                      "      appBar: new AppBar(\n"
                      "       title: Text('Slider'),\n"
                      "      ),\n"
                      "     body: new Container(\n"
                      "      padding: new EdgeInsets.all(32.0),\n"
                      "      child:Center(\n"
                      "       child:Column(\n"
                      "        children: <Widget>[\n"
                      "         new Text('Value: \${(_value * 100).round()}'),"

                      ,
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 76,),
                        Text("new "),
                        Container(
                          width:60,
                          child: TextField(
                            controller: T1,
                            autofocus: true,
                            maxLength:6,
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
                          width:50,
                          child: TextField(
                            controller: T2,
                            maxLength:5,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(" : _value,"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 80,),
                        Container(
                          width:90,
                          child: TextField(
                            controller: T3,
                            maxLength:9,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(" : _setValue,"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 80,),
                        Container(
                          width:30,
                          child: TextField(
                            controller: T4,
                            maxLength:3,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(" : 1,"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 80,),
                        Container(
                          width:90,
                          child: TextField(
                            controller: T5,
                            maxLength:9,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(" : 2,"),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width: 80,),
                        Container(
                          width:30,
                          child: TextField(
                            controller: T6,
                            maxLength:3,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(" : 10,"),
                      ],
                    ),


                    Text(
                        "),\n"
                        "],\n"
                        "),\n"
                        " ),\n"
                        "),\n"
                        " ),\n"
                        ");\n"
                        "}\n"
                        "}"

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

                          if(T1.text.trim()=="Slider" && T2.text.trim()=="value"  && T3.text.trim()=="onChanged" && T4.text.trim()=="min" && T5.text.trim()=="divisions" && T6.text.trim()=="max" ){
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
                          T6.text="";

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



