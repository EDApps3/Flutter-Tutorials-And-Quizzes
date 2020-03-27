import 'package:flutter/material.dart';

void main() {
  runApp(TextAlignRightRun());
}

class TextAlignRightRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Text Align Right",
      home: new Scaffold(
        body:
         Container(
           width:double.infinity,
           child:
           Text (
            'Right Text',
             textAlign: TextAlign.right,
           ),
         )
      ),
    );
  }

}

