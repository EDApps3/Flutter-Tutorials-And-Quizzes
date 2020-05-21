import 'package:flutter/material.dart';

void main() => runApp(new ClippingClipOval());


class ClippingClipOval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text('Clipping Clip Oval'),
          ),
          body:ListView(
            children: <Widget>[
              Text("Before Applying ClipOval"),
              SizedBox(height:15),
              Center(
                child: Container(
                  width:120,
                  height:120,
                  color:Colors.teal,
                ),
              ),
              Divider(),
              Text("After Applying ClipOval"),
              SizedBox(height:15),
              Center(
                child:ClipOval(
                  child:Container(
                    width:120,
                    height:120,
                    color:Colors.teal,
                  ),
                )
              )

            ],
          )
      ),
    );
  }


}






