import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(new AnimatedTextKitFadeRun());


class AnimatedTextKitFadeRun extends StatefulWidget {
  @override
  _AnimatedTextKitFadeState createState() => _AnimatedTextKitFadeState();
}

class _AnimatedTextKitFadeState extends State<AnimatedTextKitFadeRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("Animated TextKit Fade"),
          ),
          body:Center(
            child:SizedBox(
              width:MediaQuery.of(context).size.width,
              child: FadeAnimatedTextKit(
                  isRepeatingAnimation:true,
                  duration:Duration(seconds:3),
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Fade 1...",
                    "Fade 2...",
                    "Fade 3..."
                  ],
                  textStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
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






