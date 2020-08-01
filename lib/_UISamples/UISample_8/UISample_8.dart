import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:async';

void main() {
  runApp(UISample8());
}



  
class UISample8 extends StatefulWidget {
  @override
  UISample8State createState() => new UISample8State();
}

class UISample8State extends State<UISample8> with TickerProviderStateMixin {
  var S=0;
  var FetchTxt="Getting Tutorials & Quizzes Ready";
  double PercNumVal=0.0;
  double ScreenHeight;
  bool Runned=false;
  AnimationController AC;
  Animation<double> TBImg,TBTxt;

  void PlayImgAnim(){
    AC.reset();
    AC.forward();
  }


  Transform Anim(var TB,AnimationController AC,var Widg,double Width,double Height){
    return Transform(
      transform: Matrix4.translationValues(
        0.0,
          TB,
        0.0
      ),
      child:Container(
                width:Width, 
                height:Height, 
                child:Widg
              ),
    );
  }

  
  Animation<double> TB(double end,AnimationController AC){
    return Tween<double>(begin:0, end:end,).animate(
        CurvedAnimation(parent: AC,
          curve: Interval(
            0.0,
            0.75,
            curve:Curves.easeOut,
          ),
        ));
  }





  @override
  void initState(){
    super.initState(); 
  }

  void SplashData(){
    AC = AnimationController(
        vsync: this,
        duration: Duration(seconds:5)
    )..addListener(() {
      setState(() {
      });
    });


    TBImg = TB((ScreenHeight *0.25), AC);
    TBTxt = TB(-(ScreenHeight*0.45), AC);  

    PlayImgAnim();           
    
    setState(() {
      PercNumVal=0.25;
    });
    Timer.periodic(Duration(seconds:3), (timer) {
       S++;
       if(S==1){
         setState(() {
           PercNumVal=0.50;
           FetchTxt="Getting User Data...";
         });
       }
       else{
         setState(() {
           PercNumVal=0.75;
           FetchTxt="Getting Notifications...";
         });
       }
       if(S>=3){
          setState(() {
           PercNumVal=1;
           FetchTxt="Getting Everything Ready";
          });
          S=0;
          timer.cancel();
          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>Page1())); 
        }
      });
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

    if(Runned==false){
      ScreenHeight=MediaQuery.of(context).size.height;
      SplashData();
      Runned=true; 
    }
     
    return Scaffold(
        body:AnimatedBackground(
         behaviour: RandomParticleBehaviour(
           options: Particles
         ),
         vsync: this,
         child:Container(
           width :MediaQuery.of(context).size.width,
           height:MediaQuery.of(context).size.height,
           child:Stack(
             children: <Widget>[


            Column(
             children: <Widget>[
               SizedBox(height:ScreenHeight*0.5),

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
            ),


            Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
              child:Row(
               mainAxisAlignment:MainAxisAlignment.spaceEvenly,
               crossAxisAlignment:CrossAxisAlignment.start,
               children: <Widget>[
                Anim(TBImg.value,AC,Image.asset("Images/160x160_Flutter.png"),110,110),
                Anim(TBImg.value,AC,Image.asset("Images/Dart_Logo.png"),110,110),
               ],
             ),
            ),

            Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
              child:Row(
               mainAxisAlignment:MainAxisAlignment.spaceEvenly,
               crossAxisAlignment:CrossAxisAlignment.end,
               children: <Widget>[
                Anim(TBTxt.value,AC,Text(
                  "Flutter Tutorials And Quizzes",
                  textAlign:TextAlign.center,
                  style: TextStyle (
                   fontFamily: "PT Mono",
                   fontSize: 16,
                   fontWeight: FontWeight.bold,
                   color: Colors.teal,
                  ),
                 ),350,50),
               ],  
             ),
            ),


             ],
           )
         ),
       ),
    );
  }
}



class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Page1",
      home: new Scaffold(
        body:
         Center(
           child:
            Text("Page Successufly Loaded!",),
         )
      ),
    );
  }

}