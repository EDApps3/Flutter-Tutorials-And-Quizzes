import 'package:flutter/material.dart';


void main() {
  runApp(RichTextRun());
}

class RichTextRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "RichText",
      home:
       Scaffold(
        body:
         Center(
           child:
           RichText (
             text: TextSpan (
               children: [
                 TextSpan (
                     text: "Hello",
                     style: TextStyle (
                       color: Colors.red,
                     )
                 ),
                 TextSpan (
                     text: "World",
                     style: TextStyle (
                       color: Colors.blue,
                     )
                 ),
               ],
             ),
           ),
         )
      ),
    );
  }

}








