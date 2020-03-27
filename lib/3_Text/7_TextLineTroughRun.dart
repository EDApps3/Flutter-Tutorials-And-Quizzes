import 'package:flutter/material.dart';

void main() {
  runApp(TextThroughRun());
}

class TextThroughRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextLineThrough",
      home: new Scaffold(
        body:
         Center(
          child:
           Text(
            'LineThrough Text',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
            ),
           ),
         ),
      ),
    );
  }

}



