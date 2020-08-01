import 'package:flutter/material.dart';
import 'package:share/share.dart';

void main() {
  runApp(ShareLinkRun());
}

class ShareLinkRun extends StatelessWidget {
  String ShareText="Check This Awesome Flutter App By Clicking On The Blue Link : https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner:false,
     title: 'Share Link',
     home: Scaffold(
      appBar: AppBar(
        title: Text('Share Link'),
      ),
      body:Center(
        child:FlatButton.icon(
          icon:Icon(Icons.share),
          label:Text('Share App'), 
          onPressed:(){
            final RenderBox box = context.findRenderObject();
            Share.share(
              ShareText,
              sharePositionOrigin:box.localToGlobal(Offset.zero) &box.size
            );
          },             
        ),
       ),
     ),
    );
  }
}