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


enum Answers {
  A1,
  A2
}

var SelectedIndex;

class Cmp_Quizz_2Radio extends StatefulWidget {

  final String AppBarTitle,Question,Ans1Txt,Ans2Txt,SolutionTxt,GoRoute;
  final int CorrectIndex;

  Cmp_Quizz_2Radio({
    @required this.AppBarTitle,
    @required this.Question,
    @required this.Ans1Txt,
    @required this.Ans2Txt,
    @required this.SolutionTxt,
    @required this.CorrectIndex,
    @required this.GoRoute,
  });

  _Cmp_Quizz_2Radio_State createState() => _Cmp_Quizz_2Radio_State();
}

class _Cmp_Quizz_2Radio_State extends State<Cmp_Quizz_2Radio> {
  Answers _Ans=null;

  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    ShowMyAds();
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

    var Result,TxtClr;

    if(SelectedIndex==widget.CorrectIndex){
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
          height: 310,
          child: ListView(
            children: <Widget>[
              Divider(color: Colors.black,),
              Text(
                widget.SolutionTxt,
                style: TextStyle(
                  color: Colors.cyan,
                  fontFamily:"Lora",
                ),
              ),

              Divider(color:Colors.grey),


              
                (SelectedIndex==widget.CorrectIndex && RandQuizz==false)?
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
                 ):(SelectedIndex==widget.CorrectIndex && RandQuizz==true)?
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
                  ),
                ),

              

              Divider(),
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
                        "Load Another Quizz",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily:"PT Mono",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    onPressed: () async {
                      PlayTapSound();
                      loadIntertitialAd++;
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
                        "Get Me Back To Menu ",
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
          ),

        )

          
    );

    showDialog(
        
        barrierDismissible:false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(child:alert,onWillPop:() async => false,);
        });
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async => false,
      child:Scaffold(
                backgroundColor:(ThemeResult=="Light")?Colors.white:CardBg.withBlue(255).withGreen(255).withRed(255),
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
            ],
          ),
        ),
      ),
    );

  }
}
