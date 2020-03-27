import 'package:flutter/material.dart';


void main() {
  runApp(ImgInsRun());
}

class ImgInsRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Image Insert",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Image Insert"),
        ),
        body:
         Center(
           child:
           Image.asset(
               "Images/160x160_Flutter.png",
           ),

         )
      ),
    );
  }

}








