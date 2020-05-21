import 'package:flutter/material.dart';
import 'package:grafpix/pixbuttons/medal.dart';


void main() => runApp(GrafPixMedals());

class IconWithCode extends StatelessWidget {
  PixMedal PixMedalWidget;
  String PixMedalName;

  IconWithCode({
    @required this.PixMedalWidget,
    @required this.PixMedalName,
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
                    PixMedalWidget,
                    SizedBox(height:40,),
                    Text("$PixMedalName"),
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
                        "    title:Text('GrafPix Medals'),\n"
                        "   ),\n"
                        "   body:Center(\n"
                        "    child:\n"
                        "      $PixMedalName \n"
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

class GrafPixMedals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"GrafPix Medals",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("GrafPix Medals"),
          ),
          body:ListView(
            children: <Widget>[

              IconWithCode(
                PixMedalWidget:PixMedal(medalType:MedalType.Bronze,radius:70.0,iconSize:60.0,icon:Icons.wb_iridescent,),
                PixMedalName:"\nPixMedal(\nmedalType:MedalType.Bronze,\nradius:70.0,\niconSize:60.0,\nicon:Icons.wb_iridescent,\n),\n",
              ),
              Divider(),

              IconWithCode(
                PixMedalWidget:PixMedal(medalType:MedalType.Gold,radius:70.0,iconSize:60.0,icon:Icons.wb_iridescent,),
                PixMedalName:"\nPixMedal(\nmedalType:MedalType.Gold,\nradius:70.0,\niconSize:60.0,\nicon:Icons.wb_iridescent,\n),\n",
              ),
              Divider(),

              IconWithCode(
                PixMedalWidget:PixMedal(medalType:MedalType.Silver,radius:70.0,iconSize:60.0,icon:Icons.wb_iridescent,),
                PixMedalName:"\nPixMedal(\nmedalType:MedalType.Silver,\nradius:70.0,\niconSize:60.0,\nicon:Icons.wb_iridescent,\n),\n",
              ),
              Divider(),





            ],
          )
      ),
    );
  }
}

