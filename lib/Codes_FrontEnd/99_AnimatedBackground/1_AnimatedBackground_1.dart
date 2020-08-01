import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';

void main() => runApp(new AnimatedBackground1());

class AnimatedBackground1 extends StatefulWidget {
  @override
  AnimatedBackground1State createState() => new AnimatedBackground1State();
}

class AnimatedBackground1State extends State<AnimatedBackground1> with SingleTickerProviderStateMixin {

  @override
  initState() {
    super.initState();
  }

  ParticleOptions Particles = ParticleOptions(
    baseColor: Colors.blueGrey,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 70.0,
    spawnMinRadius: 7.0,
    spawnMaxRadius: 15.0,
    particleCount: 50,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text('Random Behavior'),
        ),
        body:AnimatedBackground(
         behaviour: RandomParticleBehaviour(
           options: Particles
         ),
         vsync: this,
         child: ListView(
           children: <Widget>[
             SizedBox(height:200,),
             Center(child:Text("Text,Keep Scrolling!"),),
             SizedBox(height:200,),
             Center(child:Text("Text,Keep Scrolling!"),),
             SizedBox(height:200,),
             Center(child:Text("Text,Keep Scrolling!"),),
             SizedBox(height:200,),
             Center(child:Text("Text,Keep Scrolling!"),),
             SizedBox(height:200,),
             Center(child:Text("Text,Keep Scrolling!"),),
           ],
          ),
        ),
      ),
    );
  }


}