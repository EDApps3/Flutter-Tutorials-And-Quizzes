import 'package:flutter/material.dart';


void main() {
  runApp(MaterialAppTitleTheme());
}


class MaterialAppTitleTheme extends StatelessWidget{

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Demo",
      theme:ThemeData(
        primaryColor:Colors.teal,
      ),
      home:Scaffold(
      body:
       Center(
         child:Text("Show The Opened App In Phone!"),
       )
    ),
     
    );
  }

}








