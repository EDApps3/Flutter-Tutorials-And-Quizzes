import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';


void main() => runApp(TensorFlowPhoneLaptop());

class TensorFlowPhoneLaptop extends StatefulWidget {
  @override
  TensorFlowPhoneLaptopState createState() => TensorFlowPhoneLaptopState();
}

class TensorFlowPhoneLaptopState extends State<TensorFlowPhoneLaptop> {
  File imageURI;
  var result;
  String path;
  String label,Confidence;

  Future getImageFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
     if(image!=null){
      imageURI = image;
      path = image.path;
      classifyImage();
     }
    });
  }

  Future getImageFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
     if(image != null ){
      imageURI = image;
      path = image.path;
      classifyImage();
     }
    });
  }
  
  Future classifyImage() async {
    await Tflite.loadModel(
      model : "assets/TensorFlow/model_unquant.tflite",
      labels: "assets/TensorFlow/labels.txt"
    );
    var output = await Tflite.runModelOnImage(path: path);
    
    setState(() {
      result=output;
      print(result);
      label=output[0]["label"].toString();
      Confidence=output[0]["confidence"].toString();
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("Laptop/Phone Detector"),
        ),
      body: Center(
      child: ListView(
        children: <Widget>[ 

          Text("Result Will Not Be 100% True Due To Only 6 Pictures Selected In The TFLite So We Can Keep App Size Reduced!",style:TextStyle(color:Colors.teal,fontSize:15)),



        imageURI == null
          ? Text('No image selected.')
          : Image.file(imageURI, width: 300, height: 200, fit: BoxFit.cover),

           result == null
          ? Text('Result',style:TextStyle(color:Colors.teal,fontSize:20),)
          : Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              Text("Label          :$label",style:TextStyle(color:Colors.teal,fontSize:15)),
              Text("Confidence:$Confidence",style:TextStyle(color:Colors.teal,fontSize:15)),
            ],
           ),

        Container(
          child: RaisedButton(
            onPressed: () => getImageFromCamera(),
            child: Text('Click Here To Select Image From Camera'),
            textColor: Colors.white,
            color: Colors.blue,
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          )),

        Container(
          child: RaisedButton(
            onPressed: () => getImageFromGallery(),
            child: Text('Click Here To Select Image From Gallery'),
            textColor: Colors.white,
            color: Colors.blue,
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          )),

               
    ]))
      ),
    );
  }
}
