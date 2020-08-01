import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(new AnimatedTextKitScaleRun());


class AnimatedTextKitScaleRun extends StatefulWidget {
  @override
  _AnimatedTextKitScaleState createState() => _AnimatedTextKitScaleState();
}

class _AnimatedTextKitScaleState extends State<AnimatedTextKitScaleRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("Animated TextKit Scale"),
          ),
          body:Center(
            child:SizedBox(
              width:MediaQuery.of(context).size.width,
              child: ScaleAnimatedTextKit(
                  isRepeatingAnimation:true,
                  duration:Duration(seconds:3),
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Flutter",
                    "Dart"
                  ],
                  textStyle: TextStyle(
                      fontSize: 70.0,
                      fontFamily: "Canterbury"
                  ),
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.center
              ),
            ),
          )
      ),
    );
  }


}






