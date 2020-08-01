import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/26_SimpleLoader/1_SLD1_Run.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/26_SimpleLoader/2_SLD2_Run.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code_Page.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_ListTile_GoCode.dart';
import 'package:marquee/marquee.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import '27_Advanced_Loader_CompList.dart';


class Simple_Loader extends StatefulWidget{
  Simple_Loader({Key Key}) : super (key: Key);
  Simple_Loader_State createState() => Simple_Loader_State();
}


class Simple_Loader_State extends State<Simple_Loader> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Simple Loaders",
      home:Scaffold(
        appBar: new AppBar(
          leading: IconButton(
            icon: new Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed("/Video_Url");
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
                        text:"Simple Loaders",
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
                Navigator.of(context).pushReplacementNamed("/Main");
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed("/Advanced_Loaders");
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
                         CmpSubTitle(SubTitle:"Used To Show User That The Page Is Loading Contents\n\n",),
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
                               Title:"Linear Progress Indicator",
                               Code:SLD1_Code,
                               SWidth:25,
                               SHeight:10,
                               PutWidget:SLD1_Widget,
                               GoRoute:"/SLD1",
                             ),

                             Divider(),

                         Cmp_ListTile_GoCode(
                           Title:"Circular Progress Indicator",
                           Code:SLD2_Code,
                           SWidth:25,
                           SHeight:25,
                           PutWidget:SLD2_Widget,
                           GoRoute:"/SLD2",
                         ),












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


        "/SLD1": (BuildContext context)                                          =>CmpCodePage(
          Title:"Linear Progress Indicator",
          BackRoute:"/Simple_Loaders",
          NextRoute:"/SLD2",
          ItemList:SLD1_list,
          CodeRoute:"lib/Codes_FrontEnd/26_SimpleLoader/1_SLD1_Run.dart",
          TabIcon:Icon(Icons.timelapse),
          ToDo:"We Need To Write A Page That Show A Centered LinearProgressIndicator\n",
          TxtExplanation:SLD1_Explanation,
          RunCodeRoute:new SLD1Run(),
        ),

        "/SLD2": (BuildContext context)                                          =>CmpCodePage(
          Title:"Circular Progress Indicator",
          BackRoute:"/SLD1",
          NextRoute:"/Advanced_Loaders",
          ItemList:SLD2_list,
          CodeRoute:"lib/Codes_FrontEnd/26_SimpleLoader/2_SLD2_Run.dart",
          TabIcon:Icon(Icons.timelapse),
          ToDo:"We Need To Write A Page That Show A Centered CircularProgressIndicator\n",
          TxtExplanation:SLD2_Explanation,
          RunCodeRoute:new SLD2Run(),
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

Widget SLD1_Widget=
LinearProgressIndicator(
  backgroundColor:
  Colors.deepPurple,
  valueColor:
  AlwaysStoppedAnimation<Color>(Colors.purple),
);

String SLD1_Code=
  "LinearProgressIndicator(\n"
  " backgroundColor:\n"
  "  Colors.deepPurple,\n"
  " valueColor:\n"
  "  AlwaysStoppedAnimation<Color>(\n"
  "    Colors.purple,\n"
  "  ),\n"
  ")\n";


String SLD1_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SLD1Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take A LinearProgressIndicator\n\n"
    "-Has BackgroundColor Set To deepPurple\n\n"
    "-Active Moving Color Set To Purple\n\n";


List SLD1_list =[
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
                    "LinearProgressIndicator(\n"
                    " backgroundColor:\n"
                    "  Colors.deepPurple,\n"
                    " valueColor:\n"
                    "  AlwaysStoppedAnimation<Color>(\n"
                    "    Colors.purple,\n"
                    "  ),\n"
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

Widget SLD2_Widget=
CircularProgressIndicator(
  backgroundColor:
  Colors.blueAccent,
  valueColor:
  AlwaysStoppedAnimation<Color>(Colors.indigo),
);

String SLD2_Code=
    "CircularProgressIndicator(\n"
    " backgroundColor:\n"
    "  Colors.blueAccent,\n"
    " valueColor:\n"
    "  AlwaysStoppedAnimation<Color>(\n"
    "    Colors.indigo,\n"
    "  ),\n"
    ")\n";


String SLD2_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SLD2Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Loader(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As AppBar It Has An Title Text\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-Centered Layout Take A CircularProgressIndicator\n\n"
    "-Has BackgroundColor Set To blueAccent\n\n"
    "-Active Moving Color Set To indigo\n\n";


List SLD2_list =[
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
                    "CircularProgressIndicator(\n"
                    " backgroundColor:\n"
                    "  Colors.blueAccent,\n"
                    " valueColor:\n"
                    "  AlwaysStoppedAnimation<Color>(\n"
                    "    Colors.indigo,\n"
                    "  ),\n"
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