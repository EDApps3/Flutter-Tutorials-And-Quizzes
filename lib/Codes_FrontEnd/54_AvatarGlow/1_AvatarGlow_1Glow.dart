import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() => runApp(Avatar1Glow());

class Avatar1Glow extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Avatar 1 Glow'),
        ),
        body:
          Center(
            child:AvatarGlow(
              glowColor:Colors.teal,
              showTwoGlows:false,
              endRadius:80.0,
              child:SizedBox(
                width:90,
                height:90,
                child:CircleAvatar(
                  backgroundColor:Colors.cyan,
                  child:Image.asset(
                    "Images/Dart_Logo.png",
                  ),
                ),
              )
            ),
          ),
      ),
    );
  }
}






