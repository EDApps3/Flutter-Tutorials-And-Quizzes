import 'package:flutter/material.dart';

void main() {
  runApp(Col_MA_EndRun());
}

class Col_MA_EndRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Col:MainAxisAlignment.end",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Col:MainAxisAlignment.end"),
        ),
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                Container(
                  decoration:BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  child:
                   IconButton(
                     icon: new Icon(Icons.android),
                   ),
                ),
                Container(
                  decoration:BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  child:
                    Text("Android"),
                ),

              ],
            ),

          ),

    );
  }

}










