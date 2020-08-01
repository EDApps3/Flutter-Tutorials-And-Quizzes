import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(new AnimatedTextKitColorizeRun());


class AnimatedTextKitColorizeRun extends StatefulWidget {
  @override
  _AnimatedTextKitColorizeState createState() => _AnimatedTextKitColorizeState();
}

class _AnimatedTextKitColorizeState extends State<AnimatedTextKitColorizeRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("AnimatedTextKitColorize"),
          ),
          body:Center(
            child:SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ColorizeAnimatedTextKit(
                  isRepeatingAnimation:true,
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "Flutter ",
                    "Is Awesome",
                    "And Very Easy",
                  ],
                  textStyle: TextStyle(
                      color:Colors.blueAccent,
                      fontSize: 30.0,
                      fontFamily: "Horizon"
                  ),
                  colors: [
                    Colors.teal,
                    Colors.blue,
                    Colors.deepPurpleAccent
                  ],
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.center
              ),
            ),
          )
      ),
    );
  }


}






