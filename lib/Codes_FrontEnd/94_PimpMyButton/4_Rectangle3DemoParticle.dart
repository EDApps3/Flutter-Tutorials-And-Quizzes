import 'package:pimp_my_button/pimp_my_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(new Rectangle3DemoParticleRun());

class Rectangle3DemoParticleRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Rectangle3 Demo Particle',
      home:Scaffold(
        appBar:AppBar(
          title:Text("Rectangle3 Demo Particle"),
        ),
        body:Center(
          child: PimpedButton(
            particle: Rectangle3DemoParticle(),
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
