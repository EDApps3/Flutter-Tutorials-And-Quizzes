import 'package:flutter/material.dart';

void main() => runApp(ToggleButtonRun());

class ToggleButtonRun extends StatefulWidget {
  @override
  _ToggleButtonRunState createState() => _ToggleButtonRunState();
}

class _ToggleButtonRunState extends State<ToggleButtonRun> {

  List<bool> _selections = List.generate(3, (_)=>false );

  var TxtBold   = FontWeight.normal;
  var TxtItalic = FontStyle.normal;
  var TxtUnder  = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toggle Buttons',
      home: Scaffold(
        appBar:AppBar(
          title:Text("Toggle Buttons"),
        ),
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[
            ToggleButtons(
              children: <Widget>[
                Icon(Icons.format_bold),
                Icon(Icons.format_italic),
                Icon(Icons.format_underlined),
              ],
              isSelected:_selections,
              onPressed:(int index){
                setState(() {
                  _selections[index]=!_selections[index];

                  if(index==0 && _selections[index]){
                    TxtBold=FontWeight.bold;
                  }
                  else if(index==0 && !_selections[index]){
                    TxtBold=FontWeight.normal;
                  }

                  if(index==1 && _selections[index]){
                    TxtItalic=FontStyle.italic;
                  }
                  else if(index==1 && !_selections[index]){
                    TxtItalic=FontStyle.normal;
                  }

                  if(index==2 && _selections[index]){
                    TxtUnder=TextDecoration.underline;
                  }
                  else if(index==2 && !_selections[index]){
                    TxtUnder=TextDecoration.none;
                  }


                });
              },
              color:Colors.teal,
              fillColor:Colors.deepPurple,
            ),
            Text(
              "This Is A Simple Text,Press Buttons Up And See What Gonna Happen",
              style:TextStyle(
                fontWeight:TxtBold,
                fontStyle:TxtItalic,
                decoration:TxtUnder,
              ),
            )
          ],
        )
      ),
    );
  }
}