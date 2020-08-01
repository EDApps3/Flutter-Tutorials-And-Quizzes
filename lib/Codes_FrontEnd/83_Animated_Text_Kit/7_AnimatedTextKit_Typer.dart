import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(new AnimatedTextKitTyperRun());


class AnimatedTextKitTyperRun extends StatefulWidget {
  @override
  _AnimatedTextKitTyperState createState() => _AnimatedTextKitTyperState();
}

class _AnimatedTextKitTyperState extends State<AnimatedTextKitTyperRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("Animated TextKit Typer"),
          ),
          body:Center(
            child:SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TyperAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "This Is An",
                    "Writer Animated",
                    "TextKit...",
                  ],
                  textStyle: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Bobbers"
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






