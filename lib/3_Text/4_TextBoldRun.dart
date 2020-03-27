import 'package:flutter/material.dart';

void main() {
  runApp(TextBoldRun());
}

class TextBoldRun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextBold",
      home:
      Scaffold(
        body:
         Center(
           child:
           Text(
             'Bolded Text',
             style: TextStyle(
               fontWeight:FontWeight.bold,
             ),
           ),
         )
      ),
    );
  }
}



