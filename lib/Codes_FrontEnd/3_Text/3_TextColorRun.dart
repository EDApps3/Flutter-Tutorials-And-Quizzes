import 'package:flutter/material.dart';


void main() {
  runApp(TextColorRun());
}

class TextColorRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextColor",
      home: new Scaffold(
        body:
         Center(
          child:
           Text(
             'Hello World!',
             style: TextStyle(
               color: Colors.red,
             ),
           ),
         )
      ),
    );
  }

}



