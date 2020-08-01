import 'package:flutter/material.dart';


void main() {
  runApp(ImgFitCover());
}


class ImgFitCover extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Image Insert",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Image Fit Cover"),
        ),
        body:ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[

              Text(
                "Original Image:",
                style:TextStyle(
                  color:Colors.blue,
                  fontWeight:FontWeight.bold,
                  fontSize:22,
                ),
              ),
              Image.asset("Images/S1.jpg",),
   
               Divider(), 

              Text(
                "Fit Image:",
                 style:TextStyle(
                  color:Colors.blue,
                  fontWeight:FontWeight.bold,
                  fontSize:22,
                ),
              ),

              Container(
               decoration:BoxDecoration(
                 border:Border.all()
               ),
               height:300,
               width :300,
               child:Image.asset(
                 "Images/S1.jpg",
                 fit:BoxFit.cover,
               ),
           )


                ],
              ),
            ),

          ],
        )
         
         
      
      ),
    );
  }

}








