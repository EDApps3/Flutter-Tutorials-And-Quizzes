import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';
import 'package:splashscreen/splashscreen.dart';

import 'SettingPage.dart';


class MainSplashScreen extends StatefulWidget {
  @override
  MainSplashScreenState createState() => new MainSplashScreenState();
}

class MainSplashScreenState extends State<MainSplashScreen> {

  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Flutter Tutorials And Quizzes",
      home:Scaffold(
        body:SplashScreen(
          seconds:5,
          navigateAfterSeconds:Main(),
          title:
          Text(
            "Flutter Tutorials\nAnd Quizzes",
            textAlign:TextAlign.center,
            style: TextStyle (
              fontFamily: "PT Mono",
              fontSize: 17,
              fontWeight: FontWeight.w200,
              color: Colors.teal,
            ),
          ),
          image:Image.asset("Images/160x160_Flutter.png"),
          photoSize:175,
          backgroundColor:Colors.white70,
          loaderColor:Colors.cyan,
          loadingText:Text("Getting Tutorials & Quizzes Ready"),
        ),
      ),
    );
  }
}



