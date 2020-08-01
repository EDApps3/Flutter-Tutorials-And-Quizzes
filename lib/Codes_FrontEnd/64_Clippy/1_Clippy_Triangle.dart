import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClippyTriangle());
}

class ClippyTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Clippy Triangle",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
          title: Text('Clippy Triangle')
        ),
        body:ListView(
          children: <Widget>[
            Column(
              children: <Widget>[

                Text("Edge.TOP"),
                Container(
                  width:200,
                  height:200,
                  child:Triangle.isosceles(
                    edge: Edge.TOP,
                    child:Image.asset(
                      "Images/S3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Divider(),

                Text("Edge.BOTTOM"),
                Container(
                  width:200,
                  height:200,
                  child:Triangle.isosceles(
                    edge: Edge.BOTTOM,
                    child:Image.asset(
                      "Images/S3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),


                Text("Edge.LEFT"),
                Container(
                  width:200,
                  height:200,
                  child:Triangle.isosceles(
                    edge: Edge.LEFT,
                    child:Image.asset(
                      "Images/S3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Divider(),
                Text("Edge.RIGHT"),
                Container(
                  width:200,
                  height:200,
                  child:Triangle.isosceles(
                    edge: Edge.RIGHT,
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

