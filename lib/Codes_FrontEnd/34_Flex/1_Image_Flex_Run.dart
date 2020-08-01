import 'package:flutter/material.dart';

void main() {
  runApp(ImageFlexRun());
}

class ImageFlexRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
          appBar: AppBar(
            title:Text("Image Flex"),
          ),
          body:
          ListView(
            children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child:
                        Image.asset("Images/Flutter_Logo.png",),
                      ),
                      Expanded(
                        flex: 2,
                        child:
                        Image.asset("Images/Flutter_Logo.png",),
                      ),
                      Expanded(
                        child:
                        Image.asset("Images/Flutter_Logo.png",),
                      ),
                    ],
                  ),

                ],
              )

      ),
    );
  }
}


