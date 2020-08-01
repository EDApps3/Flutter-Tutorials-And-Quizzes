import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(new AnimatedTextKitTextLiquidFillRun());


class AnimatedTextKitTextLiquidFillRun extends StatefulWidget {
  @override
  _AnimatedTextKitTextLiquidFillState createState() => _AnimatedTextKitTextLiquidFillState();
}

class _AnimatedTextKitTextLiquidFillState extends State<AnimatedTextKitTextLiquidFillRun> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:SizedBox(
              width:MediaQuery.of(context).size.width,
              child:TextLiquidFill(
                text: 'LIQUID',
                waveColor: Colors.white,
                boxBackgroundColor: Colors.blue,
                textStyle: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight:200.0,  
              ),
            )
          ),
          
      ),
    );
  }


}






