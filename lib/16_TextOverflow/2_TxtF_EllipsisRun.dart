import 'package:flutter/material.dart';

void main() {
  runApp(TxtFEllipsisRun());
}

class TxtFEllipsisRun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextFlowEllipsis",
      home: new Scaffold(
        appBar:AppBar(
          title:Text("TextFlow Ellipsis"),
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
                  "This Is A Ellipsis Text,This Is A Ellipsis Text,This Is A Ellipsis Text,This Is A Ellipsis Text",
                  overflow:
                    TextOverflow.ellipsis,
                ),
              )
            )

          ],
        ),
      ),
    );
  }

}



