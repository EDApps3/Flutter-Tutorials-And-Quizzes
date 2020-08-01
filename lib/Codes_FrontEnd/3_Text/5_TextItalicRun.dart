import 'package:flutter/material.dart';

void main() {
  runApp(TextItalicRun());
}

class TextItalicRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Italic Text",
      home:
       Scaffold(
        body:
         Center(
           child:
            Text(
             'Italic Text',
             style: TextStyle(
               fontStyle: FontStyle.italic,
             ),
            ),
         ),
      ),
    );
  }

}



