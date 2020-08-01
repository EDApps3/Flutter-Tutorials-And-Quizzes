import 'package:flutter/material.dart';

void main() {
  runApp(AI_10_Run());
}

class AI_10_Run extends StatefulWidget{
  AI_10_Run({Key Key}) : super (key: Key);
  _AI_10_tate createState() => _AI_10_tate();
}

class _AI_10_tate extends State<AI_10_Run> with TickerProviderStateMixin {
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
      title: "AnimatedIcons.search_ellipsis",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("AnimatedIcons.search_ellipsis"),
        ),
        body:
        Center(
          child:
          IconButton(
            iconSize:100,
            icon: AnimatedIcon(
              icon:AnimatedIcons.search_ellipsis,
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








