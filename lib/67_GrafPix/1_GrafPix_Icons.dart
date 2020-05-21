import 'package:flutter/material.dart';
import 'package:grafpix/icons.dart';


void main() => runApp(GrafPixIcon());

class IconWithCode extends StatelessWidget {
  Icon IconWidget;
  String IconName;

  IconWithCode({
    @required this.IconWidget,
    @required this.IconName,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child:Card(
        child:Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  IconWidget,
                  Text("$IconName"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "void main() => runApp(GrafPixIcon());\n\n"
                      "class GrafPixIcon extends StatelessWidget {\n"
                      " @override\n"
                      " Widget build(BuildContext context) {\n"
                      "  return MaterialApp(\n"
                      "   title:'GrafPix Icons',\n"
                      "   debugShowCheckedModeBanner:false,\n"
                      "   home:Scaffold(\n"
                      "   appBar:AppBar(\n"
                      "    title:Text('$IconName'),\n"
                      "   ),\n"
                      "   body:Center(\n"
                      "    child:\n"
                      "      $IconName \n"
                      "    ),\n"
                      "  ),\n"
                      " );\n"
                      " }\n"
                      "}\n"
              ),
            )

          ],
        ),
      )
    );
  }


}

class GrafPixIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"GrafPix Icons",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("GrafPix Icons"),
        ),
        body:ListView(
          children: <Widget>[

            IconWithCode(
              IconWidget:Icon(PixIcon.airplane,size:60,color:Colors.blue,),
              IconName:"Icon(PixIcon.airplane)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.save,size:60,color:Colors.teal,),
              IconName:"Icon(PixIcon.save)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.settings,size:60,color:Colors.grey,),
              IconName:"Icon(PixIcon.settings)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.home,size:60,color:Colors.red,),
              IconName:"Icon(PixIcon.home)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.ace_card,size:60,color:Colors.teal,),
              IconName:"Icon(PixIcon.ace_card)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.aid,size:60,color:Colors.yellow,),
              IconName:"Icon(PixIcon.aid)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.airplane_balloon,size:60,color:Colors.orange,),
              IconName:"Icon(PixIcon.airplane_balloon)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.alarm_clock,size:60,color:Colors.deepPurple,),
              IconName:"Icon(PixIcon.alarm_clock)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.alien_space_ship,size:60,color:Colors.amber,),
              IconName:"Icon(PixIcon.alien_space_ship)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.align_adjust,size:60,color:Colors.black,),
              IconName:"Icon(PixIcon.align_adjust)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.align_center,size:60,color:Colors.black,),
              IconName:"Icon(PixIcon.align_center)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.align_left,size:60,color:Colors.black,),
              IconName:"Icon(PixIcon.align_left)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.align_right,size:60,color:Colors.black,),
              IconName:"Icon(PixIcon.align_right)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.american_football,size:60,color:Colors.teal,),
              IconName:"Icon(PixIcon.american_football)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.anchor,size:60,color:Colors.red,),
              IconName:"Icon(PixIcon.anchor)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.application,size:60,color:Colors.blueGrey,),
              IconName:"Icon(PixIcon.application)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.archive_in,size:60,color:Colors.black54,),
              IconName:"Icon(PixIcon.archive_in)",
            ),
            Divider(),

            IconWithCode(
              IconWidget:Icon(PixIcon.archive_out,size:60,color:Colors.black54,),
              IconName:"Icon(PixIcon.archive_out)",
            ),
            Divider(),



          ],
        )
      ),
    );
  }
}

