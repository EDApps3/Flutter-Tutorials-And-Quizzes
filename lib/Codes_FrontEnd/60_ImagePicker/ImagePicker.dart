import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


void main() {
  runApp(ImagePickerRun());
}


class ImagePickerRun extends StatefulWidget {
  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePickerRun> {
  File image;

  pickerCam() async {
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  pickerGallery() async {
    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Row(
            children: <Widget>[
              FlatButton.icon(
                icon:Icon(Icons.image),
                label:Text("From Gallery"),
                onPressed: pickerGallery
              ),
              FlatButton.icon(
                  icon:Icon(Icons.camera_alt),
                  label:Text("From Camera"),
                  onPressed: pickerCam
              ),
            ],
          ),
          Divider(),
          Container(
            height: 200.0,
            width: 200.0,
            decoration: new BoxDecoration(
              border: new Border.all(color: Colors.blueAccent),
            ),
            padding: new EdgeInsets.all(5.0),
            child: image == null ? Text('Select An Image') : Image.file(image),
          ),
        ],
      ),
    );
  }
}