import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() => runApp(FadeRun());

class FadeRun extends StatefulWidget {
  FadeRun({Key Key}) : super (key: Key);

  _FadeRunState createState() => _FadeRunState();

}

class _FadeRunState extends State<FadeRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          title:Text("Fade Animation"),
        ),
        body:
              Center(
                child:
                Row(
                  children: <Widget>[
                    Animator(
                      duration: Duration(seconds: 5),
                      repeats: 30,
                      builder: (Animation anim1) => FadeTransition(
                        opacity: anim1,
                        child:Image.asset("Images/Flutter_Logo.png"),
                      ),
                    ),
                    Animator(
                      duration: Duration(seconds: 5),
                      repeats: 30,
                      builder: (Animation anim2) => FadeTransition(
                        opacity: anim2,
                        child:Image.asset("Images/Flutter_Logo.png"),
                      ),
                    ),
                  ],
                ),
              ),
        ),
    );
  }
}




