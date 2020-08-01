import 'package:flutter/material.dart';
import 'package:clippy_flutter/chevron.dart';

void main() {
  runApp(ClippyChevron());
}

class ClippyChevron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Clippy Chevron",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
          appBar: AppBar(
            title: Text('Clippy Chevron'),
          ),
          body:ListView(
            children: <Widget>[
              Column(
                children: <Widget>[

                  Text("Edge.TOP"),
                  Container(
                    width:170,
                    height:170,
                    child:Chevron(
                      triangleHeight: 50.0,
                      edge:Edge.LEFT,
                      child:Image.asset(
                        "Images/S3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Divider(),

                  Text("Edge.BOTTOM"),
                  Container(
                    width:170,
                    height:170,
                    child: Chevron(
                     triangleHeight: 50.0,
                     edge:Edge.BOTTOM,
                     child:Image.asset(
                      "Images/S3.jpg",
                      fit: BoxFit.cover,
                     ),
                    ),
                  ),


                  Text("Edge.LEFT"),
                  Container(
                    width:170,
                    height:170,
                    child: Chevron(
                      triangleHeight: 50.0,
                      edge:Edge.LEFT,
                      child:Image.asset(
                        "Images/S3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Divider(),
                  Text("Edge.RIGHT"),
                  Container(
                    width:170,
                    height:170,
                    child: Chevron(
                      triangleHeight: 50.0,
                      edge:Edge.RIGHT,
                      child:Image.asset(
                        "Images/S3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Divider(),

                ],
              )
            ],
          ),
      ),
    );
  }
}