import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/10_LD10_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/11_LD11_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/12_LD12_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/13_LD13_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/14_LD14_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/15_LD15_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/16_LD16_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/17_LD17_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/18_LD18_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/19_LD19_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/1_LD1_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/20_LD20_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/2_LD2_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/3_LD3_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/4_LD4_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/5_LD5_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/6_LD6_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/7_LD7_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/8_LD8_Run.dart';
import 'package:flutter_tutorials_and_quizzes/27_Advanced_Loader/9_LD9_Run.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code_Page.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Intro_Page.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_ListTile_GoCode.dart';
import 'package:marquee/marquee.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import '../main.dart';
import '28_Animation_CompList.dart';


class Advanced_Loader extends StatefulWidget{
  Advanced_Loader({Key Key}) : super (key: Key);
  Advanced_Loader_State createState() => Advanced_Loader_State();
}


class Advanced_Loader_State extends State<Advanced_Loader> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Advanced Loaders",
      home:Scaffold(
        appBar: new AppBar(
          leading: IconButton(
            icon: new Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed("/Simple_Loaders");
            },
          ),
          title: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child:
                  SizedBox(
                      width: MediaQuery.of(context).size.width-50,
                      height: MediaQuery.of(context).size.height,
                      child:
                      Marquee(
                        text:"Advanced Loaders",
                        style:TextStyle(
                            fontSize:20,
                            fontWeight:FontWeight.bold,
                            color:Colors.white
                        ),
                        scrollAxis:Axis.horizontal,
                        blankSpace:300,
                        crossAxisAlignment:CrossAxisAlignment.center,
                      )
                  )
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.format_list_numbered),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed("/Animation_Intro");
              },
            ),
          ],
        ),
        body:
         ListView(
           children: <Widget>[

             SizedBox(height:5,),
             Container (
               padding: new EdgeInsets.only(bottom: 20.0),
               child:
               new Card(
                 child: new Container(
                   padding: new EdgeInsets.all(15.0),
                   child: new Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         CmpTitle(Title:"Loader",),
                         Divider(),
                         CmpSubTitle(SubTitle:"Used To Show User That The Page Is Loading Contents\n\nBefore Getting Started We Need To Load Into Yaml:\nflutter_spinkit: ^2.1.0\n",),
                         Image.asset("Images/LoaderYaml.PNG"),
                         CmpSubTitle(SubTitle:"\nWhen We Need To Use It We Have To Import:\nimport 'package:flutter_spinkit/flutter_spinkit.dart';\n",),
                       ]
                   ),
                 ),
               ),
             ),
             SizedBox(height:5,),
             Container (
               padding: new EdgeInsets.only(bottom: 20.0),
               child:
               new Card(
                 child: new Container(
                   padding: new EdgeInsets.all(15.0),
                   child: new Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         CmpTitle(Title:"Loaders:",),
                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Rotating Circle",
                           Code:LD1_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD1_Widget,
                           GoRoute:"/LD1",
                         ),

                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Chasing Dots",
                           Code:LD2_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD2_Widget,
                           GoRoute:"/LD2",
                         ),

                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Circle",
                           Code:LD3_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD3_Widget,
                           GoRoute:"/LD3",
                         ),

                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Cube Grid",
                           Code:LD4_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD4_Widget,
                           GoRoute:"/LD4",
                         ),

                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Double Bounce",
                           Code:LD5_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD5_Widget,
                           GoRoute:"/LD5",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Dual Ring",
                           Code:LD6_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD6_Widget,
                           GoRoute:"/LD6",
                         ),

                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Fading Circle",
                           Code:LD7_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD7_Widget,
                           GoRoute:"/LD7",
                         ),

                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Fading Cube",
                           Code:LD8_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD8_Widget,
                           GoRoute:"/LD8",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Fading Four",
                           Code:LD9_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD9_Widget,
                           GoRoute:"/LD9",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Fading Grid",
                           Code:LD10_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD10_Widget,
                           GoRoute:"/LD10",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Folding Cube",
                           Code:LD11_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD11_Widget,
                           GoRoute:"/LD11",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"HourGlass",
                           Code:LD12_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD12_Widget,
                           GoRoute:"/LD12",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Pouring HourGlass",
                           Code:LD13_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD13_Widget,
                           GoRoute:"/LD13",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Pulse",
                           Code:LD14_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD14_Widget,
                           GoRoute:"/LD14",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Pumping Heart",
                           Code:LD15_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD15_Widget,
                           GoRoute:"/LD15",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Ring",
                           Code:LD16_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD16_Widget,
                           GoRoute:"/LD16",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Ripple",
                           Code:LD17_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD17_Widget,
                           GoRoute:"/LD17",
                         ),


                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Wave",
                           Code:LD18_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD18_Widget,
                           GoRoute:"/LD18",
                         ),

                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Wandering Cubes",
                           Code:LD19_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD19_Widget,
                           GoRoute:"/LD19",
                         ),

                         Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Three Bounce",
                           Code:LD20_Code,
                           SWidth:40,
                           SHeight:40,
                           PutWidget:LD20_Widget,
                           GoRoute:"/LD20",
                         ),

                         Divider(),











                       ]
                   ),
                 ),
               ),
             ),

           ],
         ),
      ),



      routes: <String, WidgetBuilder>{

        "/Advanced_Loaders": (BuildContext context)                            =>Advanced_Loader(),

        "/LD1": (BuildContext context)                                          =>CmpCodePage(
          Title:"Rotating Circle",
          BackRoute:"/Advanced_Loaders",
          NextRoute:"/LD2",
          ItemList:LD1_list,
          CodeRoute:"lib/27_Advanced_Loader/1_LD1_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit RotatingCircle Loader In The Center With Loading Text\n",
          TxtExplanation:LD1_Explanation,
          RunCodeRoute:new LD1Run(),
        ),

        "/LD2": (BuildContext context)                                          =>CmpCodePage(
          Title:"Chasing Dots",
          BackRoute:"/LD1",
          NextRoute:"/LD3",
          ItemList:LD2_list,
          CodeRoute:"lib/27_Advanced_Loader/2_LD2_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit ChasingDots Loader In The Center With Loading Text\n",
          TxtExplanation:LD2_Explanation,
          RunCodeRoute:new LD2Run(),
        ),

        "/LD3": (BuildContext context)                                          =>CmpCodePage(
          Title:"Circle",
          BackRoute:"/LD2",
          NextRoute:"/LD4",
          ItemList:LD3_list,
          CodeRoute:"lib/27_Advanced_Loader/3_LD3_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Circle Loader In The Center With Loading Text\n",
          TxtExplanation:LD3_Explanation,
          RunCodeRoute:new LD3Run(),
        ),

        "/LD4": (BuildContext context)                                          =>CmpCodePage(
          Title:"Cube Grid",
          BackRoute:"/LD3",
          NextRoute:"/LD5",
          ItemList:LD4_list,
          CodeRoute:"lib/27_Advanced_Loader/4_LD4_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit CubeGrid Loader In The Center With Loading Text\n",
          TxtExplanation:LD4_Explanation,
          RunCodeRoute:new LD4Run(),
        ),

        "/LD5": (BuildContext context)                                          =>CmpCodePage(
          Title:"Double Bounce",
          BackRoute:"/LD4",
          NextRoute:"/LD6",
          ItemList:LD5_list,
          CodeRoute:"lib/27_Advanced_Loader/5_LD5_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit DoubleBounce Loader In The Center With Loading Text\n",
          TxtExplanation:LD5_Explanation,
          RunCodeRoute:new LD5Run(),
        ),

        "/LD6": (BuildContext context)                                          =>CmpCodePage(
          Title:"Dual Ring",
          BackRoute:"/LD5",
          NextRoute:"/LD7",
          ItemList:LD6_list,
          CodeRoute:"lib/27_Advanced_Loader/6_LD6_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit DualRing Loader In The Center With Loading Text\n",
          TxtExplanation:LD6_Explanation,
          RunCodeRoute:new LD6Run(),
        ),


        "/LD7": (BuildContext context)                                          =>CmpCodePage(
          Title:"Fading Circle",
          BackRoute:"/LD6",
          NextRoute:"/LD8",
          ItemList:LD7_list,
          CodeRoute:"lib/27_Advanced_Loader/7_LD7_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit FadingCircle Loader In The Center With Loading Text\n",
          TxtExplanation:LD7_Explanation,
          RunCodeRoute:new LD7Run(),
        ),


        "/LD8": (BuildContext context)                                          =>CmpCodePage(
          Title:"Fading Cube",
          BackRoute:"/LD7",
          NextRoute:"/LD9",
          ItemList:LD8_list,
          CodeRoute:"lib/27_Advanced_Loader/8_LD8_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit FadingCube Loader In The Center With Loading Text\n",
          TxtExplanation:LD8_Explanation,
          RunCodeRoute:new LD8Run(),
        ),


        "/LD9": (BuildContext context)                                          =>CmpCodePage(
          Title:"Fading Four",
          BackRoute:"/LD8",
          NextRoute:"/LD10",
          ItemList:LD9_list,
          CodeRoute:"lib/27_Advanced_Loader/9_LD9_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit FadingFour Loader In The Center With Loading Text\n",
          TxtExplanation:LD9_Explanation,
          RunCodeRoute:new LD9Run(),
        ),


        "/LD10": (BuildContext context)                                          =>CmpCodePage(
          Title:"Fading Grid",
          BackRoute:"/LD9",
          NextRoute:"/LD11",
          ItemList:LD10_list,
          CodeRoute:"lib/27_Advanced_Loader/10_LD10_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit FadingGrid Loader In The Center With Loading Text\n",
          TxtExplanation:LD10_Explanation,
          RunCodeRoute:new LD10Run(),
        ),

        "/LD11": (BuildContext context)                                          =>CmpCodePage(
          Title:"Folding Cube",
          BackRoute:"/LD10",
          NextRoute:"/LD12",
          ItemList:LD11_list,
          CodeRoute:"lib/27_Advanced_Loader/11_LD11_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit FoldingCube Loader In The Center With Loading Text\n",
          TxtExplanation:LD11_Explanation,
          RunCodeRoute:new LD11Run(),
        ),

        "/LD12": (BuildContext context)                                          =>CmpCodePage(
          Title:"HourGlass",
          BackRoute:"/LD11",
          NextRoute:"/LD13",
          ItemList:LD12_list,
          CodeRoute:"lib/27_Advanced_Loader/12_LD12_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit HourGlass Loader In The Center With Loading Text\n",
          TxtExplanation:LD12_Explanation,
          RunCodeRoute:new LD12Run(),
        ),

        "/LD13": (BuildContext context)                                          =>CmpCodePage(
          Title:"Pouring HourGlass",
          BackRoute:"/LD12",
          NextRoute:"/LD14",
          ItemList:LD13_list,
          CodeRoute:"lib/27_Advanced_Loader/13_LD13_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Pouring HourGlass Loader In The Center With Loading Text\n",
          TxtExplanation:LD13_Explanation,
          RunCodeRoute:new LD13Run(),
        ),


        "/LD14": (BuildContext context)                                          =>CmpCodePage(
          Title:"Pulse",
          BackRoute:"/LD13",
          NextRoute:"/LD15",
          ItemList:LD14_list,
          CodeRoute:"lib/27_Advanced_Loader/14_LD14_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Pulse Loader In The Center With Loading Text\n",
          TxtExplanation:LD14_Explanation,
          RunCodeRoute:new LD14Run(),
        ),


        "/LD15": (BuildContext context)                                          =>CmpCodePage(
          Title:"Pumping Heart",
          BackRoute:"/LD14",
          NextRoute:"/LD16",
          ItemList:LD15_list,
          CodeRoute:"lib/27_Advanced_Loader/15_LD15_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Pumping Heart Loader In The Center With Loading Text\n",
          TxtExplanation:LD15_Explanation,
          RunCodeRoute:new LD15Run(),
        ),


        "/LD16": (BuildContext context)                                          =>CmpCodePage(
          Title:"Ring",
          BackRoute:"/LD15",
          NextRoute:"/LD17",
          ItemList:LD16_list,
          CodeRoute:"lib/27_Advanced_Loader/16_LD16_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Ring Loader In The Center With Loading Text\n",
          TxtExplanation:LD16_Explanation,
          RunCodeRoute:new LD16Run(),
        ),

        "/LD17": (BuildContext context)                                          =>CmpCodePage(
          Title:"Ripple",
          BackRoute:"/LD16",
          NextRoute:"/LD18",
          ItemList:LD17_list,
          CodeRoute:"lib/27_Advanced_Loader/17_LD17_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Ripple Loader In The Center With Loading Text\n",
          TxtExplanation:LD17_Explanation,
          RunCodeRoute:new LD17Run(),
        ),


        "/LD18": (BuildContext context)                                          =>CmpCodePage(
          Title:"Wave",
          BackRoute:"/LD17",
          NextRoute:"/LD19",
          ItemList:LD18_list,
          CodeRoute:"lib/27_Advanced_Loader/18_LD18_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Wave Loader In The Center With Loading Text\n",
          TxtExplanation:LD18_Explanation,
          RunCodeRoute:new LD18Run(),
        ),

        "/LD19": (BuildContext context)                                          =>CmpCodePage(
          Title:"Wandering Cubes",
          BackRoute:"/LD18",
          NextRoute:"/LD20",
          ItemList:LD19_list,
          CodeRoute:"lib/27_Advanced_Loader/19_LD19_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Wandering Cubes Loader In The Center With Loading Text\n",
          TxtExplanation:LD19_Explanation,
          RunCodeRoute:new LD19Run(),
        ),

        "/Animation_Intro": (BuildContext context)                              =>CmpIntroPage(
          Title:"Animation Intro",
          BackRoute:"/Advanced_Loaders",
          NextRoute:"/Animation_Opacity",
          ItemList:Animation_Intro_list,
        ),

        "/LD20": (BuildContext context)                                          =>CmpCodePage(
          Title:"Three Bounce",
          BackRoute:"/LD19",
          NextRoute:"/Animation_Intro",
          ItemList:LD20_list,
          CodeRoute:"lib/27_Advanced_Loader/20_LD20_Run.dart",
          TabIcon:Icon(Icons.av_timer),
          ToDo:"We Need To Write A Page That Show A SpinKit Three Bounce Loader In The Center With Loading Text\n",
          TxtExplanation:LD20_Explanation,
          RunCodeRoute:new LD20Run(),
        ),




      }
    );
  }


}

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD1_Widget=
SpinKitRotatingCircle(
    color:Colors.red,
    size: 40,
  );

String LD1_Code=
  "SpinKitRotatingCircle(\n"
  "  color:Colors.red,\n"
  "  size: 40,\n"
  ")\n";


String LD1_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD1Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD1_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "SpinKitRotatingCircle(\n"
                "  color:Colors.blue,\n"
                "  size:40,\n"
                "),\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD2_Widget=
SpinKitChasingDots(
  color:Colors.blue,
  size: 40,
);

String LD2_Code=
    "SpinKitChasingDots(\n"
    "  color:Colors.blue,\n"
    "  size: 40,\n"
    ")\n";


String LD2_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD2Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD2_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitChasingDots(\n"
                    "  color:Colors.blue,\n"
                    "  size:40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


Widget LD3_Widget=
SpinKitCircle(
  color:Colors.yellow,
  size: 40,
);

String LD3_Code=
    "SpinKitCircle(\n"
    "  color:Colors.yellow,\n"
    "  size: 40,\n"
    ")\n";


String LD3_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD3Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD3_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitCircle(\n"
                    "  color:Colors.yellow,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD4_Widget=
SpinKitCubeGrid(
  color:Colors.orange,
  size: 40,
);

String LD4_Code=
    "SpinKitCubeGrid(\n"
    "  color:Colors.orange,\n"
    "  size: 40,\n"
    ")\n";


String LD4_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD4Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD4_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitCubeGrid(\n"
                    "  color:Colors.orange,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD5_Widget=
SpinKitDoubleBounce(
  color:Colors.green,
  size: 40,
);

String LD5_Code=
    "SpinKitDoubleBounce(\n"
    "  color:Colors.green,\n"
    "  size: 40,\n"
    ")\n";


String LD5_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD5Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD5_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitDoubleBounce(\n"
                    "  color:Colors.green,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD6_Widget=
SpinKitDualRing(
  color:Colors.grey,
  size: 40,
);

String LD6_Code=
    "SpinKitDualRing(\n"
    "  color:Colors.grey,\n"
    "  size: 40,\n"
    ")\n";


String LD6_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD6Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD6_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "SpinKitDualRing(\n"
                    "  color:Colors.grey,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD7_Widget=
SpinKitFadingCircle(
  color:Colors.teal,
  size: 40,
);

String LD7_Code=
    "SpinKitFadingCircle(\n"
    "  color:Colors.teal,\n"
    "  size: 40,\n"
    ")\n";


String LD7_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD7Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD7_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitFadingCircle(\n"
                    "  color:Colors.teal,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD8_Widget=
SpinKitFadingCube(
  color:Colors.pink,
  size: 40,
);

String LD8_Code=
    "SpinKitFadingCube(\n"
    "  color:Colors.pink,\n"
    "  size: 40,\n"
    ")\n";


String LD8_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD8Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD8_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitFadingCube(\n"
                    "  color:Colors.pink,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


Widget LD9_Widget=
SpinKitFadingFour(
  color:Colors.yellow,
  size: 40,
);

String LD9_Code=
    "SpinKitFadingFour(\n"
    "  color:Colors.yellow,\n"
    "  size: 40,\n"
    ")\n";


String LD9_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD9Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD9_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                   "SpinKitFadingFour(\n"
                    "  color:Colors.yellow,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


Widget LD10_Widget=
SpinKitFadingGrid(
  color:Colors.grey,
  size: 40,
);

String LD10_Code=
    "SpinKitFadingGrid(\n"
    "  color:Colors.grey,\n"
    "  size: 40,\n"
    ")\n";


String LD10_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD10Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD10_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitFadingGrid(\n"
                    "  color:Colors.grey,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


Widget LD11_Widget=
SpinKitFoldingCube(
  color:Colors.red,
  size: 40,
);

String LD11_Code=
    "SpinKitFoldingCube(\n"
    "  color:Colors.red,\n"
    "  size: 40,\n"
    ")\n";


String LD11_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD11Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD11_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitFoldingCube(\n"
                    "  color:Colors.red,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


Widget LD12_Widget=
SpinKitHourGlass(
  color:Colors.yellow,
  size: 40,
);

String LD12_Code=
    "SpinKitHourGlass(\n"
    "  color:Colors.yellow,\n"
    "  size: 40,\n"
    ")\n";


String LD12_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD12Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD12_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitHourGlass(\n"
                    "  color:Colors.yellow,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


Widget LD13_Widget=
SpinKitPouringHourglass(
  color:Colors.green,
  size: 40,
);

String LD13_Code=
    "SpinKitPouringHourglass(\n"
    "  color:Colors.green,\n"
    "  size: 40,\n"
    ")\n";


String LD13_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD13Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD13_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitPouringHourglass(\n"
                    "  color:Colors.green,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


Widget LD14_Widget=
SpinKitPulse(
  color:Colors.blue,
  size: 40,
);

String LD14_Code=
    "SpinKitPulse(\n"
    "  color:Colors.blue,\n"
    "  size: 40,\n"
    ")\n";


String LD14_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD14Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD14_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitPulse(\n"
                    "  color:Colors.blue,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD15_Widget=
SpinKitPumpingHeart(
  color:Colors.red,
  size: 40,
);

String LD15_Code=
    "SpinKitPumpingHeart(\n"
    "  color:Colors.red,\n"
    "  size: 40,\n"
    ")\n";


String LD15_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD15Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD15_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitPumpingHeart(\n"
                    "  color:Colors.red,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];



//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD16_Widget=
SpinKitRing(
  color:Colors.yellow,
  size: 40,
);

String LD16_Code=
    "SpinKitRing(\n"
    "  color:Colors.yellow,\n"
    "  size: 40,\n"
    ")\n";


String LD16_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD16Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD16_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitRing(\n"
                    "  color:Colors.yellow,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];


//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD17_Widget=
SpinKitRipple(
  color:Colors.grey,
  size: 40,
);

String LD17_Code=
    "SpinKitRipple(\n"
    "  color:Colors.grey,\n"
    "  size: 40,\n"
    ")\n";


String LD17_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD17Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD17_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitRipple(\n"
                    "  color:Colors.grey,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];


//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD18_Widget=
SpinKitWave(
  color:Colors.pink,
  size: 40,
);

String LD18_Code=
    "SpinKitWave(\n"
    "  color:Colors.pink,\n"
    "  size: 40,\n"
    ")\n";


String LD18_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD18Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD18_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitWave(\n"
                    "  color:Colors.pink,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];


//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD19_Widget=
SpinKitWanderingCubes(
  color:Colors.green,
  size: 40,
);

String LD19_Code=
    "SpinKitWanderingCubes(\n"
    "  color:Colors.green,\n"
    "  size: 40,\n"
    ")\n";


String LD19_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD19Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD19_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitWanderingCubes(\n"
                    "  color:Colors.green,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];


//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

Widget LD20_Widget=
SpinKitThreeBounce(
  color:Colors.yellow,
  size: 23,
);

String LD20_Code=
    "SpinKitThreeBounce(\n"
    "  color:Colors.yellow,\n"
    "  size: 23,\n"
    ")\n";


String LD20_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(LD20Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take Column (Column Centered)\n\n"
    "-As First Row It Take The Loader With Its Size And Color\n\n"
    "-As Second Row It Take Text Loading\n\n";


List LD20_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SpinKitThreeBounce(\n"
                    "  color:Colors.yellow,\n"
                    "  size: 40,\n"
                    ")\n",
              )
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
];