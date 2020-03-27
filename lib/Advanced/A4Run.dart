import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(A4Run());

class A4Run extends StatefulWidget {
  A4Run() : super();

  @override
  A4RunState createState() => A4RunState();
}

class A4RunState extends State<A4Run> {

  List imgList = [
    Image.asset('Images/S1.jpg'),
    Image.asset('Images/S3.jpg'),
    Image.asset('Images/S2.jpg'),
  ];

  void AddRandomImage(){
    var RandImgIndex=new Random().nextInt(3);

    if(RandImgIndex==0){
      imgList.add(Image.asset('Images/S1.jpg'));
    }
    else if(RandImgIndex==1){
      imgList.add(Image.asset('Images/S2.jpg'));
    }
    else{
      imgList.add(Image.asset('Images/S3.jpg'));
    }
  }


  @override
  Widget build(BuildContext context) {
    var ImgCount=imgList.length;

    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Add Image List"),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Image Count:$ImgCount"),
                SizedBox(width:45),
                FlatButton.icon(
                  icon:Icon(Icons.add),
                  label:Text("Add Image"),
                  onPressed:(){
                    setState(() {
                      AddRandomImage();
                    });
                  },
                )
              ]
            ),
            for(var item in imgList)
              Center(
                child:Container(
                    width:200,
                    height:150,
                    child:item
                ),
              )
          ],
        ),
      ),
    );
  }


}