import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() => runApp(Avatar2Glow());

class Avatar2Glow extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Avatar 2 Glow'),
        ),
        body:
        Center(
          child:AvatarGlow(
              glowColor:Colors.cyan,
              showTwoGlows:true,
              endRadius:100.0,
              child:SizedBox(
                width:35,
                height:35,
                child:CircleAvatar(
                  backgroundColor:Colors.transparent,
                  child:Image.asset(
                    "Images/160x160_Flutter.png",
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}






