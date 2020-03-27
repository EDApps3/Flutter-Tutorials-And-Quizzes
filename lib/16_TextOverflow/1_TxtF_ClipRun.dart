import 'package:flutter/material.dart';

void main() {
  runApp(TxtFClipRun());
}

class TxtFClipRun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextFlowClip",
      home: new Scaffold(
        appBar:AppBar(
          title:Text("TextFlow Clip"),
        ),
        body:
        Row(
          children: <Widget>[
            Container(
              width:200,
              height:150,
              child:
              Card(
                child:Text(
                  "This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text,This Is A Clipped Text",
                  overflow:
                    TextOverflow.clip,
                ),
              )
            )

          ],
        ),
      ),
    );
  }

}



