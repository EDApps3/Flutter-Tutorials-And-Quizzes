import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';




String Video_From_File_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(VideoFromFile) To Be Runned\n\n"
    "-Creating A Class VideoFromFile That Will Hold The Main UI,Stateless Widget (No State Change)\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Allow Us To Use Scaffold,Having Title And Blue Theme And Has As A Home It Call MyHomePage Class(Scaffold Inside)\n\n"
    "-Now Creating MyHomePage Class,Stateless Widget (No State Change)\n\n"
    "-As Flutter Based On Widgets We Need To Create One And It Contain The Scaffold That Allow Us To Create AppBar And Body\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Contain ListView(Scrollable Down)\n\n"
    "-ListView Take SizedBox With A Height 15 To Set Space Between Card And AppBar \n\n"
    "-Also Takes 2 Cards(Rounded Box) That Take A Padded Column By 12\n\n"
    "-Each Column In Each Card Take As First Row Text Describing Title,Second Row Text Describing Description And The Third Row Call Constructor in Videos Class That Set Video Setting\n\n"
    "-To Set The Video From File We Use VideoPlayerController.asset then Set The Location\n\n"
    "-looping Take A Bool Value Set To True,Video Keep Playing When Finishing From Begining\n\n"
    "-Now Creating Videos Class That Set The Video Setting,Statefull Widget Due To Video State Change(Duration,Pause,Play...)\n\n"
    "-The Class Take VideoPlayerController Variable That Set The Video Location\n\n"
    "-And looping Varible To Know That If Video Keep Playing\n\n"
    "-Creating Constructor Now That Take Video Infos\n\n"
    "-After That We Need To Create Class MainState\n\n"
    "-Creating State Class ChewieListItemState That Extend Its Main State From Videos\n\n"
    "-Setting Up The Controller\n\n"
    "-initState Work When Page Is Opened,intialize the Its State\n\n"
    "-Set Up The Controller To AutoInitialize,Loop,Display An Error If Something Went Wrong\n\n"
    "-Video Padded By 8\n\n"
    "-Dispose Work When Page Is Closed,Used To Cancel The Video Settings\n\n";


List Video_From_File_list =[
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
              CmpSubTitle(
                  SubTitle: "First We Need To Add In Yaml:"),
              Image.asset("Images/V1.PNG"),
              CmpSubTitle(
                  SubTitle:
                  "Dont Forget To Get Packages!\n\n"
                      "When We Need To Use It We Need To Import:\n"
                      "import 'package:video_player/video_player.dart';"
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
              CmpTitle(Title:"Set Directories:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "-Creating A Directory videos\n"
                    "-Inside videos Directory We Import Videos\n\n",
              ),
              Image.asset("Images/V4.PNG"),
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
              CmpTitle(Title:"Linking:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                "-Linking Videos Location To Be Accessed And Used\n",
              ),
              Image.asset("Images/V5.PNG"),
            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------

String Video_From_Url_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(VideoFromUrl) To Be Runned\n\n"
    "-Creating A Class VideoFromUrl That Will Hold The Main UI,Stateless Widget (No State Change)\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Creating Material App That Allow Us To Use Scaffold,Having Title And Blue Theme And Has As A Home It Call MyHomePage Class(Scaffold Inside)\n\n"
    "-Now Creating MyHomePage Class,Stateless Widget (No State Change)\n\n"
    "-As Flutter Based On Widgets We Need To Create One And It Contain The Scaffold That Allow Us To Create AppBar And Body\n\n"
    "-As An AppBar It Has An Title\n\n"
    "-As An Body It Contain ListView(Scrollable Down)\n\n"
    "-ListView Take SizedBox With A Height 15 To Set Space Between Card And AppBar \n\n"
    "-Also Takes 2 Cards(Rounded Box) That Take A Padded Column By 12\n\n"
    "-Each Column In Each Card Take As First Row Text Describing Title,Second Row Text Describing Description And The Third Row Call Constructor in Videos Class That Set Video Setting\n\n"
    "-To Set The Video From Url We Use VideoPlayerController.network then Set The Url(Link)\n\n"
    "-looping Take A Bool Value Set To True,Video Keep Playing When Finishing From Begining\n\n"
    "-Now Creating Videos Class That Set The Video Setting,Statefull Widget Due To Video State Change(Duration,Pause,Play...)\n\n"
    "-The Class Take VideoPlayerController Variable That Set The Video Location\n\n"
    "-And looping Varible To Know That If Video Keep Playing\n\n"
    "-Creating Constructor Now That Take Video Infos\n\n"
    "-After That We Need To Create Class MainState\n\n"
    "-Creating State Class ChewieListItemState That Extend Its Main State From Videos\n\n"
    "-Setting Up The Controller\n\n"
    "-initState Work When Page Is Opened,intialize the Its State\n\n"
    "-Set Up The Controller To AutoInitialize,Loop,Display An Error If Something Went Wrong\n\n"
    "-Video Padded By 8\n\n"
    "-Dispose Work When Page Is Closed,Used To Cancel The Video Settings\n\n";


List Video_From_Url_list =[
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
              CmpSubTitle(
                  SubTitle: "First We Need To Add In Yaml:"),
              Image.asset("Images/V1.PNG"),
              CmpSubTitle(
                  SubTitle:
                  "Dont Forget To Get Packages!\n\n"
                      "When We Need To Use It We Need To Import:\n"
                      "import 'package:video_player/video_player.dart';"
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
//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------






