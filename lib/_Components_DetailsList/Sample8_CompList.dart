import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_SubTitle.dart';
import 'package:url_launcher/url_launcher.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_Title.dart';


  _launchUrl() async{
    const url="https://drive.google.com/drive/folders/10sVEXxIpuDxHA-12Duxe4DTJP_b842UH?usp=sharing";

    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }
  }

  
String Sample8_Explanation=
    "-Main Is The Principal Method That Run Once Program Started And Will Run The Class UISample8\n\n"
    "-Creating Class UISample8 Statefull Widget Due To Animation And State Change Of Loading Text\n\n"
    "-Crating Class State UISample8 That Extends Its Main State From The Main Class UISample8\n\n"
    "-Creating Variable S Describing Timer Counter In Seconds (1,2,3)\n\n"
    "-Creating Varible FetchTxt Describing Loading Text To Displaying That Will Be Changed On Each Seconds\n\n"
    "-Creating Variable PercNumVal Describing Progress Indicator Percentage\n\n"
    "-Creating Variable ScreenHeight That Will Store The Height Of The Screen\n\n"
    "-Creating Variable Runned Used To Run Once Build Context Is Builded For Getting Context Screen Height\n\n"
    "-Creating AnimationController AC That Will Control The Animation In Seconds\n\n"
    "-Creating Animation TBImg,TBTxt That Will Play Image And Text Animation Controlled By AC\n\n"
    "-Creating Method PlayImgAnim Used To Play The Animation By The Controller AC ,Reset Variables To Default And Forward Play It!\n\n"
    "-Creating Method Anim Of Type Transform That Used To Transoform Passed Widget In Parameter With Their Animation And Controllers And Translate Them Matrix4 To The Value Given In TB\n\n"
    "-Creating Method TB Taking Controller To Control The Animation And Value End Of The Animation Where It Tween Widget To The Value Given from 0\n\n"
    "-initState Initialize Page State On Start\n\n"
    "-Creating Method SplashData Used To Initialize Values, Animation Controller AC Duration Set To 5Sec And Listen On Every Change And Apply Change To The Page By SetState, TBImg Transalte 25% Of The Screen Height From The Top (Top Set By crossAxisAlignment), TBTxt Translate 45% From Bottom (Bottom Set By crossAxisAlignment)\n\n"
    "-Calling Play Animation Method To Start Playing\n\n"
    "-PercNumVal Set To 0.25 Thats Mean Progress Bar Will Load To 25% With Text Getting Tutorials And Quizzes ready\n\n"
    "-A Timer Will Activate For 3Sec Where Each Second Loading Text Will Change And Percentage Value Too,Once Arriving To 3 Will PushReplace Page1 And Cancel The Timer\n\n"
    "-Creating ParticleOptions That Will Play RandomBehavior To The Background Screen Of The Given Options With blueGrey Color\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-When Context is Builded Now We Can Get Screen Height Once Getten Set Runned To True\n\n"
    "-Returning Scaffold That Take Animated Background That Take Our Behavior That We Have Created And Taking As Child (body) Container With Screen Width And Height\n\n"
    "-3 Elements Stacked\n\n"
    "-First Element Is The Progress Bar Where Its Position From 50% Of The Screen\n\n"
    "-Second Element The Images Translating From Top Set By crossAxisAlignment start By 25% Of Screen Height Set By TDImg\n\n"
    "-Thirst Element The Text Translating From Bottom Set By crossAxisAlignment end By 45% Of Screen Height Set By TBImg\n\n"
    "-Finally Creating Page1 Used To Redirect User To...\n\n";


List Sample8_list =[
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
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugins:",),
              SizedBox(height: 16,),
              Image.asset("Images/UIS7P.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle: "\n\nWe Need To Import:\n",),
              CmpCode(CodeTxt:
                "import 'package:animated_background/animated_background.dart';\n\n"
                "import 'package:percent_indicator/linear_percent_indicator.dart';\n\n",
              )
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
              CmpTitle(Title:"Get Asset Here:",),
              Divider(),
              CmpSubTitle(SubTitle:"Tap The Button Bellow To Redirect You",),
              SizedBox(height: 16,),
               SizedBox (
                  width: double.infinity,
                    child:RaisedButton (
                     color: Colors.teal,
                      shape: RoundedRectangleBorder (
                        borderRadius: BorderRadius.circular (30.0),
                      ),
                      child:Text(
                        "Get Assets!",
                        style: TextStyle (
                          fontFamily: "PT Mono",
                          color: Colors.white,
                        ),
                      ),
                      onPressed:_launchUrl
                    ),
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