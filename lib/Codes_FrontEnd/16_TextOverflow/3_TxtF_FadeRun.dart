import 'package:flutter/material.dart';

void main() {
  runApp(TxtFFadeRun());
}

class TxtFFadeRun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextFlowFade",
      home: new Scaffold(
        appBar:AppBar(
          title:Text("TextFlow Fade"),
        ),
        body:
        Row(
          children: <Widget>[
            Container(
              width:200,
              height:50,
              child:
              Card(
                child:Text(
                  "This Is A Faded Text,This Is A Faded Text,This Is A Faded Text,This Is A Faded Text",
                  overflow:
                    TextOverflow.fade,
                ),
              )
            )

          ],
        ),
      ),
    );
  }

}



