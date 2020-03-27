import 'package:clippy_flutter/arc.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClippyDiagonal());
}

class ClippyDiagonal extends StatefulWidget {
  @override
  ClippyDiagonalState createState() {
    return new ClippyDiagonalState();
  }
}

class ClippyDiagonalState extends State<ClippyDiagonal> {
  static final double containerHeight = 200.0;
  double clipHeight = containerHeight * 0.20;
  DiagonalPosition position = DiagonalPosition.BOTTOM_LEFT;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Clippy Diagonal",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("Clippy Diagonal"),
          ),
          body: Column(
            children: <Widget>[
              Diagonal(
                position: position,
                clipHeight: clipHeight,
                child: Container(
                  height:containerHeight,
                  child:Image.asset(
                    'Images/S3.jpg',
                  ),
                ),
              ),
              RaisedButton(
                child: Text('Change Position'),
                onPressed: () {
                  setState(() {
                    if (position == DiagonalPosition.BOTTOM_LEFT) {
                      position = DiagonalPosition.BOTTOM_RIGHT;
                    } else {
                      position = DiagonalPosition.BOTTOM_LEFT;
                    }
                  });
                },
              ),
            ],
          )
      ),
    );
  }
}