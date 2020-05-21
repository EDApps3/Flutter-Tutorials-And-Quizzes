import 'package:flutter/material.dart';

void main() => runApp(new SelectableTextRun());


class SelectableTextRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text('Selectable Text'),
          ),
          body:Center(
              child:SelectableText(
                "I'm A Copiable Text Select Me And See What Gonna Happen!",
                style:TextStyle(
                  color: Colors.blue,
                ),
                showCursor:true,
                toolbarOptions:ToolbarOptions(
                  copy:true,
                  cut:true,
                  paste:true,
                  selectAll:true,
                ),
              )
          )
      ),
    );
  }


}






