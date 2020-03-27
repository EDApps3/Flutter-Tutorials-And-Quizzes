import 'package:clippy_flutter/arc.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClippyButtcheek());
}

class ClippyButtcheek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Clippy ButtCheek",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
            title: Text('Clippy ButtCheek')
        ),
        body: ListView(
          children: <Widget>[
            ButtCheek(
              clipShadows: [ClipShadow(color: Colors.black)],
              height: 20.0,
              child: Container(
                child: Image.asset('Images/S3.jpg'),
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