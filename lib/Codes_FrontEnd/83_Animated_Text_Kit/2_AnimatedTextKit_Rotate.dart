import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(new AnimatedTextKitRotateRun());


class AnimatedTextKitRotateRun extends StatefulWidget {
  @override
  _AnimatedTextKitRotateRunState createState() => _AnimatedTextKitRotateRunState();
}

class _AnimatedTextKitRotateRunState extends State<AnimatedTextKitRotateRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("AnimatedTextKitRotate"),
          ),
          body:Center(
            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Flutter Is : ",
                  style: TextStyle(fontSize:25.0),
                ),
                RotateAnimatedTextKit(
                    isRepeatingAnimation:true,
                    duration:Duration(seconds:2),
                    onTap: () {
                      print("Tap Event");
                    },
                    text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
                    textStyle: TextStyle(fontSize: 25.0, fontFamily: "Horizon"),
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart 
                ),
              ],
            ),
          )
      ),
    );
  }


}






