import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


class MainSplashScreenRun extends StatefulWidget {
  @override
  MainSplashScreenState createState() => new MainSplashScreenState();
}

class MainSplashScreenState extends State<MainSplashScreenRun> {

  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Splash Screen Tutorial",
      home:Scaffold(
        body:SplashScreen(
          seconds:5,
          navigateAfterSeconds:Page(),
          title:
          Text(
            "Splash Screen Tutorial",
          ),
          image:Image.asset("Images/Flutter_Logo.png"),
          photoSize:175,
          backgroundColor:Colors.blueAccent,
          loaderColor:Colors.yellow,
          loadingText:Text("Getting Page Ready!"),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Loaded Page",
      home:Scaffold(
        body:
              Center(
                child:
                Text(
                    "Page Loaded!"
                ),
              ),
            )

    );
  }
}



