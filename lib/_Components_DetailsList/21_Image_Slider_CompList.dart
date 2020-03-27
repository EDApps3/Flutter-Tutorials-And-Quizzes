import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

List IS_Intro_list =[
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
              CmpTitle(Title:"What Is Image Slider?",),
              Divider(),
              CmpSubTitle(SubTitle:"Widget that Support Infinite Scroll And Custom child Widget (Image,Containers...) With Auto Play Feature.\n\n",
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Heading To Yaml And Add:",),
              Image.asset("Images/IS.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\nNow When We Need To Use It W have To Import:\nimport 'package:carousel_slider/carousel_slider.dart';",),
            ]
        ),
      ),
    ),
  ),

];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------

String IS_InitialPage_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CarouselInitialPageRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,StateMain That Extends The Main Class)\n\n"
    "-Class CarouselInitialPageRun Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From CarouselInitialPageRun\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 186\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-And We Keep Going Like We Did But Now Slider 2 Has Initial Page Set to 1\n\n";


List IS_InitialPage_list =[
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
              CmpTitle(Title:"initialPage:index_Number",),
              Divider(),
              CmpSubTitle(SubTitle:"Define The Image To Start Within The Slider By its index_Number,Example:\n"),
              CmpCode(CodeTxt:"initialPage:2",)
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "List imgList =[\n"
                    "  'Images/S1.jpg',\n"
                    "  'Images/S2.jpg',\n"
                    "  'Images/S3.jpg',\n"
                    "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 1,\n"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String IS_EnlargeCenterPage_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CarouselEnlargeCenterPageRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,StateMain That Extends The Main Class)\n\n"
    "-Class CarouselEnlargeCenterPageRun Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From CarouselEnlargeCenterPageRun\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 186\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has His Centered Image Bigger Set By enlargeCenterPage By true\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-And We Keep Going Like We Did But Now Slider 2 Has Centered Image Normal Set By enlargeCenterPage By false\n\n";

List IS_EnlargeCenterPage_list =[
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
              CmpTitle(Title:"enlargeCenterPage:true|false",),
              Divider(),
              CmpSubTitle(SubTitle:"\ntrue:\nTurn The Centered Image Bigger Than Other Images\n\nfalse:\nTurn The Centered Image Normal Like Other Images\n"),
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                     "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 1,\n"
                      " enlargeCenterPage:true,"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------




String IS_AutoPlay_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CarouselAutoPlayRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,StateMain That Extends The Main Class)\n\n"
    "-Class CarouselAutoPlayRun Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From CarouselAutoPlayRun\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 186\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has AutoPlay Set To true\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-And We Keep Going Like We Did But Now Slider 2 Has AutoPlay Set To false\n\n";

List IS_AutoPlay_list =[
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
              CmpTitle(Title:"autoPlay:true|false",),
              Divider(),
              CmpSubTitle(SubTitle:"\ntrue:\nAuto Play/Change Every While\n\false:\nRequire User To Change"),
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 0,\n"
                      " autoPlay:true,\n"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String IS_InfiniteScroll_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CarouselEnableInifiniteScrollRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,StateMain That Extends The Main Class)\n\n"
    "-Class CarouselInitialPageRun Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From CarouselEnableInifiniteScrollRun\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 186\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has His Centered Image Bigger Set By enlargeCenterPage By true\n\n"
    "-The Carousel Auto Play Set To True\n\n"
    "-The Carousel Infinite Scroll Set To True\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-And We Keep Going Like We Did But Now Slider 2 Has Infinite Scroll Set To false\n\n";


List IS_InfiniteScroll_list =[
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
              CmpTitle(Title:"enableInfiniteScroll:true|false",),
              Divider(),
              CmpSubTitle(SubTitle:"\ntrue:\nReplay The Slider Once Finished\n\false:\nSlider Stop After The Finish"),
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 0,\n"
                      " autoPlay:true,\n"
                      " enableInfiniteScroll: false,"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String IS_AutoPlayInterval_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CarouselAutoPlayIntervRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,StateMain That Extends The Main Class)\n\n"
    "-Class CarouselAutoPlayIntervRun Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From CarouselAutoPlayIntervRun\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 186\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has His Centered Image Bigger Set By enlargeCenterPage By true\n\n"
    "-The Carousel AutoPlay Set True And AutoPlayInterval Set to 1sec\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-And We Keep Going Like We Did But Now Slider 2 Has AutoPlayInterval Set To 2sec\n\n";


List IS_AutoPlayInterval_list =[
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
              CmpTitle(Title:"autoPlayInterval:\n   Duration(seconds:2)",),
              Divider(),
              CmpSubTitle(SubTitle:"\nDuration To The Image To Be Shown Before Sliding To Another\n"),
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 0,\n"
                      " autoPlay:true,\n"
                      " autoPlayInterval:\n"
                      "  Duration(seconds:2),\n"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String IS_PauseAutoPlayOnTouch_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CarouselPauseAutoPlayOnTouchRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,StateMain That Extends The Main Class)\n\n"
    "-Class CarouselPauseAutoPlayOnTouchRun Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From CarouselPauseAutoPlayOnTouchRun\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 186\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has His Centered Image Bigger Set By enlargeCenterPage By true\n\n"
    "-The Carousel AutoPlay Set To true Paused For 2Sec When Touched\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-And We Keep Going Like We Did But Now Slider 2 Paused For 5Sec When Touched\n\n";


List IS_PauseAutoPlayOnTouch_list =[
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
              CmpTitle(Title:"pauseAutoPlayOnTouch:\n   Duration(seconds: 5)",),
              Divider(),
              CmpSubTitle(SubTitle:"\nImage Pause Duration After Getting Touched\n"),
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 0,\n"
                      " autoPlay:true,\n"
                      " pauseAutoPlayOnTouch:\n"
                      "  Duration(seconds: 5),\n"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"

              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String IS_ScrollDirection_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(CarouselScrollDirectionRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,SatateMain That Extends The Main Class)\n\n"
    "-Class CarouselScrollDirectionRun Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From CarouselScrollDirectionRun\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 186\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has His Centered Image Bigger Set By enlargeCenterPage By true\n\n"
    "-The Carousel Auto Play Images\n\n"
    "-The Carousel Images Are Scrolled Horizontaly\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-And We Keep Going Like We Did But Now Slider 2 Has Scroll Direction Verticaly\n\n";


List IS_ScrollDirection_list =[
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
              CmpTitle(Title:"scrollDirection:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nAxis.vertical:\nImages Scrolled Verticaly\n\nAxis.horizontal:\nImages Scrolled Horizontaly"),
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 0,\n"
                      " scrollDirection: Axis.horizontal,\n"
                      " autoPlay:true,\n"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------




String IS_WithButton_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SliderWithButton) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,StateMain That Extends The Main Class)\n\n"
    "-Class SliderWithButton Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From SliderWithButton\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 206\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has His Centered Image Bigger Set By enlargeCenterPage By true\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-Fouth Row Taking Sized Box Having Height 20px\n\n"
    "-Last Row Taking Button That Call Methods To Go To Next Or Previous Images With Duration And Slide Animation!\n\n";



List IS_WithButton_list =[
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
              CmpTitle(Title:"Buttons:",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Slide The Images"),
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
              CmpTitle(Title:"Placing Buttons Into A Row:",),
              Divider(),
              CmpCode(
                CodeTxt:
                   "Row(\n"
                    " mainAxisAlignment:\n"
                    "  MainAxisAlignment.center,\n"
                    " children: <Widget>[\n"
                    "  OutlineButton(\n"
                    "   onPressed: goToPrevious,\n"
                    '    child: Text("<"),\n'
                    "  ),\n"
                    "  OutlineButton(\n"
                    "   onPressed: goToNext,\n"
                    '    child: Text(">"),\n'
                    "   ),\n"
                    " ],\n"
                    "),\n"
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
              CmpTitle(Title:"Methods:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "goToPrevious(){\n"
                      " carouselSlider.previousPage(\n"
                      " duration:\n"
                      "  Duration(milliseconds: 300),\n"
                      "  curve: Curves.ease,\n"
                      " );\n"
                      "}\n"
                      "\n"
                      "\n"
                      "goToNext(){\n"
                      " carouselSlider.nextPage(\n"
                      " duration:\n"
                      "  Duration(milliseconds: 300),\n"
                      "  curve: Curves.decelerate\n"
                      " );\n"
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 0,\n"
                      " autoPlay:true,\n"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
                      "Row(\n"
                      " mainAxisAlignment:\n"
                      "  MainAxisAlignment.center,\n"
                      " children: <Widget>[\n"
                      "  OutlineButton(\n"
                      "   onPressed:goToPrevious,\n"
                      "   child: Text('<'),\n"
                      "  ),\n"
                      "  OutlineButton(\n"
                      "   onPressed: goToNext,\n"
                      "   child: Text('>'),\n"
                      "  ),\n"
                      " ],\n"
                      ")\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String IS_WithCaption_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SliderCaption) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,StateMain That Extends The Main Class)\n\n"
    "-Class SliderCaption Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From SliderCaption\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-Slider Will Take CaptionTexts As A Childs,So We Need To Store Texts Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Sized Box To Make A Space Between AppBar And The Text By 10\n\n"
    "-Second Row Take A Text That Describe Slider1\n\n"
    "-Third Row Take The Carousel That Has a Height 206 Stacked With Text Captions\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has His Centered Image Bigger Set By enlargeCenterPage By true\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-Stack Allow To Combine 2 Widgets Together";





List IS_WithCaption_list =[
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
              CmpTitle(Title:"Captions:",),
              Divider(),
              CmpSubTitle(SubTitle:"Text Message That Appear On Each Slide"),
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Define Texts In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "List CapList=[\n"
                      "  'Caption 1',\n"
                      "  'Caption 2',\n"
                      "  'Caption 3',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 0,\n"
                      " autoPlay:true,\n"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),"
                      "     ),\n"
                      "     Center(\n"
                      "    child: Text(\n"
                      "    CapList[imgList.indexOf(imgUrl)],\n"
                      "    style: TextStyle(\n"
                      "     color:Colors.white,\n"
                      "     backgroundColor:\n"
                      "      Colors.lightBlueAccent,\n"
                      "     ),\n"
                      "    ),\n"
                      "   ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------




String IS_WithDots_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DotsSliderRun) To Be Runned\n\n"
    "-This Class Is Stateful Widget As The Slider Gonna Change Its State (Image Change)\n\n"
    "-Stateful Class Require 2 Classes (Main,SatateMain That Extends The Main Class)\n\n"
    "-Class DotsSliderRun Is The Main Class,wich Inside We Create Its State\n\n"
    "-Class CarouselDemoState Is The StateClass That Extends His Main State From DotsSliderRun\n\n"
    "-First We Need To Create a Carousel Slider That Create The Slider\n\n"
    "-Setting The Current Image index to 0\n\n"
    "-Slider Will Take Images As A Childs,So We Need To Store Images Into A List\n\n"
    "-The List Must Take Handler As We Will Be Able To Scroll The Images Or Swipe Them\n\n"
    "-Now Creating Widgets As Flutter Is Based On Widget That Gonna Hold The Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Set The Body Of The Page\n\n"
    "-As An AppBar It Take A Title\n\n"
    "-As An Body It Take ListView To Make Users Scroll Down To See The Contents Due to Screen Height...\n\n"
    "-List View Take Column(Each Element On A Row) That is Aligned Vertically And Horizontally To The Center\n\n"
    "-First Row Take A Text That Describe Slider1\n\n"
    "-Second Row Take The Carousel That Has a Height 2066\n\n"
    "-The Carousel Start By The Image Index 0 Set By InitialPage\n\n"
    "-The Carousel Has His Centered Image Bigger Set By enlargeCenterPage By true\n\n"
    "-The Carousel will auto play the Images\n\n"
    "-As The Carousel Must Change Pictures It Change Its State(Image Change To Next) So We Must Change The State\n\n"
    "-The State Changement The The Index Of The Image To The Next By Current Variable Example 0 to 1\n\n"
    "-Finally Image Are loaded into the items by The List Defined Up imgList\n\n"
    "-Putted Into A container That Has Width 100% Of the Screen While Next Images Take 10 px from left and right\n\n"
    "-Sized box is set to Add Space between Slider And Dots\n\n"
    "-Dots Represented In A Row while We Traverse The Map To Know How Much Pictures We Have (2 Images -> 2 Dots )\n\n"
    "-Each Dot Placed Into A Container (All In One Row) The Active Appear With Red And Others With Green\n\n"
    "-Each Dot Has Width And Height 10\n\n";



List IS_WithDots_list =[
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
              CmpTitle(Title:"Dots:",),
              Divider(),
              CmpSubTitle(SubTitle:"Rounded Circles That Appear Under The Images\n"),
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
              CmpTitle(Title:"Set Dots:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "\n\n"
                    "Row(\n"
                    " mainAxisAlignment:\n"
                    "  MainAxisAlignment.center,\n"
                    " children:\n"
                    "  map<Widget>(imgList, (index, url) {\n"
                    "  return Container(\n"
                    "  width: 10.0,\n"
                    "  height: 10.0,\n"
                    "  margin:\n"
                    "   EdgeInsets.symmetric(\n"
                    "    vertical: 10.0,\n"
                    "    horizontal: 2.0,\n"
                    "   ),\n"
                    "  decoration: BoxDecoration(\n"
                    "  shape: BoxShape.circle,\n"
                    "  color: _current == index ?\n"
                    "    Colors.redAccent :\n"
                    "    Colors.green,\n"
                    "  ),\n"
                    " );\n"
                    "}),\n"
                    "),",
              )
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
              CmpTitle(Title:"Define Images In A List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List imgList =[\n"
                      "  'Images/S1.jpg',\n"
                      "  'Images/S2.jpg',\n"
                      "  'Images/S3.jpg',\n"
                      "];\n"
              )
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
              CmpTitle(Title:"Adding Touch Handler For Image List:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "List<T> map<T>(List list, Function handler){\n"
                      " List<T> result = [];\n"
                      " for(var i=0;i<list.length;i++){\n"
                      "  result.add(handler(i, list[i]));\n"
                      " }\n"
                      " return result;\n"
                      "}\n"
              )
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
              CmpTitle(Title:"Finally Set The Carousel Settings:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "carouselSlider=CarouselSlider(\n"
                      " height: 186.0,\n"
                      " initialPage: 0,\n"
                      " autoPlay:true,\n"
                      " onPageChanged:(index){\n"
                      " setState(() {\n"
                      "  _current = index;\n"
                      " });\n"
                      "},\n"
                      "items:imgList.map((imgUrl){\n"
                      " return Builder(\n"
                      "  builder:(BuildContext context){\n"
                      "  return Container(\n"
                      "  width:\n"
                      "   MediaQuery.of(context).size.width,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(horizontal:10.0),\n"
                      "  decoration:BoxDecoration(\n"
                      "   color:Colors.green,\n"
                      "  ),\n"
                      "  child:\n"
                      "   Stack(\n"
                      "   children:<Widget>[\n"
                      "    new Positioned.fill(\n"
                      "     child:Image.asset(\n"
                      "      imgUrl,\n"
                      "      fit:BoxFit.fill,\n"
                      "     ),\n"
                      "     ),\n"
                      "    ],\n"
                      "    ),\n"
                      "    );\n"
                      "   },\n"
                      "  );\n"
                      " }).toList(),\n"
                      "),\n"
                      "SizedBox(\n"
                      "height: 20,\n"
                      "),\n"
                      "Row(\n"
                      " mainAxisAlignment:\n"
                      "  MainAxisAlignment.center,\n"
                      " children:\n"
                      "  map<Widget>(imgList, (index, url) {\n"
                      "  return Container(\n"
                      "  width: 10.0,\n"
                      "  height: 10.0,\n"
                      "  margin:\n"
                      "   EdgeInsets.symmetric(\n"
                      "    vertical: 10.0,\n"
                      "    horizontal: 2.0,\n"
                      "   ),\n"
                      "  decoration: BoxDecoration(\n"
                      "  shape: BoxShape.circle,\n"
                      "  color: _current == index ?\n"
                      "    Colors.redAccent :\n"
                      "    Colors.green,\n"
                      "  ),\n"
                      " );\n"
                      "}),\n"
                      "),"
              )
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------