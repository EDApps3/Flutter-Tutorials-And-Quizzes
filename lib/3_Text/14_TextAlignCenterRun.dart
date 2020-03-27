import 'package:flutter/material.dart';

void main() {
  runApp(TextAlignCenterRun());
}

class TextAlignCenterRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Text Align Center",
      home: new Scaffold(
        body:
         Container(
           width:double.infinity,
           child:
            Text (
             'Centered Text',
              textAlign: TextAlign.center,
            ),
         )
      ),
    );
  }
}






