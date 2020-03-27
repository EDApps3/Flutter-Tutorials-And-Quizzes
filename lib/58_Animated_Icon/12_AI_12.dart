import 'package:flutter/material.dart';

void main() {
  runApp(AI_12_Run());
}

class AI_12_Run extends StatefulWidget{
  AI_12_Run({Key Key}) : super (key: Key);
  _AI_12_tate createState() => _AI_12_tate();
}

class _AI_12_tate extends State<AI_12_Run> with TickerProviderStateMixin {
  AnimationController controller_AI;
  bool AI_isPlaying = false;

  _onpressed_AI() {
    if(AI_isPlaying==false){
      AI_isPlaying=true;
      controller_AI.forward();
    }
    else{
      AI_isPlaying=false;
      controller_AI.reverse();
    }
  }

  @override
  void initState() {
    super.initState();

    controller_AI = AnimationController(
        duration: const Duration(milliseconds: 500),
        vsync: this
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "AnimatedIcons.pause_play",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("AnimatedIcons.pause_play"),
        ),
        body:
        Center(
          child:
          IconButton(
            iconSize:100,
            icon: AnimatedIcon(
              icon:AnimatedIcons.play_pause,
              progress: controller_AI,
              color:Colors.red,
            ),
            onPressed: () => _onpressed_AI(),
          ),
        ),
      ),
    );
  }

}








