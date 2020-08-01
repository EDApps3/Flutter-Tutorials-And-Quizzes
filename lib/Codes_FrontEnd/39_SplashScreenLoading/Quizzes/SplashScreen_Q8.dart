import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'SplashScreen_GenerateQuizzes.dart';

String Result="";
Color TxtClr;

String TxtSol="Answer Is:\n"
    "body:SplashScreen(\n"
    " seconds:5,\n"
    " navigateAfterSeconds:Menu(),\n"
    " title:Text('Home',),\n"
    " image:Image.asset('Home.png'),\n"
    " photoSize:215,\n"
    " backgroundColor:Colors.yellow,\n"
    " loaderColor:Colors.red,\n"
    " loadingText:Text('Plz Wait!'),\n"
    ")\n";


TextEditingController T1=new TextEditingController();
TextEditingController T2=new TextEditingController();


typedef void OnError(Exception exception);

class SplashScreenQ8 extends StatefulWidget {
  @override
  _SplashScreenQ8State createState() => new _SplashScreenQ8State();
}

class _SplashScreenQ8State extends State<SplashScreenQ8> {
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
          height: 390,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(color: Colors.black,),
              Text(
                TxtSol,
                style: TextStyle(
                  fontSize:12,
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
                        Generate_SplashScreen_Quiz(context);
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
            title: Text("SplashScreen Quizz"),
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
                      "Fill The Missing Fields To Make Splash Screen Having Plz Wait As A Text Under The Loader",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PT Mono"
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                          "import 'package:flutter/material.dart';\n"
                          "import 'package:splashscreen/splashscreen.dart';\n\n"

                          "void main() {\n"
                          "  runApp(Quizz());\n"
                          "}\n\n"

                          "class Quizz extends StatefulWidget {\n"
                          " @override\n"
                          "  QuizzState createState() => new QuizzState();\n"
                          "}\n\n"

                          "class QuizzState extends State<Quizz>{\n\n"
                          " @override\n"
                          " void initState(){\n"
                          "  super.initState();\n"
                          " }\n\n"

                          " Widget build(BuildContext context){\n"
                          " return MaterialApp(\n"
                          "  debugShowCheckedModeBanner:false,\n"
                          "  title:'SplashScreen Quizz',\n"
                          "  home:Scaffold(\n"
                          "  body:SplashScreen(\n"
                          "  seconds:5,\n"
                          "  navigateAfterSeconds:Page(),\n"
                          "  title:Text('Home',),\n"
                          "  image:Image.asset('Home.png'),\n"
                          "  photoSize:215,\n"
                          "  backgroundColor:Colors.yellow,\n"
                          " loaderColor:Colors.red,",
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(width:6,),
                        Container(
                          width:110,
                          child: TextField(
                            controller: T1,
                            autofocus: true,
                            maxLength:11,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text(":"),
                        Container(
                          width:40,
                          child: TextField(
                            controller: T2,
                            maxLength:4,
                            decoration:InputDecoration(
                              counterText:"",
                            ),
                          ),
                        ),
                        Text("('Plz Wait',),"),
                      ],
                    ),



                    Text(
                          "        ),\n"
                          "      ),\n"
                          "    );\n"
                          "  }\n"
                          "}\n\n"

                          "class Page extends StatelessWidget{\n"
                          " @override\n"
                          " Widget build(BuildContext context){\n"
                          "  return MaterialApp(\n"
                          "   debugShowCheckedModeBanner: false,\n"
                          "   title:'Loaded Page',\n"
                          "   home:Scaffold(\n"
                          "   body:\n"
                          "    Center(\n"
                          "     child:\n"
                          "      Text(\n"
                          "       'Page Loaded!',\n"
                          "      ),\n"
                          "    ),\n"
                          "   ),\n"
                          "  );\n"
                          " }\n"
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

                          if(T1.text.trim()=="loadingText" && T2.text.trim()=="Text" ){
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



