import 'package:animator/animator.dart';
import 'package:flutter/material.dart';


void main() => runApp(AnimM4RZRun());

class AnimM4RZRun extends StatefulWidget {
  AnimM4RZRun({Key Key}) : super (key: Key);
  _AnimM4RZState createState() => _AnimM4RZState();
}

class _AnimM4RZState extends State<AnimM4RZRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          title:Text("Matrix4 RotateZ"),
        ),
        body:
            Center(
              child:
              Animator(
                duration:
                Duration(seconds: 8),
                repeats:1,
                builder:(Animation anim)=>Transform(
                  transform:
                   Matrix4.rotationZ(
                       anim.value,
                   ),
                  child:
                  Image.asset(
                      "Images/Flutter_Logo.png",
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ),
    );
  }
}




