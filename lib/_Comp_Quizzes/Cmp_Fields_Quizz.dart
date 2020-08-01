import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toast/toast.dart';

import '../CheckConnection.dart';
import '../MainSplashScreen.dart';
import '../SettingPage.dart';
import '../UserDataInfo.dart';
import '../LoadFireBaseAdmob.dart';


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
    ShowMyAds();
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
    bool Ans;


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
      Ans=true;
      Result="Correct Answer";
      TxtClr=Colors.green;
      PlayWinSound();

      if(RandQuizz==false){
        AvatarTokens=AvatarTokens+1;
        AvatarXp    =AvatarXp+10;
      }
      else{
        AvatarTokens=AvatarTokens+2;
        AvatarXp    =AvatarXp+20;
      }

      var dbApp = new DBApp();
      UserData US=new UserData("1",AvatarTokens,AvatarXp,AvatarName,AvatarImg,UID,PID,1);
      dbApp.updateUserData(US);
      dbApp.getAvatarInfo();
    }
    else{
      Ans=false;
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
          height: 480,
          child:Column(
            children: <Widget>[
           Container(
            height:250,
            child:
            ListView(
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
            ],
          ),
          ),

            Divider(color:Colors.grey,),

             (Ans==true && RandQuizz==false)?
                Container(
                  color:Colors.transparent,
                  width:double.infinity,
                  height:65,
                  child:Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Simple Quizz Rewards X1",style: TextStyle(color: Colors.blue,fontFamily:"Lora",),),
                      Row(
                      children: <Widget>[
                      Text("You Earned:",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),),
                      Image.asset("Images/coin.gif",width:15,height:15),
                      Text("1"),
                      SizedBox(width:10,),
                      Image.asset("Images/Star.gif",width:15,height:15),
                      Text("10"),
                    ],
                  ),

                    ],
                  )
                 )
                :(Ans==true && RandQuizz==true)?
                Container(
                  color:Colors.transparent,
                  width:double.infinity,
                  height:65,
                  child:Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Random Quizz Rewards X2",style: TextStyle(color: Colors.blue,fontFamily:"Lora",),),
                      Row(
                      children: <Widget>[
                      Text("You Earned:",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),),
                      Image.asset("Images/coin.gif",width:15,height:15),
                      Text("2"),
                      SizedBox(width:10,),
                      Image.asset("Images/Star.gif",width:15,height:15),
                      Text("20"),
                    ],
                  ),

                    ],
                  )
                 ):
                 Container(
                  color:Colors.transparent,
                  width:double.infinity,
                  height:65,
                  child:Column(
                    children: <Widget>[
                      Text("",style: TextStyle(color: Colors.blue,fontFamily:"Lora",),),
                      Row(
                      children: <Widget>[
                      Text("You Earned:",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),),
                      Image.asset("Images/coin.gif",width:15,height:15),
                      Text("0"),
                      SizedBox(width:10,),
                      Image.asset("Images/Star.gif",width:15,height:15),
                      Text("0"),
                    ],
                  ),

                    ],
                  )
                 ),

                

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
                        "Load Another Quizz",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () async {
                      loadIntertitialAd++;
                      PlayTapSound();
                       CheckUserConnected();
                      if(IsUserConnected==true){
                        Toast.show (
                          "Updating Data...",
                          context,
                          duration: Toast.LENGTH_SHORT,
                          gravity: Toast.BOTTOM,
                          textColor: Colors.white,
                        );
                        await UpdateDataFireStore();
                      }
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
              SizedBox(height:2,),
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
                        "Get Me Back To Menu",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () async {
                      loadIntertitialAd++;
                      PlayTapSound();
                       CheckUserConnected();
                      if(IsUserConnected==true){
                        Toast.show (
                          "Updating Data...",
                          context,
                          duration: Toast.LENGTH_SHORT,
                          gravity: Toast.BOTTOM,
                          textColor: Colors.white,
                        );
                        await UpdateDataFireStore();
                      }
                      Navigator.of(context,rootNavigator: true).pop('dialog');
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));
                    },
                  )
              ),
           
            ],
        )
        ),

    );

    showDialog(
        barrierDismissible:false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(child:alert,onWillPop:() async => false,);
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
    return WillPopScope(
      onWillPop:() async => false,
      child:Scaffold(
        backgroundColor:(ThemeResult=="Light")?Colors.white:CardBg.withBlue(255).withGreen(255).withRed(255),
        resizeToAvoidBottomPadding:false,
        appBar: AppBar(
          backgroundColor:ThemeAppBar,
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              PlayTapSound();
              Navigator.push(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));
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
        body:Column(
          children: <Widget>[
            Container(
              color:Colors.grey.withOpacity(0.5),
              width:MediaQuery.of(context).size.width,
              height:105,
              child:SingleChildScrollView(
                child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  widget.Question,
                  style:TextStyle(
                    fontSize:15,
                    color:Colors.teal,
                    fontWeight:FontWeight.bold, 
                  )
                ),
               ),       
              ),
              ),
            Expanded(
              child:ListView(
            scrollDirection:Axis.vertical,
            children: <Widget>[
              SizedBox(height:10,),
              
              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child:Column(
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
