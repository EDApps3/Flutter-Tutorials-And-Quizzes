import 'package:flutter/material.dart';

void main() {
  runApp(Col_MA_StartRun());
}

class Col_MA_StartRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Col:MainAxisAlignment.start",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Col:MainAxisAlignment.start"),
        ),
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Container(
                  decoration:BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  child:
                    Text('Hi'),
                ),
                Container(
                  decoration:BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  child:
                    Text('Hi'),
                ),

              ],
            ),

          ),

    );
  }

}








