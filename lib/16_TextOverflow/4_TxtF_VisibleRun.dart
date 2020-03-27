import 'package:flutter/material.dart';

void main() {
  runApp(TxtFVisibleRun());
}

class TxtFVisibleRun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextFlowVisible",
      home: new Scaffold(
        appBar:AppBar(
          title:Text("TextFlow Visible"),
        ),
        body:
        Row(
          children: <Widget>[
            Container(
              width:200,
              height:15,
              child:
              Card(
                color:Colors.red,
                child:Text(
                  "This Is A Visible Text,This Is A Visible Text,This Is A Visible Text,This Is A Visible Text",
                  overflow:
                    TextOverflow.visible,
                ),
              )
            )

          ],
        ),
      ),
    );
  }

}



