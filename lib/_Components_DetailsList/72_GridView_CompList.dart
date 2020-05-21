import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String GridView_Count_Explanation=
    "-Main Is The Principal Method That Run The Program,Once Runned Will Lunch Class GridView_Count_Run()\n\n"
    "-Creating Class GridView_Count_Run StatefullWidget Due To Data Change (Axis,Texts...),And Creating Its State\n\n"
    "-Creating State Class _GridViewState That Extends Its Main State From The Main Class GridView_Count_Run\n\n"
    "-Creating Double Variable CrossAxisCountValue Initialized To 3,Used To Know Items Displayed Per Row\n\n"
    "-Creating Integer Variable CrossAxisCountValueInt Initialized To 3,Converted To Int To be Used When Displaying Text Without Decimal Values\n\n"
    "-Create Integer Value _RadioScrollValue Used To Group Radio And Know Its Value,If 0 then User Selected Axis.vertical If 1 User Selected Axis.horizontal \n\n"
    "-Storing Axis In Variable Created ScrollAxisDirection Initialized To Vertical On Start\n\n"
    "-Creating Double Variable MainAxisSpacingValue Initialized To 30,Used To Set Space Horizontally\n\n"
    "-Creating Integer Variable MainAxisSpacingValueInt Initialized To 30,Converted To Int To be Used When Displaying Text Without Decimal Values\n\n"
    "-Creating Double Variable CrossAxisSpacingValue Initialized To 30,Used To Set Space Vertically\n\n"
    "-Creating Integer Variable CrossAxisSpacingValueInt Initialized To 30,Converted To Int To be Used When Displaying Text Without Decimal Values\n\n"
    "-Creating Method _setCrossAxisCountValue Used To Update CrossAxisCountValue Value on Slider Value Change By User\n\n"
    "-Creating Method _setMainAxisSpacingValue Used To Update MainAxisSpacingValue Value on Slider Value Change By User\n\n"
    "-Creating Method _setCrossAxisSpacingValue Used To Update CrossAxisSpacingValue Value on Slider Value Change By User\n\n"
    "-Creating Method _RadioScrollDirectionChange Used To Update _RadioScrollValue Value On User Select Change, 0->vertical 1->horizontal\n\n"
    "-As Flutter Is Based On Widgets A Widget Must Be Builded\n\n"
    "-Creating A MaterialApp That Has An Title Taking As An Home An Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Simple Text\n\n"
    "-As An Body Taking A Column (Elements Displayed On Rows)\n\n"
    "-Row 1 Taking A Container With Height 195 Taking Column(Elements Represented On Rows) That Take 4 Rows,Each Row Elements Displyed Into Column (Radio,Text,Slider...)\n\n"
    "-Row 2 Taking The Left Height By Expanded Taking Container With Max Width Taking A GridView.count With Each Option Taking Variables That We Have Created And Described At The Top\n\n"
    "-GridView Taking As Childrens 6 Images Loaded From Assets\n\n";


List GridView_Count_list =[
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
              CmpTitle(Title:"GridView.count",),
              Divider(),
              CmpSubTitle(SubTitle:"Create A Scrollable 2D Array Of Widgets With A Fixed Number Of Tiles In The CrossAxis.",),
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



String GridView_Builder_Explanation=
    "-Main Is The Principal Method That Run The Program,Once Runned Will Lunch Class GridView__Builder_Run()\n\n"
    "-Creating Class WallPaper That Take A Constructor Used To Initialize Data(ImageSrc,Title,Desc) Of Each Object That Will Be Created\n\n"
    "-Creating Class GridView__Builder_Run StatefullWidget Due To Data Change (crossAxisCountValue,Texts...),And Creating Its State\n\n"
    "-Creating State Class _GridViewState That Extends Its Main State From The Main Class GridView__Builder_Run\n\n"
    "-Creating List WallPaperList That Take 3 Objects Of Class WallPaper Each Having Different Data\n\n"
    "-Creating Integer Variable crossAxisCountValue Initialized to 2,Used To Show Number Of Items Per Row\n\n"
    "-Creating Method _setCrossAxisCountValue Used To Update crossAxisCountValue Value on Slider Value Change By User\n\n"
    "-As Flutter Is Based On Widgets A Widget Must Be Builded\n\n"
    "-Creating A MaterialApp That Has An Title Taking As An Home An Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Simple Text\n\n"
    "-As An Body Taking A Column (Elements Displayed On Rows)\n\n"
    "-Row 1 Taking A Container With Height 50 Taking Column(Elements Represented On Rows) That Take 1 Rows (Elements Displayed On Columns) Where Col1 Take Text And Col2 Take A Slider\n\n"
    "-Row 2 Taking The Left Height By Expanded Taking Container With Max Width Taking A GridView.builder\n\n"
    "-GridView.builder Take itemCount (All Data Number),Here Initialized Into List So We're Taking Its Length (0,1,2) 3Items\n\n"
    "-GridView Taking As Childrens Returned Card Divided By Column (2Rows), Row1 Take Conatiner Filled By  Image That Fill All The Container,Row2 Container With height 65 And Teal Bg Having ListTile Taking Title And SubTitle \n\n";




List GridView_Builder_list =[
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
              CmpTitle(Title:"GridView.builder",),
              Divider(),
              CmpSubTitle(SubTitle:"Create A Scrollable 2D Array Of Widgets That Are Created On Demand.",),
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
                 "GridView.builder(\n"
                 " itemCount:4,\n"
                 " gridDelegate:\n"
                 "  SliverGridDelegateWithFixedCrossAxisCount(\n"
                 "    crossAxisCount:2,\n"
                 "  ),\n"
                 " itemBuilder: (context,index){\n"
                 "  return Widget...\n"
                 " }\n"
                 ")\n",
              )
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




String GridView_Custom_Explanation=
    "-Main Is The Principal Method That Run The Program,Once Runned Will Lunch Class GridView_Custom()\n\n"
    "-Creating Class GridView_Custom StatefullWidget Due To Data Change (Axis,Texts...),And Creating Its State\n\n"
    "-Creating State Class _GridViewState That Extends Its Main State From The Main Class GridView_Custom\n\n"
    "-Creating Integer Variable crossAxisCountValue Initialized To 2,Used To Determine Items Shows Per Row And Changed On User Slider Value Slide\n\n"
    "-Creating Method _setCrossAxisCountValue Used To Update crossAxisCountValue Value To Slider New Changed Value\n\n"
    "-setState Needed As There Is Page State Of Variables Change\n\n"
    "-As Flutter Is Based On Widgets A Widget Must Be Builded\n\n"
    "-Creating A MaterialApp That Has An Title Taking As An Home An Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Simple Text\n\n"
    "-As An Body Taking A Column (Elements Displayed On Rows)\n\n"
    "-Row 1 Taking A Container With Height 50 Taking Column(Elements Represented On Rows) That Take 1 Rows (Elements Displayed On Columns) Where Col1 Take Text And Col2 Take A Slider,Slider Change Call Method _setCrossAxisCountValue That Update crossAxisCountValue Variable\n\n"
    "-Row 2 Taking The Left Height By Expanded Taking Container With Max Width Taking A GridView.custom\n\n"
    "-Items To Be Shown Per Row Set By SliverGridDelegateWithFixedCrossAxisCount crossAxisCount Taking Value Of Our Slider (2 On Start)\n\n"
    "-Finally Children Set By SliverChildListDelegate That Take A List That Loop And Generate 6 Items Placed Into Conatiner That Take A GridTile\n\n";


List GridView_Custom_list =[
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
              CmpTitle(Title:"GridView.custom",),
              Divider(),
              CmpSubTitle(SubTitle:"Create A Scrollable 2D Array Of Widgets With Both SliverGridDelegate And SliverChildDelefate.",),
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
              CmpTitle(Title:"SliverGridDelegate:",),
              Divider(),
              CmpSubTitle(SubTitle:"Controls The Layout Of Tiles In A Grid.",),
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
              CmpTitle(Title:"SliverChildDelegate:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Delegate That Supplies Children For Silvers.",),
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
                 "GridView.custom(\n"
                 " gridDelegate:\n"
                 "  SliverGridDelegateWithFixedCrossAxisCount(\n"
                 "    crossAxisCount: 3\n"
                 "  ),\n"
                 " childrenDelegate:\n"
                 "  SliverChildListDelegate(\n"
                 "   ...\n"
                 "  ),\n"
                 ")\n",
              )
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




String GridView_Extent_Explanation=
    "-Main Is The Principal Method That Run The Program,Once Runned Will Lunch Class GridView_Extent()\n\n"
    "-Creating Class GridView_Extent StatefullWidget Due To Data Change (Axis,Texts...),And Creating Its State\n\n"
    "-Creating State Class _GridViewState That Extends Its Main State From The Main Class GridView_Extent\n\n"
    "-Creating Integer Variable maxCrossAxisExtentValue Initialized To 100,Used To Determine Max Item Width Per Row\n\n"
    "-Creating Double Variable ItemDisplayedPerRowDouble,Used To Calculate How Many Item Displayed Per Row As Decimal (ScreenWidth/CrossAxisValue)\n\n"
    "-Creating Integer Variable ItemDisplayedPerRowInt That Convert ItemDisplayedPerRowDouble To Int\n\n "
    "-Creating Method _setmaxCrossAxisExtentValue Used To Update maxCrossAxisExtentValue Value To Slider New Changed Value,And Calculating The New ItemDisplayedPerRowDouble And Convert It To Int, +1 Due To Start From Index 0\n\n"
    "-setState Needed As There Is Page State Of Variables Change\n\n"
    "-As Flutter Is Based On Widgets A Widget Must Be Builded\n\n"
    "-Creating A MaterialApp That Has An Title Taking As An Home An Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-As An AppBar It Take A Simple Text\n\n"
    "-As An Body Taking A Column (Elements Displayed On Rows)\n\n"
    "-Row 1 Taking A Container With Height 50 Taking Column(Elements Represented On Rows) That Take 1 Rows (Elements Displayed On Columns) Where Col1 Take Text And Col2 Take A Slider,Slider Change Call Method _setCrossAxisCountValue That Update crossAxisCountValue Variable\n\n"
    "-Row 2 Taking The Left Height By Expanded Taking Container With Max Width Taking A GridView.extent\n\n"
    "-Grid Scrolled Vertically\n\n"
    "-Finally Children Take A List That Loop And Generate 40 Items Placed Into Container With Teal BgColor Having Centered Index (Number In Each Loop)\n\n";



List GridView_Extent_list =[
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
              CmpTitle(Title:"GridView.extent",),
              Divider(),
              CmpSubTitle(SubTitle:"Create A Scrollable 2D Array Of Widgets With Tiles That Each Have A Maximum CrossAxis Extent.",),
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
                 "GridView.extent(\n"
                 " maxCrossAxisExtent: 200.0,\n"
                 " children: <Widget>[\n"
                 "  //Widgets\n"
                 " ],\n"
                 ")\n",
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

