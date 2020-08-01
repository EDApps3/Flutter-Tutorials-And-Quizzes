import 'package:pimp_my_button/pimp_my_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(new DemoParticleRun());

class DemoParticleRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'DemoParticle',
      home:Scaffold(
        appBar:AppBar(
          title:Text("PimpMyButton-DemoParticle"),
        ),
        body:Center(
          child:PimpedButton(
            particle:DemoParticle(),
            pimpedWidgetBuilder: (context, controller) {
              return FloatingActionButton(
                heroTag:'DemoParticle',
                child:Icon(Icons.android),
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
