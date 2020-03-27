
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/main.dart';




/*

class InitGrafpix extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding:
            EdgeInsets.only(left: 12),
            child:  IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
              },
            ),
          ),
          title: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Grafpix",
                style: TextStyle(
                  fontFamily: "Lora",
                ),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.format_list_numbered),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
              },
            ),
          ],

        ),
        body:
        ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(8.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: new EdgeInsets.only(bottom: 20.0),
                    child:
                    new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(5.0),
                        child:
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Intro:",
                                style:TextStyle(
                                  fontFamily: "PT Mono",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.teal,
                                ),
                              ),
                              Divider(),
                              Text(
                                "Customized Icons\n\n"
                                    "Before Getting Started We Need To Load Into Yaml:\n"
                                    "grafpix: ^1.1.3\n",
                                style:TextStyle(
                                  fontFamily: "PT Mono",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.teal,
                                ),
                              ),
                              Image.asset("Images/LoaderYaml.PNG"),
                              Text(
                                "\n\nWe Also Need To Import:\n\nimport 'package:flutter_spinkit/flutter_spinkit.dart';\n",
                                style:TextStyle(
                                  fontFamily: "PT Mono",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.teal,
                                ),
                              )

                            ]
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(8.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: new EdgeInsets.only(bottom: 8.0),
                    child:
                    new Card(
                      child: new Container(
                        padding: new EdgeInsets.all(5.0),
                        child:
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "\nIcons:\n",
                                style:TextStyle(
                                  fontFamily: "PT Mono",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.teal,
                                ),
                              ),

                              Divider(),
                              ListTile(
                                title:
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        new Icon(PixIcon.home),
                                        Text(
                                          "  SpinKitRotatingCircle(\n"
                                              "   color:\n"
                                              "    Colors.blue,\n"
                                              "   size: 40,\n"
                                              "  )",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                trailing:
                                Container(
                                  margin:
                                  const EdgeInsets.only(top:30.0),
                                  child: IconButton(
                                    icon:new Icon(Icons.arrow_forward_ios),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder:(context)=>LD1()));
                                },
                              ),





















                            ]
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),

          ],
        )
    );
  }
}


*/