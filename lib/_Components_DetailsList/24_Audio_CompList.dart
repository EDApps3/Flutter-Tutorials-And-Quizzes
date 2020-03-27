import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Audio_Button_Sound_Explanation=
    "-Creating A Method OnError That Take An Exception Used In Error Case\n\n"
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TapSoundBtnRun) To Be Runned\n\n"
    "-This Class Is Statefull As We Need To Detect Music Play\n\n"
    "-Creating State Class TapSoundBtnState That extends Its State From The Main Class TapSoundBtnRun \n\n"
    "-Now We Need To Create AudioPlayer To Run Musics,And AudioCahe To Control Music(Pause,Play,Stop)\n\n"
    "-Once The App Is Runned We Create A new Audio Player And Audio Cache\n\n"
    "-As Flutter Is Based On Widgets We Have To Build One\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Use BottomAppBar And AppBar\n\n"
    "-AppBar Having A Title\n\n"
    "-The Body Take A Centered Layout Taking A Raised Button Having Text As Its Value Child\n\n"
    "-On Pressed AudioCache Will Play The Given Sound\n\n";


List Audio_Button_Sound_list =[
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
              CmpTitle(Title:"Add Plugin:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Yaml And Add:\naudioplayers: ^0.13.2\n\n",),
              Image.asset("Images/M1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\nWhen We Need To Use It We Have To Import:\n\nimport 'package:audioplayers/audio_cache.dart';\n\nimport 'package:audioplayers/audioplayers.dart';\n",),
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
              CmpTitle(Title:"Set Directorys:",),
              Divider(),
              CmpSubTitle(
                  SubTitle:
                  "-Creating A Directory assets\n"
                      "-Inside assets We Need To Create A Directory Music\n"
                      "-Inside Music We Import The Musics\n\n"
              ),
              Image.asset("Images/M2.PNG"),
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
              CmpSubTitle(SubTitle:"Linking Musics Location To Be Accessed And Used\n"),
              Image.asset("Images/M3.PNG"),
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

String Audio_Music_Player_Explanation=
    "-Creating A Method OnError That Take An Exception Used In Error Case\n\n"
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AudioRun) To Be Runned\n\n"
    "-This Class Is Statefull As We Need To Detect Music Changes And Duration Change,State Needed To Be Created\n\n"
    "-We Need To Define 3 Variables:\n-CurPlaying Used To Set The Sound That Is Playing Currently\n-DurMaxMusic Used To Know The Length Of The Music Example 2Minutes\n-DurActiveMus Used To Show Music Progress In Time\n"
    "-Creating A New Class AudioRunState That extends Its State From The Main Class AudioRun \n\n"
    "-Creating 2 Duration Variables:\n-durationM Used To Know The Music Duration In Seconds\n-positionM Used To Know The Music Current Position In Seconds\n\n"
    "-Now We Need To Create AudioPlayer To Run Musics,And AudioCahe To Control Music(Paus,Play,Stop)\n\n"
    "-Once The App Is Runned We Create A new Audio Player And Audio Cache\n\n"
    "-We Need To Set 2 Handler For The Audio:\n-Duration Handler Used To Know The Length Of The Music,Take d As Parameter And Represent The Duration In Second Stored In durationM variable.Now Careating A Duration Variable That Take The Value In Seconds Then Passing It Into Method That Transform It Into A Strinh HH:MM:SS\n-PositionHandler Used To Detect Music Progress Take p As Parameter And Represent Duration In Seconds Stored In Variable positionM And Transformed Into Duration In Seconds Stored In ActiveM Variable And Finally Transformed Into Text HH:MM:SS\n\n"
    "-SeekToSeconds Method Transform To Seconds In AudioPlayer\n\n"
    "-printDuration Tranform Seconds Into Text HH:MM:SS\n\n"
    "-As Flutter Is Based On Widgets We Have To Build One\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Use BottomAppBar And AppBar\n\n"
    "-The BottomAppBar Fotter Has A Blue Color With An Elevation Set To 20,Padded By 14 And Have A Container That Has a Height Set To 85,contain A Column\n-First Row Take A Text That Take The Value Of CurPlaying Variable\n-Second Row Has 3 Elements(Placed Into Columns),First Column Take A Text That Set Its Value From Value DurActiveMus,Second Column Take The Slider That Show Music Progress Value Set To MusicDuration,And The Third Column Take Text That Show Music MaxLength\n\n"
    "-AppBar Having Blue Color And A Title\n\n"
    "-The Body Take A ListView To Scroll Down Having Column(Elements Placed Into Rows) As An One Of Its Children\n\n"
    "-First Row Take a Card That Has A Padded Column By 18\n\n"
    "-The Column Take Rows\n\n"
    "-First Row Take A SizedBox That Help To Set Width And Height To 120 having A Child CircleAvatar To Set The RoundedShape By a Radius 40 And The Image As Background Color\n\n"
    "-Second Row Take A Column(Elements Placed Inside A Row),First Row Take Text unstoppable ,Second Row Take Text Sia , Third Row Take A Row(To Place All Elemnts In One Row Into Columns) Take Buttons Play,Pause Play Each On A Column\n\n"
    "-Second Card Taking The Second Music Is The Same With Different Data\n\n";


List Audio_Music_Player_list =[
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
              CmpTitle(Title:"Add Plugin:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Yaml And Add:\naudioplayers: ^0.13.2\n\n",),
              Image.asset("Images/M1.PNG"),
              CmpSubTitle(SubTitle:"\nDon't Forget To Get Packages!\n\nWhen We Need To Use It We Have To Import:\n\nimport 'package:audioplayers/audio_cache.dart';\n\nimport 'package:audioplayers/audioplayers.dart';\n",),
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
              CmpTitle(Title:"Set Directorys:",),
              Divider(),
              CmpSubTitle(
                SubTitle:
                    "-Creating A Directory assets\n"
                    "-Inside assets We Need To Create A Directory Music\n"
                    "-Inside Music We Import The Musics\n\n"
              ),
              Image.asset("Images/M2.PNG"),
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
              CmpSubTitle(SubTitle:"Linking Musics Location To Be Accessed And Used\n"),
              Image.asset("Images/M3.PNG"),
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