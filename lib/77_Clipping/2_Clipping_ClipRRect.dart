import 'package:flutter/material.dart';

void main() => runApp(new ClippingClipRRect());


class ClippingClipRRect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text('Clipping Clip ClipRRect'),
          ),
          body:ListView(
            children: <Widget>[
              Text("Before Applying ClipRRect"),
              SizedBox(height:15),
              Center(
                child:Container(
                  width:120,
                  height:120,
                  color:Colors.teal,
                ),
              ),
              Divider(),
              Text("After Applying ClipRRect"),
              SizedBox(height:15),
              Center(
                child:ClipRRect(
                  borderRadius:BorderRadius.circular(20),
                  child:Container(
                    width:120,
                    height:120,
                    color:Colors.teal,
                  ),
                ),
              )
            ],
          )
      ),
    );
  }


}






