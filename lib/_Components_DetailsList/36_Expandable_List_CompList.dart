import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



String ExpandableList_Simple_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class SimpleExpandableListRun\n\n"
    "-Creating Class SimpleExpandableListRun Stateless No Change To Do\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Method PopAlert That Show Dialog When ListTile is tapped\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes A Scrollable ListView To Avoid OverFlow\n\n"
    "-Taking Column (Elements Placed Into Rows\n\n"
    "-Row 1 taking A Text\n\n"
    "-Row 2 And 3 Taking ExpansionTile Having Title And Taking ListTile(title+Subtitle) And Divider\n\n"
    "-Once ListTile Tapped Will call Method PopAlert";


List ExpandableList_Simple_list =[
  SizedBox(height:5,),
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
                    "ExpansionTile(\n"
                    " title:Text('txt'),\n"
                    " children: <Widget>[\n"
                    "  ListTile (\n"
                    "   title:Text('Txt),\n"
                    "   subtitle:Text('Txt'),\n"
                    "   onTap: (){ //Do },\n"
                    "  ),\n"
                    "  //you Can Add More ListTiles"
                    " ],\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String ExpandableList_Trail_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class ExpandableListTrail\n\n"
    "-Creating Class ExpandableListTrail Stateless No Change To Do\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Method PopAlert That Show Dialog When ListTile is tapped\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes A Scrollable ListView To Avoid OverFlow\n\n"
    "-Taking Column (Elements Placed Into Rows\n\n"
    "-Row 1 taking A Text\n\n"
    "-Row 2 And 3 Taking ExpansionTile Having Title And Taking ListTile(title+Subtitle+trail) And Divider\n\n"
    "-Trail Taking In Arrow Icon\n\n"
    "-Once ListTile Tapped Will call Method PopAlert";


List ExpandableList_Trail_list =[
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
              CmpTitle(Title:"ListTile Trail:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Right Side Of ListTile,Probably Used To Show Icons",
              ),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "ExpansionTile(\n"
                    " title:Text('txt'),\n"
                    " children: <Widget>[\n"
                    "  ListTile (\n"
                    "   title:Text('Txt),\n"
                    "   subtitle:Text('Txt'),\n"
                    "   trailing://Widget(button,Icon...),"
                    "   onTap: (){ //Do },\n"
                    "  ),\n"
                    "  //you Can Add More ListTiles"
                    " ],\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String ExpandableList_BackColor_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class ExpandableListBackColor\n\n"
    "-Creating Class ExpandableListBackColor Stateless No Change To Do\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Method PopAlert That Show Dialog When ListTile is tapped\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes A Scrollable ListView To Avoid OverFlow\n\n"
    "-Taking Column (Elements Placed Into Rows\n\n"
    "-Row 1 taking A Text\n\n"
    "-Row 2 And 3 Taking ExpansionTile Having Title,Background Color Set To blueGrey And Leaded With An Icon And Taking ListTile(title+Subtitle+trail) And Divider\n\n"
    "-Trail Taking In Arrow Icon\n\n"
    "-Once ListTile Tapped Will call Method PopAlert";


List ExpandableList_BackColor_list =[
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
              CmpTitle(Title:"Exoansion BackgroundColor:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Set A Background Color When Expansion Opened",
              ),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "ExpansionTile(\n"
                    " backgroundColor: Colors.blueGrey,\n"
                    " leading:Icon(Icons.perm_identity),\n"
                    " title:Text('txt'),\n"
                    " children: <Widget>[\n"
                    "  ListTile (\n"
                    "   title:Text('Txt),\n"
                    "   subtitle:Text('Txt'),\n"
                    "   trailing://Widget(button,Icon...),"
                    "   onTap: (){ //Do },\n"
                    "  ),\n"
                    "  //you Can Add More ListTiles"
                    " ],\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------



String ExpandableList_Cards_Icon_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class ExpandableListCardsIcons\n\n"
    "-Creating Class ExpandableListCardsIcons Stateless No Change To Do\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Method PopAlert That Show Dialog When ListTile is tapped\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes A Scrollable ListView To Avoid OverFlow\n\n"
    "-Taking Column (Elements Placed Into Rows\n\n"
    "-Row 1 taking A Text\n\n"
    "-Row 2 And 3 ExpansionTile Having Title,Background Color Set To blueGrey And Leaded With An Icon And Taking Card Having Grey Bg Taking ListTile(title+Subtitle+trail) And Divider\n\n"
    "-Once ListTile Tapped Will call Method PopAlert";


List ExpandableList_Cards_Icon_list =[
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
              CmpTitle(Title:"Card ListTile:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Styling ListTile",
              ),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "ExpansionTile(\n"
                    " backgroundColor: Colors.blueGrey,\n"
                    " leading:Icon(Icons.perm_identity),\n"
                    " title:Text('txt'),\n"
                    " children: <Widget>[\n"
                    "  Card:"
                    "  child:ListTile (\n"
                    "   title:Text('Txt),\n"
                    "   subtitle:Text('Txt'),\n"
                    "   trailing://Widget(button,Icon...),"
                    "   onTap: (){ //Do },\n"
                    "   ),\n"
                    "  ),\n"
                    "  //you Can Add More cards"
                    " ],\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------



String ExpandableList_Customized_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class ExpandableListCardsIcons\n\n"
    "-Creating Class ExpandableListCardsIcons Stateless No Change To Do\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Method PopAlert That Show Dialog When ListTile is tapped\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes A Scrollable ListView To Avoid OverFlow\n\n"
    "-Taking Column (Elements Placed Into Rows\n\n"
    "-Row 1 taking A Text\n\n"
    "-Row 2 And 3 ExpansionTile Having Title,Background Color Set To blueGrey And Leaded With An Icon And Taking Card Having Grey Bg Taking ListTile(title+Subtitle+trail) And Divider\n\n"
    "-Once ListTile Tapped Will call Method PopAlert";



List ExpandableList_Customized_list =[
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
              CmpTitle(Title:"Customized ExpansionTile:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "Class ExpansionTile Here Recreate ExpansionTile With Added Designs",
              ),
            ]
        ),
      ),
    ),
  ),

];



//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------





String ExpandableList_Sound_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class ExpandableListTapSoundRun\n\n"
    "-Creating Class ExpandableListTapSoundRun Statefull Due To Sound,creating Its State\n\n"
    "-Creating State Class _ExpLstSoundState Extending Its Main Class From ExpandableListTapSoundRun\n\n"
    "-Creating AudioCache And Audio Player Varible\n\n"
    "-When Page Initialized It Set its State And Initialize Player That Create AudioPlayer And Cache\n\n"
    "-Creating Play TapSound Method That Play Sound From Asset\n\n"
    "-Creating Boll Variable _ETvalue That Indicated If Expansion Opened(true) Closed(false)\n\n"
    "-Creating Method _onETChanged Taking As Parameter Value That Return True If Opened False If Closed And Set It To The Var ETvalue\n\n"
    "-Now Comparing ETvalue If true (Opened) Then Play Sound,If false(Closed) Also Play Sounds\n\n"
    "-You Can Get Rides Of Ifs And Call PlayTapSound Method One Time\n\n "
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes A Scrollable ListView To Avoid OverFlow\n\n"
    "-Taking Column (Elements Placed Into Rows\n\n"
    "-Row 1 taking A Text\n\n"
    "-Row 2 ExpansionTile Having Title Taking ListTile(title+Subtitle)\n\n";


List ExpandableList_Sound_list =[
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
              CmpTitle(Title:"Check State:",),
              Divider(),
              CmpSubTitle(SubTitle:"Creating Bool Variable That Indicate If Expansion Opened(True) Closed(false)\n",),
              CmpCode(CodeTxt: "bool _ETvalue = false;",),

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
              CmpTitle(Title:"On Expansion State Change:",),
              Divider(),
              CmpCode(
                CodeTxt:
                 "void _onETChanged(bool value) {\n"
                 " setState (() {\n"
                 "  _ETvalue = value;\n\n"
                 "  if(_ETvalue==false){\n"
                 "   PlayTapSound();\n"
                 "  }\n"
                 "  else{\n"
                 "   PlayTapSound();\n"
                 "  }\n"
                 " });\n"
                 "}\n"
),

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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                   "ExpansionTile(\n"
                    " onExpansionChanged:_onETChanged,\n"
                    " title:Text('txt'),\n"
                    " children: <Widget>[\n"
                    "  ListTile (\n"
                    "   title:Text('Txt),\n"
                    "   subtitle:Text('Txt'),\n"
                    "   trailing://Widget(button,Icon...),"
                    "   onTap: (){ //Do },\n"
                    "  ),\n"
                    "  //you Can Add More ListTiles"
                    " ],\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];



//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String ExpandableList_Anim_Explanation=
    "-main Is Principal Method Runned Once Program Started Calling Class ExpandableListAnimationRun\n\n"
    "-Creating Class ExpandableListAnimationRun Statefull Due To Image Aniamtion,creating Its State\n\n"
    "-Creating State Class _ExpLstAnimState Extending Its Main Class From ExpandableListTapSoundRun\n\n"
    "-When Page Initialized It Set its State\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body Takes A Scrollable ListView To Avoid OverFlow\n\n"
    "-Taking Column (Elements Placed Into Rows\n\n"
    "-Row 1 taking A Text\n\n"
    "-Row 2 ExpansionTile Having Title Taking ListTile(title+Subtitle)\n\n"
    "-ExpansionTile Title Now Taking A Container Having  Row(Elements Placed Into Col)\n"
    "-Col 1 Taking Sized Box Taking 80% Of Width Screen Taking Just Text\n"
    "-Col 2 Taking The Animated Image That Play Elastic Out Animation \n\n"
    "-Check Animation Course...\n\n";



List ExpandableList_Anim_list =[
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
                    "ExpansionTile(\n"
                    " title:\n"
                    " Container(\n"
                    " child:\n"
                    "  Row(\n"
                    "  children: <Widget>[\n"
                    "   SizedBox(\n"
                    "    width:MediaQuery.of(context).size.width -105,\n"
                    "    child:\n"
                    "     Text ('Txt'),"
                    "   ),\n"
                    "   Animator(\n"
                    "    //Check Animatiom Course\n"
                    "   )\n"
                    " children: <Widget>[\n"
                    "  ListTile (\n"
                    "   title:Text('Txt),\n"
                    "   subtitle:Text('Txt'),\n"
                    "   trailing://Widget(button,Icon...),"
                    "   onTap: (){ //Do },\n"
                    "  ),\n"
                    "  //you Can Add More ListTiles"
                    " ],\n"
                    ")\n",
              ),

            ]
        ),
      ),
    ),
  ),
];



//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------










