import 'package:flutter/material.dart';

void main() {
  runApp(AI_11_Run());
}

class AI_11_Run extends StatefulWidget{
  AI_11_Run({Key Key}) : super (key: Key);
  _AI_11_tate createState() => _AI_11_tate();
}

class _AI_11_tate extends State<AI_11_Run> with TickerProviderStateMixin {
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
      title: "AnimatedIcons.play_pause",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("AnimatedIcons.play_pause"),
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








