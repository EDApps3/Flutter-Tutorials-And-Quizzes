import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



String PageSelector_Simple_Explanation=
    "-main Is Principal Method Runned Once Program Is Loaded,Run SimplePageSelector\n"
    "-Creating SimplePageSelector Class,StefullWidget To To TabPage Change So We Need To Create Its State\n\n"
    "-Creating State Class _SimplePageSelectorState That Extends Its Main State From SimplePageSelector\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take An Title\n\n"
    "-As An Body DefaultTabController Taking Length 3 Due To 3 Pages Having Builder That Build Pages To Be Shown\n\n"
    "-Column Padded By 8 And Having Container Max Width With A Height 200\n\n"
    "-Icon Themes Set To Blue\n\n"
    "-Now Pages Presented In TabBar View\n\n"
    "-Finally Tab Bar Selector Show The Dots Under The Pages\n\n";


List PageSelector_Simple_list =[
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
              CmpTitle(Title:"Page Selector:",),
              Divider(),
              CmpSubTitle(SubTitle:"Multiple Slidable Page Placed Into A Column\n",),
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
              CmpTitle(Title:"Default Tab Controller Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "DefaultTabController(\n"
                    " length:3,\n"
                    " child: Builder(\n"
                    " builder:\n"
                    "  (BuildContext context) => Padding(\n"
                    "  padding: const EdgeInsets.all(8.0),\n"
                    "  child: Column(\n"
                    "   children: <Widget>[\n"
                    "    Container(\n"
                    "     width:double.infinity,\n"
                    "     height: 200,\n"
                    "     child: IconTheme(\n"
                    "     data: IconThemeData(\n"
                    "      size: 128.0,\n"
                    "      color:\n"
                    "       Theme.of(context).accentColor,\n"
                    "     ),\n"
                    "     child:\n"
                    "      TabBarView(\n"
                    "       children: <Widget>[\n"
                    "        Column(\n"
                    "         children: <Widget>[\n"
                    "          //Widgets To Show\n"
                    "         ],\n"
                    "        ),\n"
                    "        //More Columns\n"
                    "       ],\n"
                    "      ),\n"
                    "     ),\n"
                    "    ),\n"
                    "    TabPageSelector(),\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n"
                    " ),\n"
                    "),\n",
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

String PageSelector_Buttons_Explanation=
    "-main Is Principal Method Runned Once Program Is Loaded,Run SimplePageSelector\n"
    "-Creating SimplePageSelector Class,StefullWidget To To TabPage Change So We Need To Create Its State\n\n"
    "-Creating State Class _SimplePageSelectorState That Extends Its Main State From SimplePageSelector\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Grant Light Theme,Title\n\n"
    "-Taking As An Home Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take An Title\n\n"
    "-As An Body DefaultTabController Taking Length 3 Due To 3 Pages Having Builder That Build Pages To Be Shown\n\n"
    "-Column Padded By 8 And Having Container Max Width With A Height 200\n\n"
    "-Icon Themes Set To Blue\n\n"
    "-Now Pages Presented In TabBar View\n\n"
    "-Finally Tab Bar Selector Show The Dots Under The Pages\n\n"
    "-Buttons Placed Into Row(Each On Column)\n\n"
    "-Column 1 Taking Raised Button With Value < When Pressed If Controller Not Reached First Page Show Previous Page\n\n"
    "-Column 2 Taking Raised Button With Value Skip When Pressed If Show Last Page\n\n"
    "-Column 3 Taking Raised Button With Value > When Pressed If Controller Not Reached Last Page Show Next Page\n\n";



List PageSelector_Buttons_list =[
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
              CmpTitle(Title:"Page Selector:",),
              Divider(),
              CmpSubTitle(SubTitle:"Multiple Slidable Page Placed Into A Column\n",),
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
              CmpTitle(Title:"Default Tab Controller Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "DefaultTabController(\n"
                    " length:3,\n"
                    " child: Builder(\n"
                    " builder:\n"
                    "  (BuildContext context) => Padding(\n"
                    "  padding: const EdgeInsets.all(8.0),\n"
                    "  child: Column(\n"
                    "   children: <Widget>[\n"
                    "    Container(\n"
                    "     width:double.infinity,\n"
                    "     height: 200,\n"
                    "     child: IconTheme(\n"
                    "     data: IconThemeData(\n"
                    "      size: 128.0,\n"
                    "      color:\n"
                    "       Theme.of(context).accentColor,\n"
                    "     ),\n"
                    "     child:\n"
                    "      TabBarView(\n"
                    "       children: <Widget>[\n"
                    "        Column(\n"
                    "         children: <Widget>[\n"
                    "          //Widgets To Show\n"
                    "         ],\n"
                    "        ),\n"
                    "        //More Columns\n"
                    "       ],\n"
                    "      ),\n"
                    "     ),\n"
                    "    ),\n"
                    "    TabPageSelector(),\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n"
                    " ),\n"
                    "),\n",
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
              CmpTitle(Title:"Previous Button Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "RaisedButton(\n"
                    " child: Text('<'),\n"
                    " onPressed:(){\n"
                    "  final TabController controller=\n"
                    "    DefaultTabController.of(context);\n\n"
                    "  if(!controller.indexIsChanging&&controller.index!=0){\n"
                    "   controller.animateTo(controller.index-1);\n"
                    "  }\n"
                    " },\n"
                    ")",
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
              CmpTitle(Title:"Next Button Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "RaisedButton(\n"
                    " child: Text('>'),\n"
                    " onPressed:(){\n"
                    "  final TabController controller=\n"
                    "    DefaultTabController.of(context);\n\n"
                    "  if(!controller.indexIsChanging&&controller.index!=2){\n"
                    "   controller.animateTo(controller.index+1);\n"
                    "  }\n"
                    " },\n"
                    ")",
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
              CmpTitle(Title:"Skip Button Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "RaisedButton(\n"
                    " child: Text('Skip'),\n"
                    " onPressed:(){\n"
                    "  final TabController controller=\n"
                    "    DefaultTabController.of(context);\n\n"
                    "  if(!controller.indexIsChanging){\n"
                    "   controller.animateTo(2);\n"
                    "  }\n"
                    " },\n"
                    ")",
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

