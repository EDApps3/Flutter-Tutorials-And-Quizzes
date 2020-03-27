import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String Hero_Simple_Explanation=
    "-Main Is The Principal Method Used To Run SimpleHero Class When The Page Is Loaded\n\n"
    "-Creating Class SimpleHero,Stateless As We Just Need To Navigate Through Hero Animation(No State Change)\n\n"
    "-As Flutter Is Based On Widgets,We Need To Create One\n\n"
    "-Creating A Material App That Take Scaffold Allowing Us To Use AppBar And Body\n\n"
    "-As An AppBar It Has An Simple Title\n\n"
    "-As An Body It Take ListView To Avoid Overflowing And Allow Scrolling\n\n"
    "-ListView Take Childrens: SizedBox To Set Space In Height And Cards Having List Tile Displaying Contents\n\n"
    "-Card Taking ListTile That Having An Image As Leading(Displaying First)\n\n"
    "-Image Child Of An Hero That Take An Tag,Thats Mean Hero Applied On Image Going From Tapped Image Tag To The Same Image Tag In Another Page Playing The Animation\n\n"
    "-ListTile Having Also Title And SubTitle That Overflow Text By Ellipsis(...)\n\n"
    "-Now When A ListTile Is Tapped Will Go The Page Selected Searching Current Page Hero Tag And Target Page Hero Tag To Set The Animation\n\n"
    "-First ListTile Having Hero Tag To_Flutter From Page SimpleHero\n\n"
    "-Flutter Page Having Hero Tag To_Flutter Taking Image\n\n"
    "-Now Animation Played Tag To Tag (To_Flutter to To_Flutter)\n\n";


List Hero_Simple_list =[
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
              CmpTitle(Title:"Hero:",),
              Divider(),
              CmpSubTitle(SubTitle:"Flying Animation Widget To Widget Using Tag From Page To Another",)
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
                    "Hero(\n\n"
                    " tag:'TagTxt',"
                    " child:"
                    "  //Widget(Image,Container...)\n\n"
                    ")\n"
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
//-------------------------------------------------------------



String Hero_Advanced_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AdvancedHeroRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Page Selected Index\n\n"
    "-First Creating Main Class AdvancedHeroRun And Set Its Main State\n\n"
    "-Secondly Creating Class _AdvancedHeroState That Extend Its State From Its Main AdvancedHeroRun\n\n"
    "-Creating Variable controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe)\n\n"
    "-The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain ListView Avoid Overflow And Allow Scrolling\n\n"
    "-Taking Sized Box With Max Width And Height Value Taking With It Gesture Detector To Know Image Tap\n\n"
    "-Images Placed In The Center Into Cards,Having its Own Hero Tag\n\n"
    "-Now When the SizedBox Is Tapped(Taking Image As SubChild) We Navigate To Another Page\n\n"
    "-Another Page Will Have Hero Having Same Tag That Will Play Flying Animation Tag To Tag\n\n"
    "-First Image Having Tag W1\n\n"
    "-WallPaper Page Having Hero Tag W1 Taking Image\n\n"
    "-Now Animation Played Tag To Tag (W1 To W1)\n\n";





List Hero_Advanced_list =[
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
              CmpTitle(Title:"Hero:",),
              Divider(),
              CmpSubTitle(SubTitle:"Flying Animation Widget To Widget Using Tag From Page To Another",)
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
                  "Hero(\n\n"
                      " tag:'TagTxt',"
                      " child:"
                      "  //Widget(Image,Container...)\n\n"
                      ")\n"
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
//-------------------------------------------------------------