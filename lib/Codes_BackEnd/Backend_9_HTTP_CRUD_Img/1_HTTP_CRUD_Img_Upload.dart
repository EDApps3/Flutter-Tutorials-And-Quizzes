import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

void main() => runApp(PHP_HTTP_CRUD_Insert_GetData());


class PHP_HTTP_CRUD_Insert_GetData extends StatefulWidget {
  @override
  PHP_HTTP_CRUD_Insert_GetDataState createState() => PHP_HTTP_CRUD_Insert_GetDataState();
}

class PHP_HTTP_CRUD_Insert_GetDataState extends State<PHP_HTTP_CRUD_Insert_GetData> {
  static final String uploadEndPoint = 'https://httpfluttertest.000webhostapp.com/WallPaper/InsertWallPaper.php';
  Future<File> file;
  String status = '';
  String base64Image;
  File tmpFile;
  String errMessage = 'Error Uploading Image';
  TextEditingController WallPaperDescCtrl= new TextEditingController();
  bool WLoading=false;

  @override
  void initState(){
    super.initState();
  }

  chooseImage() {
    setState(() {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
    setStatus('');
  }

  setStatus(String message) {
    setState(() {
      status = message;
    });
    print(status);
  }

  void ErrorShowDialog(String ErrorText){
    AlertDialog AD= new AlertDialog(content:Text(ErrorText),);
    showDialog(child:AD,context:context);
  }


  Widget showImage() {
    return FutureBuilder<File>(
      future: file,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          tmpFile = snapshot.data;
          base64Image = base64Encode(snapshot.data.readAsBytesSync());
          return Image.file(snapshot.data,);
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
       appBar: AppBar(
        title: Text("PHP CRUD Image Upload"),
       ),
      body:ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:4,bottom:4),
              child: Text("WallPaper Description:"),
            ), 
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:4,bottom:4),
              child: TextField(
                controller:WallPaperDescCtrl,
                maxLines:6, 
                decoration:InputDecoration(
                  hintText:"Please Insert Description!",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:4,bottom:4),
              child: Text("WallPaper Image:"),
            ), 
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:4,bottom:4),
              child:OutlineButton(
               onPressed: chooseImage,
               child: Text('Choose Image'),
              ),
            ),
            showImage(), 
            Divider(color:Colors.black,),
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:4,bottom:4),
              child:(WLoading==false)?SizedBox(
                width:double.infinity,
                 child:RaisedButton(
                  color: Colors.green,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child:Text(
                    'Upload WallPaper',
                    style: TextStyle(
                            color: Colors.white,
                    ),
                  ),
                  onPressed:() async {
                    
                    if(WallPaperDescCtrl.text==""){
      ErrorShowDialog("Please Insert Description!");
    }
    else if(tmpFile==null){
      ErrorShowDialog("Please Insert Image!");
    }
    else{

      setState(() {
      WLoading=true;
      });

       String fileName = tmpFile.path.split('/').last;
       await http.post(uploadEndPoint, body: {
        "image": base64Image,
        "name": fileName,
        "Desc": WallPaperDescCtrl.text,
       });

       setState(() {
      WLoading=false;
      WallPaperDescCtrl.text="";
      file=null;
      });

      

      
     
    }
                  },
                ),
              ):Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
                 CircularProgressIndicator(),
                 SizedBox(width:10,),
                 Text(status),
                ],
             ),
            ), 

            
            
          ],
        )
       ),
    );
  }
}