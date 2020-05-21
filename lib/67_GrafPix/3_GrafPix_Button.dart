import 'package:flutter/material.dart';
import 'package:grafpix/pixbuttons/radial.dart';


void main() => runApp(GrafPixButtons());

class GrafPixButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Grafpix Button",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
            title: Text('GrafPix Button')
        ),
        body:Center(
          child:PixButton(
            radius:70.0,
            icon:Icons.android,
            iconColor:Colors.white,
            backgroundColor:Colors.green,
            shutter:0.6,
            twinkles:true,
            onPress:(){
              AlertDialog dialog = new AlertDialog(
                  content: new Text(
                      "Button Click Detected!"
                  )
              );
              showDialog(context: context, child: dialog);
            },

          ),
        )
      ),
    );
  }
}


