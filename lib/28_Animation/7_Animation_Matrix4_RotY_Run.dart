import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() => runApp(AnimM4RYRun());

class AnimM4RYRun extends StatefulWidget {
  AnimM4RYRun({Key Key}) : super (key: Key);

  _AnimM4RYState createState() => _AnimM4RYState();
}

class _AnimM4RYState extends State<AnimM4RYRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          title:Text("Matrix4 RotateY"),
        ),
        body:
            Center(
              child:
              Animator(
                duration:
                Duration(seconds: 4),
                repeats:1,
                builder:(Animation anim)=>Transform(
                  transform:
                  Matrix4.rotationY(
                    anim.value,
                  ),
                  child:
                  Image.asset(
                    "Images/Flutter_Logo.png",
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
            ),
          ),
    );
  }
}




