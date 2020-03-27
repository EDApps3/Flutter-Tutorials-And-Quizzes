import 'package:flutter/material.dart';

void main() {
  runApp(ImgInsWHRun());
}

class ImgInsWHRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "ImageInsert",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Image Insert"),
        ),
        body:
         Center(
           child:
           Image.asset(
             "Images/160x160_Flutter.png",
             width: 40,
             height: 40,
           ),
         )

      ),
    );
  }

}








