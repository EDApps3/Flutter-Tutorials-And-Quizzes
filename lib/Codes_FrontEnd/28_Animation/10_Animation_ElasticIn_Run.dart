import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() => runApp(AnimElasticInRun());

class AnimElasticInRun extends StatefulWidget {
  AnimElasticInRun({Key Key}) : super (key: Key);

  _AnimElasticInState createState() => _AnimElasticInState();
}

class _AnimElasticInState extends State<AnimElasticInRun> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar:AppBar(
          title:Text("Elastic In"),
        ),
        body:
            Center(
              child:
              Animator(
                duration:
                Duration(
                  seconds:5,
                ),
                tween:
                Tween<double>(
                  begin: 1,
                  end:2,
                ),
                curve: Curves.elasticIn,
                cycles:0,
                repeats:1,
                builder:
                    (Animation anim)=>Transform.scale(
                  scale:anim.value,
                  child:
                  Container(
                    width:170,
                    height:170,
                    child:
                    Image.asset(
                      "Images/Flutter_Logo.png",
                      width: 50,
                      height:50,
                    ),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}




