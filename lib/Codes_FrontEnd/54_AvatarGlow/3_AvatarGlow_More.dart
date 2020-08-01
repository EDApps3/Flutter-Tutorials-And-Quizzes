import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

void main() => runApp(AvatarGlowMore());

class Cmp_AG extends StatelessWidget {
  bool STG;
  double ER;

  Cmp_AG({
    @required this.ER,
    @required this.STG,
  });

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor:Colors.teal,
      showTwoGlows:STG,
      endRadius:ER,
      child:Icon(
        Icons.favorite,
        color:Colors.red,
        size:50,
      ),
    );
  }

  }


class AvatarGlowMore extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Avatar Glow More'),
        ),
        body:
          ListView(
            children: <Widget>[
              SizedBox(
                width:double.infinity,
                height:45,
                child:Card(
                  color:Colors.teal,
                  child:Center(
                    child:Text(
                      "You Can Swipe Items Left And Right",
                      style: TextStyle(
                        color:Colors.white
                      ),
                    ),
                  )
                )
              ),

              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child:Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:true\n"
                                    "endRadius:100.0\n"
                            ),
                          ),
                        ),
                        Container(
                          width:200,
                          height:210,
                          child:Center(
                            child:Cmp_AG(ER:100.0, STG:true),
                          )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:true\n"
                                    "endRadius:70.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:70.0, STG:true),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:true\n"
                                    "endRadius:50.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:50.0, STG:true),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:true\n"
                                    "endRadius:30.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:30.0, STG:true),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:true\n"
                                    "endRadius:10.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:10.0, STG:true),
                            )
                        ),
                      ],
                    ),


                  ],
                ),
              ),

              Divider(),

              SingleChildScrollView(
                scrollDirection:Axis.horizontal,
                child:Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:false\n"
                                    "endRadius:100.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:100.0, STG:false),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:false\n"
                                    "endRadius:70.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:70.0, STG:false),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:false\n"
                                    "endRadius:50.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:50.0, STG:false),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:false\n"
                                    "endRadius:30.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:30.0, STG:false),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width:200,
                          height:70,
                          child:Center(
                            child: Text(
                                "showTwoGlows:false\n"
                                    "endRadius:10.0\n"
                            ),
                          ),
                        ),
                        Container(
                            width:200,
                            height:210,
                            child:Center(
                              child:Cmp_AG(ER:10.0, STG:false),
                            )
                        ),
                      ],
                    ),

                  ],
                ),
              ),




            ],
          ),
      ),
    );
  }
}






