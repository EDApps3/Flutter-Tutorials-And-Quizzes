import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(new TyperWriterAnimatedTextKitRun());


class TyperWriterAnimatedTextKitRun extends StatefulWidget {
  @override
  _TyperWriterAnimatedTextKitState createState() => _TyperWriterAnimatedTextKitState();
}

class _TyperWriterAnimatedTextKitState extends State<TyperWriterAnimatedTextKitRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("TyperWriter Animated Text Kit"),
          ),
          body:Center(
            child:SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TypewriterAnimatedTextKit(
                  
                  pause:Duration(seconds:1),
                  displayFullTextOnTap:true,
                  stopPauseOnTap:true,
                  totalRepeatCount:3,
                  onTap: () {
                    print("Tap Event");
                  },
                  text: [
                    "TyperWriter Animated",
                    "Text Kit Demo",
                    "Will Repeat 3 Times",
                  ],
                  textStyle: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Agne"
                  ),
                  textAlign: TextAlign.start,
                  alignment: AlignmentDirectional.topStart
              ),
            ),
          )
      ),
    );
  }


}






