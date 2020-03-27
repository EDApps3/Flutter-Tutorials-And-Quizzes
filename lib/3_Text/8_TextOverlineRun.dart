import 'package:flutter/material.dart';

void main() {
  runApp(TextOverlineRun());
}

class TextOverlineRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"OverLine Text",
      home:
       Scaffold(
        body:
         Center(
          child:
           Text(
             'OverLine Text',
             style: TextStyle(
               decoration: TextDecoration.overline,
             ),
           ),
         ),
      ),
    );
  }

}



