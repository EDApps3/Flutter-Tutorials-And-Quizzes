import 'package:flutter/material.dart';

void main() {
  runApp(TextBgColorRun());
}

class TextBgColorRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextBgColor",
      home:
       Scaffold(
        body:
         Center(
           child:
           Text(
             'Blue Bg',
             style: TextStyle(
               backgroundColor: Colors.blue,
             ),
           ),
         ),
      ),
    );
  }

}



