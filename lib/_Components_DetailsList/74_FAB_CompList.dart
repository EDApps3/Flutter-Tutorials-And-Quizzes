import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Floating_Button_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleFloatingButton) To Be Runned\n\n"
    "-This Class Is StatefullWidget As We Are  Changing Counter Text Data (State Change),And Creating Its Main State\n\n"
    "-Creating State Class _SimpleFloatingButtonState That Extend Its Main State From The Main Class SimpleFloatingButton\n\n"
    "-Creating Integer Variable Counter Used To Store The Value Of Icrement Initialized To 0\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Take A Centered Text That Take Counter Value ( 0 On Start)\n\n"
    "-Taking As floatingActionButton A FloatingActionButton Having HeroTag That Differe It From Another FloatingActionButton When Playing Animations,With An Icon Once Pressed Incrementing Counter By 1\n\n"
    "-Set State Called Because We Need To Update Page Counter Value State\n\n";



List Floating_Button_Simple_list =[
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
              CmpTitle(Title:"floatingActionButton:",),
              Divider(),
              CmpSubTitle(SubTitle:"Circular Icon Button That Hovers Over Content To Promote A Promary Action.",),
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
              CmpTitle(Title:"Code",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Scaffold(\n"
                " ...\n"
                " floatingActionButton:FloatingActionButton(\n"
                "  heroTag:'SimpleFloatingButton',\n"
                "  child:Icon(Icons.plus_one),\n"
                "  onPressed:(){\n"
                "   //Action\n"
                "  },\n"
                " ),\n"
                ")\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------











String Floating_Button_Animated_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AnimatedFloatingActionButton) To Be Runned\n\n"
    "-This Class Is StatefullWidget As We Are  Changing Counter Text Data (State Change),And Creating Its Main State\n\n"
    "-Creating State Class _FabState That Extend Its Main State From The Main Class AnimatedFloatingActionButton\n\n"
    "-Creating Bool Variable isOpened That Will be Used To Compare If 2Buttons To Be Shown Are Hidden Or Shown,If true Then Hidden,false Shown\n\n"
    "-Creating AnimationController _animationController That Will Controll The Whole Animation\n\n"
    "-Creating Animation _buttonColor For The Button Color (blue When Closed , Red When Opened)\n\n"
    "-Creating Animation _animateIcon For The Icon Used To Controll AnimatedIcon (Menu If Closed,Close If Opened)\n\n"
    "-Creating Animation _translateButton That Translate 2 Buttons To Be Shown And Hide Them\n\n"
    "-Creating Integer Variable Counter Used To Store The Value Of Icrement Initialized To 0\n\n"
    "-When Page Is Loadded We Need To Initialize Animations And Controllers\n\n"
    "-_animationController Duration Set To Take 500ms Called In Every Change\n\n"
    "-_animateIcon Apply Tween Animation That Turn From Main To End And Taking 500ms Defined in _animationController\n\n"
    "-_buttonColor Apply CurvedAnimation Animation That Turn And Taking 500ms Defined in _animationController,Having Color Blue From Start (Closed) To Red (When Opened)\n\n"
    "-_translateButton Show The Hidden Buttons And Hide Them From Begin And End Value Given With CurvedAnimation\n\n"
    "-When Page Is Disposed(Closed) We Dispose Controller State\n\n"
    "-Creating Method animate Used To Know The Progress Of The Animation And PLaying It,If Closed Then Will Be Opened And Vice Versa\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Take A Centered Text That Take Counter Value ( 0 On Start)\n\n"
    "-Taking As floatingActionButton Column Elements Displayed On Rows\n\n"
    "-Row 1 Taking Transform That Animate The FloatingActionButton Having +1 Icon From Top(56*2) To Down(-14 Hidden),Once Clicked Increment Counter By 1\n\n"
    "-Row 2 Taking Transform That Animate The FloatingActionButton Having -1 Icon From Top(56) To Down(-14 Hidden),Once Clicked Decrement Counter By 1\n\n"
    "-Row 3 Taking FloatingActionButton That Will Be Always Shown,Taking AnimatedIcon And Animate Rest 2 Buttons\n\n";



List Floating_Button_Animated_list =[
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
              CmpTitle(Title:"Animated floatingActionButton:",),
              Divider(),
              CmpSubTitle(SubTitle:"Button That Show And Hide Buttons.",),
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
              CmpTitle(Title:"Code",),
              Divider(),

              CmpSubTitle(SubTitle:"1-Creating Bool Variable To Know Animation progress (Used To Forward Or Reverse It)",),
              CmpCode(CodeTxt:"bool isOpened = false;\n\n",),

              CmpSubTitle(SubTitle:"2-Creating Animation Controller That Controll the Animation And Set Duration:",),
              CmpCode(CodeTxt:"AnimationController _animationController;\n\n",),

              CmpSubTitle(SubTitle:"3-Creating Animation That Switch Button Color:",),
              CmpCode(CodeTxt:"Animation<Color> _buttonColor;\n\n",),

              CmpSubTitle(SubTitle:"4-Creating Animation That Switch Button Icon:",),
              CmpCode(CodeTxt:"Animation<double> _animateIcon;\n\n",),

              CmpSubTitle(SubTitle:"5-Creating Animation That Show And Hide Buttons",),
              CmpCode(CodeTxt:"  Animation<double> _translateButton;\n\n",),

              CmpSubTitle(SubTitle:"6-Initializing Main Animation Controller",),
              CmpCode(
                CodeTxt:
                 "_animationController = AnimationController(\n"
                 "  vsync: this,\n"
                 "  duration: Duration(milliseconds: 500)\n"
                 " )..addListener(() {\n"
                 "   setState(() {});\n"
                 "});\n\n",
              ),

              CmpSubTitle(SubTitle:"7-Animation Icons",),
              CmpCode(
                CodeTxt:
                "_animateIcon = Tween<double>(\n"
                "  begin: 0.0,"
                "  end: 1.0\n"
                ").animate(_animationController);\n\n",
              ),

              CmpSubTitle(SubTitle:"8-Animation ButtonColor",),
              CmpCode(
                CodeTxt:
                "_buttonColor = ColorTween(\n"
                "  begin: Colors.blue,\n"
                "  end: Colors.red,\n"
                " ).animate(CurvedAnimation(\n"
                "   parent: _animationController,\n"
                "   curve: Interval(\n"
                "    0.00,\n"
                "    1.00,\n"
                "    curve: Curves.linear,\n"
                "   ),\n"
                "  )\n"
                ");\n\n",
              ),

              CmpSubTitle(SubTitle:"9-Animation Translating Shown And Hiding Buttons",),
              CmpCode(
                CodeTxt:
                "_translateButton = Tween<double>(\n"
                "  begin:56.0,\n"
                "  end: -14.0,\n"
                "  ).animate(CurvedAnimation(\n"
                "   parent: _animationController,\n"
                "    curve: Interval(\n"
                "     0.0,"
                "     0.75,\n"
                "     curve:Curves.easeOut,\n"
                "    ),\n"
                "   )\n"
                ");\n\n",
              ),

              CmpCode(
                  CodeTxt:
                          "Scaffold(\n"
                          " floatingActionButton:Column(\n"
                          "  mainAxisAlignment: MainAxisAlignment.end,\n"
                          "  children: <Widget>[\n"
                          "   Transform(\n"
                          "     transform: Matrix4.translationValues(\n"
                          "      0.0,\n"
                          "      _translateButton.value * 2.0,\n"
                          "      0.0,\n"
                          "     ),\n"
                          "     child:FloatingActionButton(\n"
                          "      child: Icon(Icons.exposure_plus_1),\n"
                          "      onPressed:(){},\n"
                          "     ),\n"
                          "   ),\n"
                          "   Transform(\n"
                          "     transform: Matrix4.translationValues(\n"
                          "      0.0,\n"
                          "      _translateButton.value,\n"
                          "      0.0,\n"
                          "     ),\n"
                          "     child:FloatingActionButton(\n"
                          "      child: Icon(Icons.exposure_neg1_1),\n"
                          "      onPressed:(){},\n"
                          "     ),\n"
                          "   ),\n"
                          "   FloatingActionButton(\n"
                          "    backgroundColor: _buttonColor.value,\n"
                          "    onPressed: animate,\n"
                          "    tooltip: 'Toggle',\n"
                          "    child: AnimatedIcon(\n"
                          "     icon: AnimatedIcons.menu_close,\n"
                          "     progress: _animateIcon,\n"
                          "   ),\n"
                          "  ),\n"
                          " ],\n"
                          " ),\n"
                          ")\n\n\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------











String Floating_Button_Circular_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CircularFAB) To Be Runned\n\n"
    "-This Class Is StatefullWidget As We Are Changing Counter Text Data (State Change),And Creating Its Main State\n\n"
    "-Creating State Class _CircularFABState That Extend Its Main State From The Main Class CircularFAB\n\n"
    "-Creating Integer Variable Counter Used To Store The Value Of Increment Or Decrement, Initialized To 0\n\n"
    "-Creating String Variable IsOpened Initialized To No,Changable Due Menu Open And Close\n\n"
    "-Creating String Variable BtnText Initialized To OpenMenu,Used To Set Button Text Changable Due User Clicks\n\n"
    "-Creating GlobalKey fabKey To Set It To The FabCircularMenu\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Take A Row (Elements Represented Into Columns)\n\n"
    "-Col1 Taking SizedBox With Width 25\n\n"
    "-Col2 Taking Text Taking As Value The Counter Variable That Display A Styled Number\n\n"
    "-Col3 Taking SizedBox With Width 35\n\n"
    "-Col4 Taking Text Taking As Value The Variable IsOpened ( Yes | No )\n\n"
    "-Col5 Taking SizedBox With Width 35\n\n"
    "-Col6 Taking A RaisedButton Once Pressed Checking State By fabKey If Opened Will Close It And Vice Versa\n\n"
    "-As An floatingActionButton Taking A Builder That Build FabCircularMenu\n\n"
    "-FabCircularMenu Take Key To Know Its State And Can Be Controlled\n\n"
    "-Aligned To bottomRight\n\n"
    "-ringColor Color Set To Teal ( Globbing The 4 Buttons)\n\n"
    "-ringDiameter Is The Circle Rayon Diameter\n\n"
    "-ringWidth Set The Ring Width Of The ringColor Set To Teal\n\n"
    "-fabSize Set To Width 50 Size Of The Main Button That Show The 4 Buttons\n\n"
    "-fabColor Color Set Main Button That Show The 4 Buttons Color To Green\n\n"
    "-Icon When Opened Set To Close And When Closed Set To Menu\n\n"
    "-Play Curves.easeInOutCirc Animation That Take 800ms To Finish\n\n"
    "-Change handlable By Method onDisplayChange That Take As Parameter bool Value That Indicate If Open Or Closed\n\n"
    "-Finally Setting Childrens To Be Shown Followed By 2 Sizedbox Due That The Package Still unstableYet\n\n"
    "-Each FloatingActionButton Take Effect On Counter\n\n";



List Floating_Button_Circular_list =[
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
              CmpTitle(Title:"Circular FAB:",),
              Divider(),
              CmpSubTitle(SubTitle:"Flutter Package For Easy Creating A Circular Menu Using Floating Action Button.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/Circular_FAB.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:fab_circular_menu/fab_circular_menu.dart';\n",),
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
              CmpTitle(Title:"Keywords:",),
              Divider(),
              CmpCode(CodeTxt:"alignment:",),
              CmpSubTitle(SubTitle:"Set The Widget Alignment.",),
              Divider(),
              CmpCode(CodeTxt:"ringColor:",),
              CmpSubTitle(SubTitle:"The The Ring Color.",),
              Divider(),
              CmpCode(CodeTxt:"ringDiameter:",),
              CmpSubTitle(SubTitle:"Sets The Ring Diameter.",),
              Divider(),
              CmpCode(CodeTxt:"ringWidth:",),
              CmpSubTitle(SubTitle:"Sets The Ring Width",),
              Divider(),
              CmpCode(CodeTxt:"fabSize:",),
              CmpSubTitle(SubTitle:"Sets The Fab Size",),
              Divider(),
              CmpCode(CodeTxt:"fabElevation:",),
              CmpSubTitle(SubTitle:"Sets The Elevation For The FAB",),
              Divider(),
              CmpCode(CodeTxt:"fabColor:",),
              CmpSubTitle(SubTitle:"Sets The Fab Color",),
              Divider(),
              CmpCode(CodeTxt:"fabOpenColor:",),
              CmpSubTitle(SubTitle:"Set Color When Menu Is Open",),
              Divider(),
              CmpCode(CodeTxt:"fabCloseColor:",),
              CmpSubTitle(SubTitle:"Set Color When Menu Is Closed",),
              Divider(),
              CmpCode(CodeTxt:"fabOpenIcon:",),
              CmpSubTitle(SubTitle:"Set Icon When Menu Is Open",),
              Divider(),
              CmpCode(CodeTxt:"fabCloseIcon:",),
              CmpSubTitle(SubTitle:"Set Icon When Menu Is Closed",),
              Divider(),
              CmpCode(CodeTxt:"fabMargin:",),
              CmpSubTitle(SubTitle:"Sets Widget Margin",),
              Divider(),
              CmpCode(CodeTxt:"animationDuration:",),
              CmpSubTitle(SubTitle:"Change The Animation Duration",),
              Divider(),
              CmpCode(CodeTxt:"animationCurve:",),
              CmpSubTitle(SubTitle:"Allow You To Modify The Animation Curve",),
              Divider(),
              CmpCode(CodeTxt:"onDisplayChange:",),
              CmpSubTitle(SubTitle:"Called Everytime Menu Is Opened Or Closed",),
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
              CmpTitle(Title:"Code",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Builder(\n"
                " builder: (context) => FabCircularMenu(\n"
                "  key: fabKey,\n"
                "  alignment: Alignment.bottomRight,\n"
                "  ringColor: Colors.white.withAlpha(25),\n"
                "  ringDiameter: 500.0,\n"
                "  ringWidth: 90.0,\n"
                "  fabSize: 50.0,\n"
                "  fabElevation: 8.0,\n"
                "  fabColor: Colors.white,\n"
                "  fabOpenIcon:Icon(\n"
                "   Icons.menu,\n"
                "   color: primaryColor\n"
                "  ),\n"
                "  fabCloseIcon:Icon(\n"
                "   Icons.close,\n"
                "   color: primaryColor\n"
                "  ),\n"
                "  fabMargin: const EdgeInsets.all(6.0),\n"
                "  animationDuration: const Duration(milliseconds: 800),\n"
                "  animationCurve: Curves.easeInOutCirc,\n"
                "  onDisplayChange: (isOpen) {\n"
                "   if(isOpen){\n"
                "    //Do\n"
                "   }\n"
                "   else{\n"
                "    //Do\n"
                "   }\n"
                "  },\n"
                "  children: <Widget>[\n"
                "   SizedBox(),\n"
                "   SizedBox(),\n"
                "   //Widgets\n"
                "  ],\n"
                " ),\n"
                ")\n",
              )
            ]
        ),
      ),
    ),
  ),
];


//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------


