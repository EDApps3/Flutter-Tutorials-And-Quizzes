import 'package:pimp_my_button/pimp_my_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(new RectangleDemoParticleRun());

class RectangleDemoParticleRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Rectangle Demo Particle',
      home:Scaffold(
        appBar:AppBar(
          title:Text("Rectangle Demo Particle"),
        ),
        body:Center(
          child: PimpedButton(
            particle: RectangleDemoParticle(),
            pimpedWidgetBuilder: (context, controller) {
              return RaisedButton(
                child: Text("Click Me!"),
                onPressed: () {
                  controller.forward(from: 0.0);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

