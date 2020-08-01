import 'package:flutter/material.dart';

void main() {
  runApp(GestImgRun());
}

class GestImgRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Image Detector On Img",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Image Gesture Detector"),
        ),
        body:
            Center(
              child:
               GestureDetector(
                 onTap: (){
                   AlertDialog AD=new AlertDialog(
                     content:Text("Image Tapped!"),
                   );
                   showDialog(context:context,child:AD);
                 },
                 child:
                  Image.asset("Images/Flutter_Logo.png")
               ),
            ),

           ),
    );
  }

}








