import 'package:flutter/material.dart';


void main() {
  runApp(TextAlignLeftRun());
}

class TextAlignLeftRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Text Align Left",
      home: new Scaffold(
        body:
         Container(
           width:double.infinity,
           child:
            Text (
             'Left Text',
             textAlign: TextAlign.left,
            ),
         )
      ),
    );
  }

}



