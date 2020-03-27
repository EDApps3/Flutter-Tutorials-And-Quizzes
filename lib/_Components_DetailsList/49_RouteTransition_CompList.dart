import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var RouteTransition_Intro_CompList =[
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
              CmpTitle(Title:"What Is Route Transition?",),
              Divider(),
              CmpSubTitle(SubTitle:"Provide An Animation Of How The Page Gonna Go To Its Route.",),
            ]
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

String RouteTransition_SlideRight_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling SlideRightMain Class\n\n"
    "-SlideRightMain Represent Page1 Class\n\n"
    "-Before Creating SlideRightMain Class And Page2 Class Lets Create The Transition Class\n\n"
    "-Creating Class SlideRightRoute Extending PageRouteBuilder As The Is Transition From Page To Another Page\n\n"
    "-Creating Final Variable Page Of Type Widget,That Will be Sent Via Constructor And Used Everytime We Call Into Different Pages Transitions\n\n"
    "-Now Creating The Constructor That It Has To Be Same Class Name Taking As Parameter Page Representing Target Page To Go\n\n"
    "-pageBuilder Take Context And 2 Animations From And To Going to => Page By A SlideTransition That Tween From Begining From Left To Right To The End Of The Page Playing The Animation\n\n"
    "-Noting That Offset Take (distance x , distance y )\n\n"
    "-Creating Class SlideRightMain And Its Widget Taking Material App Having Light Theme And As An home Taking Page1 Class\n\n"
    "-Creating Page1 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page2()\n\n"
    "-Creating Page2 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page1()\n\n";


List RouteTransition_SlideRight_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Offset(X,Y)\n\n"
                    "To Left  => Offset( 1, 0 )\n\n"
                    "To Right => Offset(-1, 0 )\n\n"
                    "To Up    => Offset( 0, 1 )\n\n"
                    "To Down  => Offset( 0,-1)\n\n",
              )
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
              CmpCode(
                CodeTxt:
                    "class SlideRightRoute extends PageRouteBuilder {\n"
                    " final Widget page;\n"
                    " SlideRightRoute({this.page}): super(\n"
                    "  pageBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "  ) =>\n"
                    "  page,\n"
                    "  transitionsBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "   Widget child,\n"
                    "  ) =>\n"
                    "  SlideTransition(\n"
                    "   position: Tween<Offset>(\n"
                    "   begin: const Offset(-1, 0),\n"
                    "   end: Offset.zero,\n"
                    "  ).animate(animation),\n"
                    "  child: child,\n"
                    " ),\n"
                    ");\n"
                    "}\n",
              ),
            ]
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


String RouteTransition_SlideLeft_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling SlideLeftMain Class\n\n"
    "-SlideLeftMain Represent Page1 Class\n\n"
    "-Before Creating SlideLeftMain Class And Page2 Class Lets Create The Transition Class\n\n"
    "-Creating Class SlideLeftRoute Extending PageRouteBuilder As The Is Transition From Page To Another Page\n\n"
    "-Creating Final Variable Page Of Type Widget,That Will be Sent Via Constructor And Used Everytime We Call Into Different Pages Transitions\n\n"
    "-Now Creating The Constructor That It Has To Be Same Class Name Taking As Parameter Page Representing Target Page To Go\n\n"
    "-pageBuilder Take Context And 2 Animations From And To Going to => Page By A SlideTransition That Tween From Begining From Right To Left To The End Of The Page Playing The Animation\n\n"
    "-Noting That Offset Take (distance x , distance y )\n\n"
    "-Creating Class SlideLeftMain And Its Widget Taking Material App Having Light Theme And As An home Taking Page1 Class\n\n"
    "-Creating Page1 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page2()\n\n"
    "-Creating Page2 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page1()\n\n";


List RouteTransition_SlideLeft_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                      "Offset(X,Y)\n\n"
                      "To Left  => Offset( 1, 0 )\n\n"
                      "To Right => Offset(-1, 0 )\n\n"
                      "To Up    => Offset( 0, 1 )\n\n"
                          "To Down  => Offset( 0,-1)\n\n",
              )
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
              CmpCode(
                CodeTxt:
                    "class SlideLeftRoute extends PageRouteBuilder {\n"
                    " final Widget page;\n"
                    " SlideLeftRoute({this.page}): super(\n"
                    "  pageBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "  ) =>\n"
                    "  page,\n"
                    "  transitionsBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "   Widget child,\n"
                    "  ) =>\n"
                    "  SlideTransition(\n"
                    "   position: Tween<Offset>(\n"
                    "   begin: const Offset(1, 0),\n"
                    "   end: Offset.zero,\n"
                    "  ).animate(animation),\n"
                    "  child: child,\n"
                    " ),\n"
                    ");\n"
                    "}\n",
              ),
            ]
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



String RouteTransition_SlideUp_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling SlideUpMain Class\n\n"
    "-SlideUpMain Represent Page1 Class\n\n"
    "-Before Creating SlideUpMain Class And Page2 Class Lets Create The Transition Class\n\n"
    "-Creating Class SlideUpRoute Extending PageRouteBuilder As The Is Transition From Page To Another Page\n\n"
    "-Creating Final Variable Page Of Type Widget,That Will be Sent Via Constructor And Used Everytime We Call Into Different Pages Transitions\n\n"
    "-Now Creating The Constructor That It Has To Be Same Class Name Taking As Parameter Page Representing Target Page To Go\n\n"
    "-pageBuilder Take Context And 2 Animations From And To Going to => Page By A SlideTransition That Tween From Begining From Down To Top Of  Of The Page Playing The Animation\n\n"
    "-Noting That Offset Take (distance x , distance y )\n\n"
    "-Creating Class SlideUpMain And Its Widget Taking Material App Having Light Theme And As An home Taking Page1 Class\n\n"
    "-Creating Page1 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page2()\n\n"
    "-Creating Page2 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page1()\n\n";


List RouteTransition_SlideUp_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Offset(X,Y)\n\n"
                    "To Left  => Offset( 1, 0 )\n\n"
                    "To Right => Offset(-1, 0 )\n\n"
                    "To Up    => Offset( 0, 1 )\n\n"
                    "To Down  => Offset( 0,-1)\n\n",
              )
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
              CmpCode(
                CodeTxt:
                    "class SlideUpRoute extends PageRouteBuilder {\n"
                    " final Widget page;\n"
                    " SlideUpRoute({this.page}): super(\n"
                    "  pageBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "  ) =>\n"
                    "  page,\n"
                    "  transitionsBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "   Widget child,\n"
                    "  ) =>\n"
                    "  SlideTransition(\n"
                    "   position: Tween<Offset>(\n"
                    "   begin: const Offset(0, 1),\n"
                    "   end: Offset.zero,\n"
                    "  ).animate(animation),\n"
                    "  child: child,\n"
                    " ),\n"
                    ");\n"
                    "}\n",
              ),
            ]
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




String RouteTransition_SlideDown_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling SlideDownMain Class\n\n"
    "-SlideDownMain Represent Page1 Class\n\n"
    "-Before Creating SlideDownMain Class And Page2 Class Lets Create The Transition Class\n\n"
    "-Creating Class SlideDownRoute Extending PageRouteBuilder As The Is Transition From Page To Another Page\n\n"
    "-Creating Final Variable Page Of Type Widget,That Will be Sent Via Constructor And Used Everytime We Call Into Different Pages Transitions\n\n"
    "-Now Creating The Constructor That It Has To Be Same Class Name Taking As Parameter Page Representing Target Page To Go\n\n"
    "-pageBuilder Take Context And 2 Animations From And To Going to => Page By A SlideTransition That Tween From Begining From Top To THe End  Of The Page Playing The Animation\n\n"
    "-Noting That Offset Take (distance x , distance y )\n\n"
    "-Creating Class SlideDownMain And Its Widget Taking Material App Having Light Theme And As An home Taking Page1 Class\n\n"
    "-Creating Page1 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page2()\n\n"
    "-Creating Page2 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page1()\n\n";


List RouteTransition_SlideDown_list =[
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
              CmpTitle(Title:"Must Know:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Offset(X,Y)\n\n"
                    "To Left  => Offset( 1, 0 )\n\n"
                    "To Right => Offset(-1, 0 )\n\n"
                    "To Up    => Offset( 0, 1 )\n\n"
                    "To Down  => Offset( 0,-1)\n\n",
              )
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
              CmpCode(
                CodeTxt:
                    "class SlideDownRoute extends PageRouteBuilder {\n"
                    " final Widget page;\n"
                    " SlideUpRoute({this.page}): super(\n"
                    "  pageBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "  ) =>\n"
                    "  page,\n"
                    "  transitionsBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "   Widget child,\n"
                    "  ) =>\n"
                    "  SlideTransition(\n"
                    "   position: Tween<Offset>(\n"
                    "   begin: const Offset(0,-1),\n"
                    "   end: Offset.zero,\n"
                    "  ).animate(animation),\n"
                    "  child: child,\n"
                    " ),\n"
                    ");\n"
                    "}\n",
              ),
            ]
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


String RouteTransition_Scale_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling ScaleMain Class\n\n"
    "-ScaleMain Represent Page1 Class\n\n"
    "-Before Creating ScaleMain Class And Page2 Class Lets Create The Transition Class\n\n"
    "-Creating Class ScalePageRoute Extending PageRouteBuilder As The Is Transition From Page To Another Page\n\n"
    "-Creating Final Variable Page Of Type Widget,That Will be Sent Via Constructor And Used Everytime We Call Into Different Pages Transitions\n\n"
    "-Now Creating The Constructor That It Has To Be Same Class Name Taking As Parameter Page Representing Target Page To Go\n\n"
    "-pageBuilder Take Context And 2 Animations From And To Going to => Page By A ScaleTransition That Scale From Center(0.0) To The Full Page Sides(1.0) Playing The Animation fast out slow in\n\n"
    "-Creating Class SlideDownMain And Its Widget Taking Material App Having Light Theme And As An home Taking Page1 Class\n\n"
    "-Creating Page1 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page2()\n\n"
    "-Creating Page2 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page1()\n\n";


List RouteTransition_Scale_list =[
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
                    "class ScalePageRoute extends PageRouteBuilder {\n"
                    " final Widget page;\n"
                    " ScalePageRoute({this.page}): super(\n"
                    "  pageBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "  ) =>\n"
                    "  page,\n"
                    "  transitionsBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "   Widget child,\n"
                    "  ) =>\n"
                    "  ScaleTransition(\n"
                    "   scale: Tween<double>(\n"
                    "    begin: 0.0,\n"
                    "    end: 1.0,\n"
                    "  ).animate(\n"
                    "   CurvedAnimation(\n"
                    "    parent: animation,\n"
                    "    curve: Curves.fastOutSlowIn,\n"
                    "   ),\n"
                    " ),\n"
                    " child: child,\n"
                    " ),\n"
                    ");"
                    "}\n",
              ),
            ]
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


String RouteTransition_Rotate_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling RotateMain Class\n\n"
    "-RotateMain Represent Page1 Class\n\n"
    "-Before Creating RotateMain Class And Page2 Class Lets Create The Transition Class\n\n"
    "-Creating Class RotationRoute Extending PageRouteBuilder As The Is Transition From Page To Another Page\n\n"
    "-Creating Final Variable Page Of Type Widget,That Will be Sent Via Constructor And Used Everytime We Call Into Different Pages Transitions\n\n"
    "-Now Creating The Constructor That It Has To Be Same Class Name Taking As Parameter Page Representing Target Page To Go\n\n"
    "-pageBuilder Take Context And 2 Animations From And To Going to => Page By A RotateTransition That Rotate From Center(0.0) To The Full Page Sides(1.0) Playing The Animation linear\n\n"
    "-Creating Class RotateMain And Its Widget Taking Material App Having Light Theme And As An home Taking Page1 Class\n\n"
    "-Creating Page1 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page2()\n\n"
    "-Creating Page2 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page1()\n\n";


List RouteTransition_Rotate_list =[
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
                    "class RotationRoute extends PageRouteBuilder {\n"
                    " final Widget page;\n"
                    " RotationRoute({this.page}): super(\n"
                    "  pageBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "  ) =>\n"
                    "  page,\n"
                    "  transitionsBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "   Widget child,\n"
                    "  ) =>\n"
                    "  RotationRoute(\n"
                    "   scale: Tween<double>(\n"
                    "    begin: 0.0,\n"
                    "    end: 1.0,\n"
                    "  ).animate(\n"
                    "   CurvedAnimation(\n"
                    "    parent: animation,\n"
                    "    curve: Curves.linear,\n"
                    "   ),\n"
                    " ),\n"
                    " child: child,\n"
                    " ),\n"
                    ");"
                    "}\n",
              ),
            ]
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

String RouteTransition_Size_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling SizeTransMain Class\n\n"
    "-SizeTransMain Represent Page1 Class\n\n"
    "-Before Creating SizeTransMain Class And Page2 Class Lets Create The Transition Class\n\n"
    "-Creating Class SizeRoute Extending PageRouteBuilder As The Is Transition From Page To Another Page\n\n"
    "-Creating Final Variable Page Of Type Widget,That Will be Sent Via Constructor And Used Everytime We Call Into Different Pages Transitions\n\n"
    "-Now Creating The Constructor That It Has To Be Same Class Name Taking As Parameter Page Representing Target Page To Go\n\n"
    "-pageBuilder Take Context And 2 Animations From And To Going to => Page By An Align To Fit All The Page\n\n"
    "-Creating Class SizeTransMain And Its Widget Taking Material App Having Light Theme And As An home Taking Page1 Class\n\n"
    "-Creating Page1 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page2()\n\n"
    "-Creating Page2 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page1()\n\n";


List RouteTransition_Size_list =[
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
                    "class SizeRoute extends PageRouteBuilder {\n"
                    " final Widget page;\n"
                    " SizeRoute({this.page}): super(\n"
                    "  pageBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "  ) =>\n"
                    "  page,\n"
                    "  transitionsBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "   Widget child,\n"
                    "  ) =>\n"
                    "  Align(\n"
                    "   child: SizeTransition(\n"
                    "   sizeFactor: animation,\n"
                    "   child: child,\n"
                    "  ),\n"
                    " ),\n"
                    ");\n"
                    "}\n",
              ),
            ]
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



String RouteTransition_Fade_Explanation=
    "-Main Is The Principal Method Runned Once The Program Runned And Calling FadeTransMain Class\n\n"
    "-FadeTransMain Represent Page1 Class\n\n"
    "-Before Creating FadeTransMain Class And Page2 Class Lets Create The Transition Class\n\n"
    "-Creating Class FadeRoute Extending PageRouteBuilder As The Is Transition From Page To Another Page\n\n"
    "-Creating Final Variable Page Of Type Widget,That Will be Sent Via Constructor And Used Everytime We Call Into Different Pages Transitions\n\n"
    "-Now Creating The Constructor That It Has To Be Same Class Name Taking As Parameter Page Representing Target Page To Go\n\n"
    "-pageBuilder Take Context And 2 Animations From And To Going to => Page By A Fade Transition Playing Animation animation\n\n"
    "-Creating Class FadeTransMain And Its Widget Taking Material App Having Light Theme And As An home Taking Page1 Class\n\n"
    "-Creating Page1 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page2()\n\n"
    "-Creating Page2 Class And Its Widget Having MaterialApp That Take Light Theme,As An Home Taking Scaffold Allowing To Set AppBar Having Simple Title And Body Having A Cenetred Button\n\n"
    "-Once Button Is Clicked The Navigator Changing Page Context To Class We Created To Do The Transition And Giving It The Page Class Page1()\n\n";


List RouteTransition_Fade_list =[
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
                    "class FadeRoute extends PageRouteBuilder {\n"
                    " final Widget page;\n"
                    " FadeRoute({this.page}): super(\n"
                    "  pageBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "  ) =>\n"
                    "  page,\n"
                    "  transitionsBuilder: (\n"
                    "   BuildContext context,\n"
                    "   Animation<double> animation,\n"
                    "   Animation<double> secondaryAnimation,\n"
                    "   Widget child,\n"
                    "  ) =>\n"
                    "  FadeTransition(\n"
                    "   child: child,\n"
                    "   opacity: animation,\n"
                    "  ),\n"
                    " ),\n"
                    ");\n"
                    "}\n",
              ),
            ]
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



