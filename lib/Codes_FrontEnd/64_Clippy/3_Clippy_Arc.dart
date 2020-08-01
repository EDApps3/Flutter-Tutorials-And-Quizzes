import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClippyArc());
}

class ClippyArc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Clippy Arc",
      home:Scaffold(
        appBar:AppBar(
          title:Text("Clippy Arc"),
        ),
        body: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            Arc(
              height: 30.0,
              clipShadows: [ClipShadow(color: Colors.black)],
              child:Image.asset(
                'Images/S3.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Title',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 16.0),
                  Text("Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}