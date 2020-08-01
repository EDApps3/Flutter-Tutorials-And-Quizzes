import 'package:flutter/material.dart';
import 'dart:async';
import 'package:multi_image_picker/multi_image_picker.dart';

void main() => runApp(new MutipleImagePickerRun());

class MutipleImagePickerRun extends StatefulWidget {
  @override
  _MutipleImagePickerState createState() => new _MutipleImagePickerState();
}

class _MutipleImagePickerState extends State<MutipleImagePickerRun> {
  List<Asset> images = List<Asset>();

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = List<Asset>();

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor:"blue",
          actionBarTitle: "Select Images",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor:"black",
        ),
      );
    } on Exception catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      images = resultList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:Text('Multiple Image Picker'),
          actions:[
            FlatButton(
              child: Text("Pick Images"),
              onPressed:loadAssets,
            ),
          ]
        ),
        body: buildGridView(),
      ),
    );
  }
}