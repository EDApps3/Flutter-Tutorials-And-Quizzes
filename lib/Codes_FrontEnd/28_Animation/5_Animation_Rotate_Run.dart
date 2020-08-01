import 'dart:math';
import 'package:animator/animator.dart';
import 'package:flutter/material.dart';


void main() => runApp(AnimRotateRun());

class AnimRotateRun extends StatefulWidget {
  AnimRotateRun({Key Key}) : super (key: Key);

  _AnimRotateState createState() => _AnimRotateState();
}

class _AnimRotateState extends State<AnimRotateRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          title:Text("Rotate Animation"),
        ),
        body:
            Center(
              child:
              Animator(
                tween:Tween<double>(
                  begin: 0,
                  end:2*pi
                ),
                duration:
                Duration(seconds: 8),
                repeats:1,
                builder:(Animation anim)=>Transform.rotate(
                  angle: anim.value,
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




