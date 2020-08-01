import 'package:animator/animator.dart';
import 'package:flutter/material.dart';


void main() => runApp(AnimRotTransRun());

class AnimRotTransRun extends StatefulWidget {
  AnimRotTransRun({Key Key}) : super (key: Key);

  _AnimRotTransState createState() => _AnimRotTransState();
}

class _AnimRotTransState extends State<AnimRotTransRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          title:Text("Rotation Transition"),
        ),
        body:
            Center(
              child:
              Animator(
                duration:
                Duration(seconds: 8),
                repeats:1,
                builder:(Animation anim)=>RotationTransition(
                  turns: anim,
                  child:
                  Image.asset(
                      "Images/Flutter_Logo.png"
                  ),
                ),
              ),
            ),
          ),
    );
  }
}

