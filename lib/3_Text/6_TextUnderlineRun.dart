import 'package:flutter/material.dart';

void main() {
  runApp(TextUnderlineRun());
}

class TextUnderlineRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Text Underline",
      home:
       Scaffold(
        body:
         Center(
           child:
            Text(
             'Underline Text',
             style: TextStyle(
               decoration: TextDecoration.underline,
             ),
            ),
         )
      ),
    );
  }

}



