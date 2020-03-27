import 'package:animator/animator.dart';
import 'package:flutter/material.dart';


void main() => runApp(AnimOpacityRun());

class AnimOpacityRun extends StatefulWidget {
  AnimOpacityRun({Key Key}) : super (key: Key);

  _AnimOpacityState createState() => _AnimOpacityState();
}

class _AnimOpacityState extends State<AnimOpacityRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          title:Text("Opacity Animation"),
        ),
        body:
          Center(
            child:
            Animator(
              duration:
               Duration(seconds: 8),
              repeats:1,
              builder:(Animation anim)=>Opacity(
                opacity: anim.value,
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




