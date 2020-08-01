import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import 'package:get/get.dart';
import '../AppSoundPlay.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/CmpWebView.dart';

var AnimatedListGlobal =ListTile(
    leading:Image.asset("Images/Dart_Logo.png"),
    title:Text("Animated List",),
    subtitle:Text("Tap Here To See The Official Documentation Provided On This Widget!",),
    onTap:(){
      PlayTapSound();
      Get.to(
      CmpWebViewPage(
        Title:"Animated List",
        GoUrl:"https://flutter.dev/docs/catalog/samples/animated-list",
      )
      );
    },
);

List AnimatedList_OffDoc=[
  SizedBox(height:10),
  AnimatedListGlobal,
];



String AnimatedList_Insert_Explanation=
    "-Main Is The Principal Method Used To Run AnimatedList_Insert_Run Class When The Page Is Loaded\n\n"
    "-Creating Class AnimatedList_Insert_Run,Statefull Due To List Being Changed (New Data),Create State Needed\n\n"
    "-Creating State Class AnimatedList_Insert_State That Extends Its Main State From The Main Class AnimatedList_Insert_Run\n\n"
    "-Creating GlobalKey variable _listKey That Will Hold State Of The AnimatedList On Any Change!\n\n"
    "-Creating FormKey formKey To Detect Form Being Entered By Used And Validate It\n\n"
    "-Creating List ListData Of Type String Having Its Data On Start\n\n"
    "-Creating Controller LangController That Will Control TextField Value And Being Stored In LangValue Variable\n\n"
    "-Method InsertToAnimatedList Used To Insert Item To The Animated List Where Str Is The Text Value To Insert And Position Is Where To Insert,After Insert State Need To Be Refreshed By The Global Key!"
    "-Method validate Check if The Form Is Validate Bu Its FormKey,If Yes Then Will Pass Value To Be Inserted To Thr First Position(0) And Clear TextField By Its Controller\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A Stack Where The Form Should Always Appear From Top (Form And AnimatedList Stacked)\n\n"
    "-The Animated List Take Its Key,initialItemCount Max Number Item To Be Build And The Builder\n\n"
    "-As Form Is Stacked And Its Container height 200 That Why At index 0 A SizedBox Is Returned To Make Sure Animated List First Item Appear And Not Hidden By The Form\n\n"
    "-Item Build By Method BuildCard returing Card Taking A Listile Where Its Data Are Initialized Playing SizeTransition Animation\n\n"
    "-And Finally The Form To Be Appeared At The Top Of The Stack!\n\n";

List AnimatedList_Insert_list =[
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
              CmpTitle(Title:"What Is AnimatedList",),
              Divider(),
              CmpSubTitle(SubTitle:"An AnimatedList that displays a list of cards that stay in sync with an app-specific ListModel. When an item is added to or removed from the model, the corresponding card animates in or out of view.\n",),
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
              CmpSubTitle(SubTitle:"1-Creating List Data\n",),
              CmpCode(CodeTxt:"List<String> ListData = ['Dart', 'Flutter',];\n\n"),

              CmpSubTitle(SubTitle:"2-Creating Key State For The AnimatedList",),
              CmpCode(CodeTxt:"final GlobalKey<AnimatedListState> _listKey = GlobalKey();\n\n"),

              CmpSubTitle(SubTitle:"3-Insert Method:\n",),
              CmpCode(
                CodeTxt:
                "void InsertToAnimatedList(String Str,int Position){\n"
                " ListData.insert(Position, Str);\n"
                " _listKey.currentState.insertItem(Position);\n"
                "}\n"
              ),

              CmpSubTitle(SubTitle:"4-AnimatedList Widget:\n",),
              CmpCode(
                CodeTxt:
                "AnimatedList(\n"
                " key: _listKey,\n"
                " initialItemCount: ListData.length,\n"
                " itemBuilder: (context, index, animation) {\n"
                "  return BuildCard(ListData[index], animation);\n"
                " },\n"
                ")\n"
              ),

              CmpSubTitle(SubTitle:"5-BuildCard Widget Returning Card:\n",),
              CmpCode(
                CodeTxt:
                "Widget BuildCard(String item, Animation animation) {\n"
                " return SizeTransition(\n"
                "  sizeFactor: animation,\n"
                "   child: Card(\n"
                "    child: ListTile(\n"
                "     title: Text(\n"
                "      item,\n"
                "      style: TextStyle(fontSize: 20),\n"
                "     ),\n"
                "    ),\n"
                "   ),\n"
                " );\n"
                "}"
              ),

            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------





String AnimatedList_Delete_Explanation=
    "-Main Is The Principal Method Used To Run AnimatedList_Delete_Run Class When The Page Is Loaded\n\n"
    "-Creating Class AnimatedList_Delete_Run,Statefull Due To List Being Changed (Data Being Deleted),Create State Needed\n\n"
    "-Creating State Class AnimatedList_Delete_State That Extends Its Main State From The Main Class AnimatedList_Delete_Run\n\n"
    "-Creating GlobalKey variable _listKey That Will Hold State Of The AnimatedList On Any Change!\n\n"
    "-Creating List ListData Of Type String Having Its Data On Start\n\n"
    "-Method RemoveItemFromList Used To Remove Item From List By Its Pos Passed Into Parameter To Know Wich Item To Delete,After Remove State Need To Be Refreshed By The Global Key And Being Builded!"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take AnimatedList\n\n"
    "-The Animated List Take Its Key,initialItemCount Max Number Item To Be Build And The Builder\n\n"
    "-Item Build By Method BuildCard returing Card Taking A Listile Where Its Data Are Initialized Playing SizeTransition Animation And Each Know By Its Index To Be Deleted RemoveItemFromList(index);\n\n";


List AnimatedList_Delete_list =[
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
              CmpTitle(Title:"What Is AnimatedList",),
              Divider(),
              CmpSubTitle(SubTitle:"An AnimatedList that displays a list of cards that stay in sync with an app-specific ListModel. When an item is added to or removed from the model, the corresponding card animates in or out of view.\n",),
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
              CmpSubTitle(SubTitle:"1-Creating List Data\n",),
              CmpCode(CodeTxt:"List<String> ListData = ['Dart', 'Flutter',];\n\n"),

              CmpSubTitle(SubTitle:"2-Creating Key State For The AnimatedList",),
              CmpCode(CodeTxt:"final GlobalKey<AnimatedListState> _listKey = GlobalKey();\n\n"),

              CmpSubTitle(SubTitle:"3-Remove Method:\n",),
              CmpCode(
                CodeTxt:
                "void RemoveItemFromList(int Pos) {\n"
                " String removedItem = ListData.removeAt(Pos);\n"
                " AnimatedListRemovedItemBuilder builder = (context, animation) {\n"
                "  return BuildCard(removedItem, animation,Pos);\n"
                " };\n"
                " _listKey.currentState.removeItem(Pos, builder);\n"
                "}"
              ),

              CmpSubTitle(SubTitle:"4-AnimatedList Widget:\n",),
              CmpCode(
                CodeTxt:
                "AnimatedList(\n"
                " key: _listKey,\n"
                " initialItemCount: ListData.length,\n"
                " itemBuilder: (context, index, animation) {\n"
                "  return BuildCard(ListData[index], animation,index);\n"
                " },\n"
                ")\n"
              ),

              CmpSubTitle(SubTitle:"5-BuildCard Widget Returning Card:\n",),
              CmpCode(
                CodeTxt:
                "Widget BuildCard(String item, Animation animation,int index) {\n"
                " return SizeTransition(\n"
                "  sizeFactor: animation,\n"
                "   child: Card(\n"
                "    child: ListTile(\n"
                "     trailing:IconButton(\n"
                "      icon:Icon(Icons.delete),\n"
                "       onPressed:(){\n"
                "        RemoveItemFromList(index);\n"
                "       },\n"
                "     ),\n"
                "     title: Text(\n"
                "      item,\n"
                "      style: TextStyle(fontSize: 20),\n"
                "     ),\n"
                "    ),\n"
                "   ),\n"
                " );\n"
                "}\n"
              ),

            ]
        ),
      ),
    ),
  )
];


//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------




String AnimatedList_DeleteAll_Explanation=
    "-Main Is The Principal Method Used To Run AnimatedList_DeleteAll_Run Class When The Page Is Loaded\n\n"
    "-Creating Class AnimatedList_DeleteAll_Run,Statefull Due To List Being Changed (Data Being Deleted),Create State Needed\n\n"
    "-Creating State Class AnimatedList_DeleteAll_State That Extends Its Main State From The Main Class AnimatedList_DeleteAll_Run\n\n"
    "-Creating GlobalKey variable _listKey That Will Hold State Of The AnimatedList On Any Change!\n\n"
    "-Creating List ListData Of Type String Having Its Data On Start\n\n"
    "-Method DeleteAllItem Used To Remove Item From All List By Traversing Last Position (ListData.length -1 ) To The First Position And Delete Each,After Each Remove State Need To Be Refreshed By The Global Key And Being Builded!"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take Column Taking RaisedButton And AnimatedList\n\n"
    "-RaisedButton Once Pressed Will Call Method DeleteAllItem\n\n"
    "-The Animated List Take Its Key,initialItemCount Max Number Item To Be Build And The Builder\n\n"
    "-Item Build By Method BuildCard returing Card Taking A Listile Where Its Data Are Initialized Playing SizeTransition Animation\n\n";


List AnimatedList_DeleteAll_list =[
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
              CmpTitle(Title:"What Is AnimatedList",),
              Divider(),
              CmpSubTitle(SubTitle:"An AnimatedList that displays a list of cards that stay in sync with an app-specific ListModel. When an item is added to or removed from the model, the corresponding card animates in or out of view.\n",),
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
              CmpSubTitle(SubTitle:"1-Creating List Data\n",),
              CmpCode(CodeTxt:"List<String> ListData = ['Dart', 'Flutter',];\n\n"),

              CmpSubTitle(SubTitle:"2-Creating Key State For The AnimatedList",),
              CmpCode(CodeTxt:"final GlobalKey<AnimatedListState> _listKey = GlobalKey();\n\n"),

              CmpSubTitle(SubTitle:"3-DeleteAll Method:\n",),
              CmpCode(
                CodeTxt:
                "void DeleteAllItem() {\n"
                " final length = ListData.length;\n"
                " for (int i = length - 1; i >= 0; i--) {\n"
                " String removedItem = ListData.removeAt(i);\n"
                " AnimatedListRemovedItemBuilder builder = (context, animation) {\n"
                "  return BuildCard(removedItem, animation);\n"
                " };\n"
                " _listKey.currentState.removeItem(i, builder);\n"
                " }\n"
                "}\n"
              ),

              CmpSubTitle(SubTitle:"4-AnimatedList Widget:\n",),
              CmpCode(
                CodeTxt:
                "AnimatedList(\n"
                " key: _listKey,\n"
                " initialItemCount: ListData.length,\n"
                " itemBuilder: (context, index, animation) {\n"
                "  return BuildCard(ListData[index], animation);\n"
                " },\n"
                ")\n"
              ),

              CmpSubTitle(SubTitle:"5-BuildCard Widget Returning Card:\n",),
              CmpCode(
                CodeTxt:
                "Widget BuildCard(String item, Animation animation) {\n"
                " return SizeTransition(\n"
                "  sizeFactor: animation,\n"
                "   child: Card(\n"
                "    child: ListTile(\n"
                "     title: Text(\n"
                "      item,\n"
                "      style: TextStyle(fontSize: 20),\n"
                "     ),\n"
                "    ),\n"
                "   ),\n"
                " );\n"
                "}"
              ),

            ]
        ),
      ),
    ),
  ),
];


//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------




String AnimatedList_Update_Explanation=
    "-Main Is The Principal Method Used To Run AnimatedList_Update_Run Class When The Page Is Loaded\n\n"
    "-Creating Class AnimatedList_Update_Run,Statefull Due To List Being Changed (New Data),Create State Needed\n\n"
    "-Creating State Class AnimatedList_Update_State That Extends Its Main State From The Main Class AnimatedList_Update_Run\n\n"
    "-Creating GlobalKey variable _listKey That Will Hold State Of The AnimatedList On Any Change!\n\n"
    "-Creating FormKey formKey To Detect Form Being Entered By Used And Validate It\n\n"
    "-Creating List ListData Of Type String Having Its Data On Start\n\n"
    "-Creating Bool ValueSelected Used To Detect If User Selected Value To Update Where Index Stored In UpdatePos\n\n"
    "-Creating Controller LangController That Will Control TextField Value And Being Stored In LangValue Variable\n\n"
    "-Method UpdateListItem Used To Update Data On The List At The Position Given,After Insert State Need To Be Refreshed By SetState!"
    "-Method validate Check if The Form Is Validate Bu Its FormKey,If Yes Then Will Pass Value To Be Updated At Position(updatePos Known When User Tap ListTile) And Clear TextField By Its Controller...If Not An Alert Is Shown\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take A Stack Where The Form Should Always Appear From Top (Form And AnimatedList Stacked)\n\n"
    "-The Animated List Take Its Key,initialItemCount Max Number Item To Be Build And The Builder\n\n"
    "-As Form Is Stacked And Its Container height 200 That Why At index 0 A SizedBox Is Returned To Make Sure Animated List First Item Appear And Not Hidden By The Form\n\n"
    "-Item Build By Method BuildCard returing Card Taking A Listile Where Its Data Are Initialized Playing SizeTransition Animation\n\n"
    "-And Finally The Form To Be Appeared At The Top Of The Stack!\n\n";

List AnimatedList_Update_list =[
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
              CmpTitle(Title:"What Is AnimatedList",),
              Divider(),
              CmpSubTitle(SubTitle:"An AnimatedList that displays a list of cards that stay in sync with an app-specific ListModel. When an item is added to or removed from the model, the corresponding card animates in or out of view.\n",),
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
              CmpSubTitle(SubTitle:"1-Creating List Data\n",),
              CmpCode(CodeTxt:"List<String> ListData = ['Dart', 'Flutter',];\n\n"),

              CmpSubTitle(SubTitle:"2-Creating Key State For The AnimatedList",),
              CmpCode(CodeTxt:"final GlobalKey<AnimatedListState> _listKey = GlobalKey();\n\n"),

              CmpSubTitle(SubTitle:"3-Update Method:\n",),
              CmpCode(
                CodeTxt:
                "void UpdateListItem(String Str,int Pos) {\n"
                " setState(() {\n"
                "  ListData[Pos] = Str;\n"
                " });\n"
                "}\n"
              ),

              CmpSubTitle(SubTitle:"4-AnimatedList Widget:\n",),
              CmpCode(
                CodeTxt:
                "AnimatedList(\n"
                " key: _listKey,\n"
                " initialItemCount: ListData.length,\n"
                " itemBuilder: (context, index, animation) {\n"
                "  return BuildCard(ListData[index], animation,index);\n"
                " },\n"
                ")\n"
              ),

              CmpSubTitle(SubTitle:"5-BuildCard Widget Returning Card:\n",),
              CmpCode(
                CodeTxt:
                "Widget BuildCard(String item, Animation animation,int index) {\n"
                " return SizeTransition(\n"
                "  sizeFactor: animation,\n"
                "   child: Card(\n"
                "    child: ListTile(\n"
                "     trailing:IconButton(\n"
                "      icon:Icon(Icons.delete),\n"
                "       onPressed:(){\n"
                "        RemoveItemFromList(index);\n"
                "       },\n"
                "     ),\n"
                "     title: Text(\n"
                "      item,\n"
                "      style: TextStyle(fontSize: 20),\n"
                "     ),\n"
                "    ),\n"
                "   ),\n"
                " );\n"
                "}\n"
              ),

            ]
        ),
      ),
    ),
  )
];


//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------
//--------------------------------------------

