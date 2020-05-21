import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String AnimatedDialog_LTR_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DialogTransition_LTR) To Be Runned\n\n"
    "-This Class Is Stateless Widget (No Change On Widget Data)\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Centered RaisedButton Having Value Text 'Show Dialog!' Taking As An Child\n\n"
    "-Once The Button Is Pressed The Dialog Will Be Shown With Setup\n\n"
    "-context Needed As There Is A Build And Pushing A Dialog\n\n"
    "-barrierDismissible Set To True (When Touching Outside Will Pop Dialog)\n\n"
    "-barrierLabel Set To Nothing\n\n"
    "-transitionDuration Set To 1Sec (Time To Finish)\n\n"
    "-transitionBuilder Used To SeT To Buils The Transition Setting Taking Context Animation From a1 To Animation To a2 Taking Slide Transition That Tween From Given Begin Axis To The Center(Offset.zero)\n\n"
    "-child Take Dialog Where Shape Set To Rounded Rectangle By 8 All Sides Taking Childs To Be Shown(Container With Width 120 Having Column Taking 3 Rows,First One ListTile,Divider And A Text)\n\n"
    "-Finally Building The Page With pageBuilder\n\n ";


List AnimatedDialog_LTR_List =[
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
              CmpTitle(Title:"Animated Dialog Transition",),
              Divider(),
              CmpSubTitle(SubTitle:"Slided From Left To Right.",),
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
              CmpTitle(Title:"Must Know",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Offset(-1, 0) => Left To Right\n"
                "Offset( 1, 0) => Right To Left\n"
                "Offset( 0,-1) => Top To Bottom\n"
                "Offset( 0, 1) => Bottom To Top\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
            CmpCode(CodeTxt:
                "showGeneralDialog(\n"
                " context: context,\n"
                " barrierDismissible:true,\n"
                " barrierLabel:'',\n"
                " transitionDuration:Duration(seconds:1),\n"
                " transitionBuilder: (\n"
                "  BuildContext context,\n"
                "  Animation<double> a1,\n"
                "  Animation<double> a2,\n"
                "  Widget child\n"
                " )=>SlideTransition(\n"
                "  position:Tween<Offset>(\n"
                "  begin:const Offset(-1,0),\n"
                "  end:Offset.zero,\n"
                " ).animate(a1),\n"
                " child:Dialog (\n"
                "  shape: RoundedRectangleBorder (\n"
                "   borderRadius: BorderRadius.circular (8),\n"
                "  ),\n"
                "  child://Any Widget\n"
                "  ),\n"
                " ),\n"
                " pageBuilder: (context,anim1,anim2){\n"
                "  return Transform.rotate(\n"
                "   angle:anim1.value,\n"
                "  );\n"
                " }\n"
                ");\n",
            ),
          ],
        ),
      ),
    ),
  ),
];


//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------

String AnimatedDialog_RTL_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DialogTransition_RTL) To Be Runned\n\n"
    "-This Class Is Stateless Widget (No Change On Widget Data)\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Centered RaisedButton Having Value Text 'Show Dialog!' Taking As An Child\n\n"
    "-Once The Button Is Pressed The Dialog Will Be Shown With Setup\n\n"
    "-context Needed As There Is A Build And Pushing A Dialog\n\n"
    "-barrierDismissible Set To True (When Touching Outside Will Pop Dialog)\n\n"
    "-barrierLabel Set To Nothing\n\n"
    "-transitionDuration Set To 1Sec (Time To Finish)\n\n"
    "-transitionBuilder Used To SeT To Buils The Transition Setting Taking Context Animation From a1 To Animation To a2 Taking Slide Transition That Tween From Given Begin Axis To The Center(Offset.zero)\n\n"
    "-child Take Dialog Where Shape Set To Rounded Rectangle By 8 All Sides Taking Childs To Be Shown(Container With Width 120 Having Column Taking 3 Rows,First One ListTile,Divider And A Text)\n\n"
    "-Finally Building The Page With pageBuilder\n\n ";


List AnimatedDialog_RTL_List =[
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
              CmpTitle(Title:"Animated Dialog Transition",),
              Divider(),
              CmpSubTitle(SubTitle:"Slided From Right To Left.",),
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
              CmpTitle(Title:"Must Know",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                    "Offset(-1, 0) => Left To Right\n"
                    "Offset( 1, 0) => Right To Left\n"
                    "Offset( 0,-1) => Top To Bottom\n"
                    "Offset( 0, 1) => Bottom To Top\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
            CmpCode(CodeTxt:
            "showGeneralDialog(\n"
                " context: context,\n"
                " barrierDismissible:true,\n"
                " barrierLabel:'',\n"
                " transitionDuration:Duration(seconds:1),\n"
                " transitionBuilder: (\n"
                "  BuildContext context,\n"
                "  Animation<double> a1,\n"
                "  Animation<double> a2,\n"
                "  Widget child\n"
                " )=>SlideTransition(\n"
                "  position:Tween<Offset>(\n"
                "  begin:const Offset(1,0),\n"
                "  end:Offset.zero,\n"
                " ).animate(a1),\n"
                " child:Dialog (\n"
                "  shape: RoundedRectangleBorder (\n"
                "   borderRadius: BorderRadius.circular (8),\n"
                "  ),\n"
                "  child://Any Widget\n"
                "  ),\n"
                " ),\n"
                " pageBuilder: (context,anim1,anim2){\n"
                "  return Transform.rotate(\n"
                "   angle:anim1.value,\n"
                "  );\n"
                " }\n"
                ");\n",
            ),
          ],
        ),
      ),
    ),
  ),
];


//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------


String AnimatedDialog_TTB_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DialogTransition_TTB) To Be Runned\n\n"
    "-This Class Is Stateless Widget (No Change On Widget Data)\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Centered RaisedButton Having Value Text 'Show Dialog!' Taking As An Child\n\n"
    "-Once The Button Is Pressed The Dialog Will Be Shown With Setup\n\n"
    "-context Needed As There Is A Build And Pushing A Dialog\n\n"
    "-barrierDismissible Set To True (When Touching Outside Will Pop Dialog)\n\n"
    "-barrierLabel Set To Nothing\n\n"
    "-transitionDuration Set To 1Sec (Time To Finish)\n\n"
    "-transitionBuilder Used To SeT To Buils The Transition Setting Taking Context Animation From a1 To Animation To a2 Taking Slide Transition That Tween From Given Begin Axis To The Center(Offset.zero)\n\n"
    "-child Take Dialog Where Shape Set To Rounded Rectangle By 8 All Sides Taking Childs To Be Shown(Container With Width 120 Having Column Taking 3 Rows,First One ListTile,Divider And A Text)\n\n"
    "-Finally Building The Page With pageBuilder\n\n ";


List AnimatedDialog_TTB_List =[
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
              CmpTitle(Title:"Animated Dialog Transition",),
              Divider(),
              CmpSubTitle(SubTitle:"Slided From Top To Bottom.",),
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
              CmpTitle(Title:"Must Know",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Offset(-1, 0) => Left To Right\n"
                    "Offset( 1, 0) => Right To Left\n"
                    "Offset( 0,-1) => Top To Bottom\n"
                    "Offset( 0, 1) => Bottom To Top\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
            CmpCode(CodeTxt:
            "showGeneralDialog(\n"
                " context: context,\n"
                " barrierDismissible:true,\n"
                " barrierLabel:'',\n"
                " transitionDuration:Duration(seconds:1),\n"
                " transitionBuilder: (\n"
                "  BuildContext context,\n"
                "  Animation<double> a1,\n"
                "  Animation<double> a2,\n"
                "  Widget child\n"
                " )=>SlideTransition(\n"
                "  position:Tween<Offset>(\n"
                "  begin:const Offset(0,-1),\n"
                "  end:Offset.zero,\n"
                " ).animate(a1),\n"
                " child:Dialog (\n"
                "  shape: RoundedRectangleBorder (\n"
                "   borderRadius: BorderRadius.circular (8),\n"
                "  ),\n"
                "  child://Any Widget\n"
                "  ),\n"
                " ),\n"
                " pageBuilder: (context,anim1,anim2){\n"
                "  return Transform.rotate(\n"
                "   angle:anim1.value,\n"
                "  );\n"
                " }\n"
                ");\n",
            ),
          ],
        ),
      ),
    ),
  ),
];


//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------


String AnimatedDialog_BTT_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DialogTransition_BTT) To Be Runned\n\n"
    "-This Class Is Stateless Widget (No Change On Widget Data)\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial App That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Centered RaisedButton Having Value Text 'Show Dialog!' Taking As An Child\n\n"
    "-Once The Button Is Pressed The Dialog Will Be Shown With Setup\n\n"
    "-context Needed As There Is A Build And Pushing A Dialog\n\n"
    "-barrierDismissible Set To True (When Touching Outside Will Pop Dialog)\n\n"
    "-barrierLabel Set To Nothing\n\n"
    "-transitionDuration Set To 1Sec (Time To Finish)\n\n"
    "-transitionBuilder Used To SeT To Buils The Transition Setting Taking Context Animation From a1 To Animation To a2 Taking Slide Transition That Tween From Given Begin Axis To The Center(Offset.zero)\n\n"
    "-child Take Dialog Where Shape Set To Rounded Rectangle By 8 All Sides Taking Childs To Be Shown(Container With Width 120 Having Column Taking 3 Rows,First One ListTile,Divider And A Text)\n\n"
    "-Finally Building The Page With pageBuilder\n\n ";


List AnimatedDialog_BTT_List =[
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
              CmpTitle(Title:"Animated Dialog Transition",),
              Divider(),
              CmpSubTitle(SubTitle:"Slided From Bottom To Top.",),
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
              CmpTitle(Title:"Must Know",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Offset(-1, 0) => Left To Right\n"
                    "Offset( 1, 0) => Right To Left\n"
                    "Offset( 0,-1) => Top To Bottom\n"
                    "Offset( 0, 1) => Bottom To Top\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
            CmpCode(CodeTxt:
            "showGeneralDialog(\n"
                " context: context,\n"
                " barrierDismissible:true,\n"
                " barrierLabel:'',\n"
                " transitionDuration:Duration(seconds:1),\n"
                " transitionBuilder: (\n"
                "  BuildContext context,\n"
                "  Animation<double> a1,\n"
                "  Animation<double> a2,\n"
                "  Widget child\n"
                " )=>SlideTransition(\n"
                "  position:Tween<Offset>(\n"
                "  begin:const Offset(0,1),\n"
                "  end:Offset.zero,\n"
                " ).animate(a1),\n"
                " child:Dialog (\n"
                "  shape: RoundedRectangleBorder (\n"
                "   borderRadius: BorderRadius.circular (8),\n"
                "  ),\n"
                "  child://Any Widget\n"
                "  ),\n"
                " ),\n"
                " pageBuilder: (context,anim1,anim2){\n"
                "  return Transform.rotate(\n"
                "   angle:anim1.value,\n"
                "  );\n"
                " }\n"
                ");\n",
            ),
          ],
        ),
      ),
    ),
  ),
];


