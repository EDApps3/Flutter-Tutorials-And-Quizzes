import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String NavBarRail_Explanation=
    "-Main Is The Principal Method Used To Run ClippingClipOval Class When The Page Is Loaded\n\n"
    "-Creating Class ClippingClipOval,Stateless As There Is No Data Change After The Page Is Loaded(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take ListView To Avoid Overflowing And Allow Scrolling\n\n"
    "-ListView Take Childrens\n\n"
    "-Row 1 Represent Simple Text 'Before Applying ClipOval' \n\n"
    "-Row 2 Represent A Sized Box With Height 15 Used To Set Space\n\n"
    "-Row 3 Take A Centered Container With Width & Height 120 With teal Background Color\n\n"
    "-Row 4 Take A Divider (line)\n\n"
    "-Row 5 Represent Simple Text 'After Applying ClipOval' \n\n"
    "-Row 6 Represent A Sized Box With Height 15 Used To Set Space\n\n"
    "-Row 7 Take A Centered Clipped Container By Oval  With Width & Height 120 With teal Background Color\n\n";


List NavBarRail_list =[
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
              CmpTitle(Title:"NavigationRail",),
              Divider(),
              CmpSubTitle(SubTitle:"A Material Widget That Is Meant To Be Displayed At The Left Or Right Of An App To Navigate.Used The First Or Last Element Inside A Row.",),
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
              CmpTitle(Title:"Before Getting Started",),
              Divider(),
              CmpSubTitle(SubTitle:"Introduced In Flutter 1.17,So Make Sure You Have The Latest Version Of Flutter!.",),
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
              CmpCode(CodeTxt:"elevation:",),
              CmpSubTitle(SubTitle:"Elevation By Z Coordinates.",),

              CmpCode(CodeTxt:"extend:",),
              CmpSubTitle(SubTitle:"Indicates That The NavigationRail Should Be In Extended State (Bigger As Width).",),

              CmpCode(CodeTxt:"backgroundColor:",),
              CmpSubTitle(SubTitle:"Set The Background Color Of The Main Container Holding All Destinations!.",),

              CmpCode(CodeTxt:"labelType:",),
              CmpSubTitle(SubTitle:"Define The Layout And Behavior Of The Label\n1-NavigationRailLabelType.none dont Show text\n2-NavigationRailLabelType.selected Show Only Text Of Selected Destination\n3-NavigationRailLabelType.all Show All Texts\n",),

              CmpCode(CodeTxt:"selectedIndex:",),
              CmpSubTitle(SubTitle:"The Index Of The Active Current Destination",),

              CmpCode(CodeTxt:"selectedLabelTextStyle:",),
              CmpSubTitle(SubTitle:"Used To Style Labels Like Texts",),

              CmpCode(CodeTxt:"selectedIconTheme:",),
              CmpSubTitle(SubTitle:"Set The Theme Color Of The Selected Active Destination Icon",),

              CmpCode(CodeTxt:"unselectedIconTheme:",),
              CmpSubTitle(SubTitle:"Set The Theme Color Of The Non Selected Destination Icon",),

              CmpCode(CodeTxt:"onDestinationSelected:",),
              CmpSubTitle(SubTitle:"Called Once User Change His Navigation From Destination To Another",),

              CmpCode(CodeTxt:"destinations:",),
              CmpSubTitle(SubTitle:"Items To Be Placed On The NavigationRail",),



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

              CmpSubTitle(SubTitle:"Creating PageIndex To Be Shown Var:"),
              CmpCode(CodeTxt:"int SelectedPageIndex = 0;"),


              CmpCode(
                  CodeTxt:
                  "Row(\n"
                  " children: <Widget>[\n"
                  "  NavigationRail(\n"
                  "   elevation:13.0,\n"
                  "   extended:false,\n"
                  "   backgroundColor:Colors.teal,\n"
                  "   labelType:NavigationRailLabelType.none,\n"
                  "   selectedIndex:SelectedPageIndex,\n"
                  "   selectedLabelTextStyle:TextStyle(\n"
                  "     color:Colors.white,\n"
                  "   ),\n"
                  "   selectedIconTheme:IconThemeData(\n"
                  "    color:Colors.white,\n"
                  "   ),\n"
                  "   unselectedIconTheme:IconThemeData(\n"
                  "    color:Colors.black,\n"
                  "   ),\n"
                  "   onDestinationSelected:(index){\n"
                  "    setState(() {\n"
                  "     SelectedPageIndex=index;\n"
                  "    });\n"
                  "   },\n"
                  "   destinations:[\n"
                  "    NavigationRailDestination(\n"
                  "     icon: Icon(Icons.add),\n"
                  "       label: Text('Home'),\n"
                  "    ),\n"
                      "    NavigationRailDestination(\n"
                      "     icon: Icon(Icons.add),\n"
                      "       label: Text('Home'),\n"
                      "    ),\n"
                      "   //You CaN Add More"
"],\n"
"),\n"
"Expanded(\n"
"child:\\Any Child\n"
")\n"
"],"


    ")"
              ),
            ]
        ),
      ),
    ),
  ),
];

