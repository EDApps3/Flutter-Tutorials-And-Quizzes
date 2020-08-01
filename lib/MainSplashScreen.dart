import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AppSoundPlay.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'SQLite/Show_Bookmarks_Contents.dart';
import 'package:animated_background/animated_background.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:ui';
import 'AppLang.dart';






class MainSplashScreen extends StatefulWidget {
  @override
  MainSplashScreenState createState() => new MainSplashScreenState();
}

class MainSplashScreenState extends State<MainSplashScreen> with TickerProviderStateMixin {
  var S=0;
  var FetchTxt="Getting Tutorials & Quizzes Ready";
  double PercNumVal=0.0;
  var ScreenHeight;



  void GetSQLData() async{
      setState(() {
        FetchTxt="Getting AppTheme...";
        PercNumVal=PercNumVal+0.12;
      });
      await DBApp().getAppTheme();
      setState(() {
        FetchTxt="Getting App Language...";
        PercNumVal=PercNumVal+0.12;
      });
      await DBApp().getAppLang();
      setState(() {
        FetchTxt="Getting Startup Popup Info...";
        PercNumVal=PercNumVal+0.12;
      });
      await DBApp().getAppStartPopup();
      setState(() {
        FetchTxt="Getting Sounds...";
        PercNumVal=PercNumVal+0.14;
      });
      await DBApp().getAppSound();
      setState(() {
        FetchTxt="Getting Login Info...";
        PercNumVal=PercNumVal+0.14;
      });
      await DBApp().getLogin();
      setState(() {
        FetchTxt="Getting Bookmarks...";
        PercNumVal=PercNumVal+0.10;
      });
      await DBApp().getShowBookmarkFrontEnd();
      await DBApp().getShowBookmarkBackEnd();
      setState(() {
        FetchTxt="Getting UserData...";
        PercNumVal=PercNumVal+0.10;
      });
      await DBApp().getAvatarInfo();
      await DBApp().AddDataSetting();
      await DBBkContApp().AddDataBackEnd();
      await DBBkContApp().AddDataFrontEnd();
        setState(() {
         FetchTxt="Translating Contents...";
         PercNumVal=PercNumVal+0.10;
        });
        await TranslateAllAppLang();
      
      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>AuthCheck()));
  }


  

  
  
  @override
  void initState(){
    GetSQLData();
    super.initState();
    initPlayer();      
  }

  ParticleOptions Particles = ParticleOptions(
    baseColor: Colors.blueGrey,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 70.0, 
    spawnMinRadius: 7.0,
    spawnMaxRadius: 15.0,
    particleCount: 95,
  );


  Widget build(BuildContext context) {
    ScreenHeight=MediaQuery.of(context).size.height;

    return new WillPopScope(
      child:Scaffold(
        backgroundColor:(ThemeResult=="Light")?Colors.white:Colors.black12,
        body:AnimatedBackground(
         behaviour: RandomParticleBehaviour(
           options: Particles
         ),
         vsync: this,
         child:Container(
           width :MediaQuery.of(context).size.width,
           height:MediaQuery.of(context).size.height,
           child:Column(
             children: <Widget>[

              SizedBox(height:ScreenHeight*0.31),

              Row(
               mainAxisAlignment:MainAxisAlignment.spaceEvenly,
               crossAxisAlignment:CrossAxisAlignment.center,
               children: <Widget>[
                Image.asset("Images/160x160_Flutter.png",width:110,height:110),
                Image.asset("Images/PumpingHeart.gif",width:40,height:40),
                Image.asset("Images/Dart_Logo.png",width:110,height:110),
               ],
              ),
              SizedBox(height:10,),
              Text(
                  "Flutter Tutorials And Quizzes",
                  textAlign:TextAlign.center,
                  style: TextStyle (
                   fontFamily: "PT Mono",
                   fontSize: 16,
                   fontWeight: FontWeight.bold,
                   color: Colors.teal,
                  ),
                 ),



               Padding(
              padding: const EdgeInsets.all(28.0),
              child: new LinearPercentIndicator(
                  animation:true,
                  width:MediaQuery.of(context).size.width-60,
                  lineHeight: 30.0,
                  percent: PercNumVal,
                  center: Text(
                    FetchTxt,
                    style: new TextStyle(
                      fontSize: 12.0,
                      color:Colors.white,
                      fontWeight:FontWeight.w200,
                    ),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.teal,
                ),
            ),

               


            


           

            

             ],
           )
         ),
       ),
      ),

      onWillPop:() async => false,
    );
  }
}





