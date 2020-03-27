import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


List Animation_Intro_list =[
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
                SubTitle:
                    "Apply Animation On Widgets ( Images , Containers... )\n\n"
                    "First We Need To Add In Yaml:"
              ),
              Image.asset("Images/Anim1.PNG"),
              CmpSubTitle(
                  SubTitle:
                  "Dont Forget To Get Packages!\n\n"
                      "When We Need To Use It We Need To Import:\n"
                      "import 'package:animator/animator.dart';"
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



String Animation_Opacity_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AnimOpacityRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is State Change (Image Opacity Go From 0 To 100)\n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class AnimOpacityState That Extend Its State From The Main Class AnimOpacityRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-The Center Layout Contain An Animator That Animate An Image Represented In Child\n\n"
    "-Animation Take 8Sec To Finish\n\n"
    "-Play 1 Time Only\n\n"
    "-Animation Setting Set To Opacity\n\n"
    "-Opacity Value Set By The Parameter Variable .value That Go From 0 to 100 Calculated Due Time Given\n\n";


List Animation_Opacity_list =[
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
                    "Animator(\n"
                    " duration:\n"
                    "  Duration(seconds:8),\n"
                    " repeats:1,\n"
                    " builder:\n"
                    " (Animation anim)=>Opacity(\n"
                    "  opacity:anim.value,\n"
                    "  child:\n"
                    "   Image.asset(\n"
                    "    'Images/Flutter_Logo.png'\n"
                    "   ),\n"
                    " ),\n"
                    ")\n"
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------




String Animation_Fade_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(FadeRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is Image State Change \n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class FadeRunState That Extend Its State From The Main Class FadeRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout Taking A Row(Elements PLaced Inside Columns)\n\n"
    "-Each Column Take  An Animator That Animate An Image Represented In Child\n\n"
    "-Animation Take 5Sec To Finish\n\n"
    "-Play 30 Time Only\n\n"
    "-Animation Setting Set To Fade\n\n"
    "-OpacityFade Value Set By The Parameter Variable Calculated Due Time Given\n\n";


List Animation_Fade_list =[
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
                      "Animator(\n"
                      " duration:\n"
                      "  Duration(seconds:8),\n"
                      " repeats:1,\n"
                      " builder:\n"
                      " (Animation anim)=>FadeTransition(\n"
                      "  opacity:anim,\n"
                      "  child:\n"
                      "   Image.asset(\n"
                      "    'Images/Flutter_Logo.png'\n"
                      "   ),\n"
                      " ),\n"
                      ")\n"
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String Animation_TweenLtR_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TweenLtR_Run) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is Card State Change (Width) \n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class ARunState That Extend Its State From The Main Class TweenLtR_Run\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Take A ListView To Set Widgets Scrollable\n\n"
    "-ListView Take Column(Children Represented On Rows)\n\n"
    "-First Row Take An Animator That Animate A Container Containing Sized card\n\n"
    "-Play 1 Time Only\n\n"
    "-Go From 90 To The Max Screen Width \n\n"
    "-Finally Card Take Some Widgets Padded Represented Each On A Row\n\n"
    "-The Same For The Next Card Represented On Second Row\n\n";


List Animation_TweenLtR_list =[
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
                  "Animator(\n"
                      " repeats: 1,\n"
                      " duration:\n"
                      "  Duration(seconds:2),\n"
                      " tween:\n"
                      "  Tween<double>(\n"
                      "   begin: 90,\n\n"
                      "   end:\n"
                      "    MediaQuery.of(context).size.width,\n"
                      "  ),\n"
                      " cycles: 0,\n"
                      " builder: (anim) =>\n"
                      " Flexible(\n"
                      " child:\n"
                      "  Container(\n"
                      "  width: anim.value,\n"
                      " child:\n"
                      "  //Widgets Go Here "
                      "),\n"
                      "),\n"
                      "),\n",
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String Animation_TweenRtL_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(TweenRtL_Run) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is Card State Change (Width) \n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class ARunState That Extend Its State From The Main Class TweenRtL_Run\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Take A Container Having Background Color Set To Transparent,Screen Width And Height Taking As An Child A SizedBox Padded By 8px\n\n"
    "-Sized Box Height Set to 300 Taking An Card Where Its Elements Padded By 8px also\n\n"
    "-Taking An Column (Elemnts Placed Into Rows)\n\n"
    "-First Row Taking An Animator That Animate The Image PLaced Into Container From Max Width To Arrive To 90 Taking 2Secs,And Playing Just 1 Time\n\n"
    "-Second Row Taking A Text Placed Into A Container\n\n"
    "-Third Row Taking A Simple Flat Button That Navigate By Url\n\n";


List Animation_TweenRtL_list =[
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
                    "Animator(\n"
                    " repeats: 1,\n"
                    " duration:\n"
                    "  Duration(seconds:2),\n"
                    " tween:\n"
                    "  Tween<double>(\n"
                    "   begin:\n"
                    "    MediaQuery.of(context).size.width,"
                    "   end:90\n"
                    "  ),\n"
                    " cycles: 0,\n"
                    " builder: (anim) =>\n"
                    " Flexible(\n"
                    " child:\n"
                    "  Container(\n"
                    "  width: anim.value,\n"
                    " child:\n"
                    "  //Widgets Go Here "
                    "),\n"
                    "),\n"
                    "),\n",
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String Animation_Rotate_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AnimRotateRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is Image State Change \n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class AnimRotateState That Extend Its State From The Main Class AnimRotateRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout Take An Animator That Animate An Image Represented In Child Rotate The Image From The Start To Its Rayon End\n\n"
    "-Animation Take 8Sec To Finish\n\n"
    "-Play 1 Time Only\n\n"
    "-Animation Setting Set To Rotate\n\n"
    "-angle Value Set To The Rotate Degree Present in Anim.value\n\n";

List Animation_Rotate_list =[
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
                "--------",
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String Animation_Matrix4_RotateZ_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AnimM4RZRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is State Change (Image Turn)\n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class AnimM4RZState That Extend Its State From The Main Class AnimM4RZRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-The Center Layout Contain An Animator That Animate An Image Represented In Child\n\n"
    "-Animation Take 8Sec To Finish\n\n"
    "-Play 1 Time Only\n\n"
    "-Animation Setting Set To Matrix4 RotateZ\n\n";


List Animation_Matrix4_RotateZ_list =[
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
                "Animator(\n"
                    " duration:\n"
                    "  Duration(seconds: 4),\n"
                    " repeats:1,\n"
                    " builder:\n"
                    " (Animation anim) => Transform(\n"
                    "  transform:\n"
                    "   Matrix4.rotationZ(\n"
                    "    anim.value,\n"
                    "   ),\n"
                    "   child:\n"
                    "   Image.asset(\n"
                    "    'Images/Flutter_Logo.png',\n"
                    "    width: 50,\n"
                    "    height: 50,\n"
                    "   ),\n"
                    " ),\n"
                    ")\n"
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------



String Animation_Matrix4_RotateY_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(M4RYRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is State Change (Image Turn Degree)\n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class M4RYState That Extend Its State From The Main Class M4RYRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-The Center Layout Contain An Animator That Animate An Image Having W/H 120 Represented In Child\n\n"
    "-Animation Take 4Sec To Finish\n\n"
    "-Play 1 Time Only\n\n"
    "-Animation Transformed Into Matrix4 RotateY\n\n";


List Animation_Matrix4_RotateY_list =[
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
                      "Animator(\n"
                      " duration:\n"
                      "  Duration(seconds: 4),\n"
                      " repeats:1,\n"
                      " builder:\n"
                      " (Animation anim) => Transform(\n"
                      "  transform:\n"
                      "   Matrix4.rotationY(\n"
                      "    anim.value,\n"
                      "   ),\n"
                      "   child:\n"
                      "   Image.asset(\n"
                      "    'Images/Flutter_Logo.png',\n"
                      "    width: 120,\n"
                      "    height: 120,\n"
                      "   ),\n"
                      " ),\n"
                      ")\n"
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------



String Animation_Rotation_Transition_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AnimRotTransRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is State Change (Image Degree Turn)\n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class AnimRotTransState That Extend Its State From The Main Class AnimRotTransRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-The Center Layout Contain An Animator That Animate An Image Represented In Child\n\n"
    "-Animation Take 8Sec To Finish\n\n"
    "-Play 1 Time Only\n\n"
    "-Turns Set The Animation Degree\n\n";


List Animation_Rotation_Transition_list =[
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
                     "Animator(\n"
                      " duration:\n"
                      "  Duration(seconds: 8),\n"
                      " repeats:1,\n"
                      " builder:\n"
                      " (Animation anim)=>\n"
                      "  RotationTransition(\n"
                      " turns: anim,\n"
                      " child:\n"
                      " Image.asset(\n"
                      "  'Images/Flutter_Logo.png'\n"
                      "  ),\n"
                      " ),\n"
                      ")\n"
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String Animation_ElasticOut_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AnimElasticOutRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is State Change\n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class _AnimElasticOutState That Extend Its State From The Main Class AnimElasticOutRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-The Center Layout Contain An Animator That Animate An Image Represented In Child\n\n"
    "-Animation Take 5Sec To Finish And Play 1 Time,Tween From 1 To 2 By Scaling Itself Playing ElasticOut Animation\n\n";


List Animation_ElasticOut_list =[
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
                  "Animator(\n"
                  " duration:Duration(seconds:5,),\n"
                  " tween:Tween<double>("
                  "  begin: 1,\n"
                  "  end:2,\n"
                  " ),\n"
                  " curve: Curves.elasticOut,\n"
                  " cycles:0,\n"
                  " repeats:1,\n"
                  " builder:\n"
                  " (Animation anim)=>Transform.scale(\n"
                  "  scale:anim.value,\n"
                  "  child:Container(\n"
                  "   width:170,\n"
                  "   height:170,\n"
                  "   child:\n"
                  "    Image.asset(\n"
                  "     'Images/Flutter_Logo.png',\n"
                  "     width: 50,\n"
                  "     height:50,\n"
                  "    ),\n"
                  "   ),\n"
                  " ),\n"
                  "),"
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------





String Animation_ElasticIn_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AnimElasticInRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is State Change\n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class _AnimElasticInState That Extend Its State From The Main Class AnimElasticInRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-The Center Layout Contain An Animator That Animate An Image Represented In Child\n\n"
    "-Animation Take 5Sec To Finish And Play 1 Time,Tween From 1 To 2 By Scaling Itself Playing ElasticIn Animation\n\n";



List Animation_ElasticIn_list =[
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
                  "Animator(\n"
                      " duration:Duration(seconds:5,),\n"
                      " tween:Tween<double>("
                      "  begin: 1,\n"
                      "  end:2,\n"
                      " ),\n"
                      " curve: Curves.elasticIn,\n"
                      " cycles:0,\n"
                      " repeats:1,\n"
                      " builder:\n"
                      " (Animation anim)=>Transform.scale(\n"
                      "  scale:anim.value,\n"
                      "  child:Container(\n"
                      "   width:170,\n"
                      "   height:170,\n"
                      "   child:\n"
                      "    Image.asset(\n"
                      "     'Images/Flutter_Logo.png',\n"
                      "     width: 50,\n"
                      "     height:50,\n"
                      "    ),\n"
                      "   ),\n"
                      " ),\n"
                      "),"
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------


String Animation_BounceIn_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(AnimBounceInRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget As There Is State Change\n\n"
    "-Creating Class Main State\n\n"
    "-Now Creating Another Class _AnimBounceInState That Extend Its State From The Main Class AnimBounceInRun\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Has Scaffold\n\n"
    "-Scaffold Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Centered Layout\n\n"
    "-The Center Layout Contain An Animator That Animate An Image Represented In Child\n\n"
    "-Animation Take 5Sec To Finish And Play 1 Time,Tween From 1 To 2 By Scaling Itself Playing BounceIn Animation\n\n";



List Animation_BounceIn_list =[
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
                      "Animator(\n"
                      " duration:\n"
                      "  Duration(\n"
                      "   seconds:5,\n"
                      "  ),\n"
                      "  tween:\n"
                      "   Tween<double>(\n"
                      "    begin: 1,\n"
                      "    end:2,\n"
                      "   ),\n"
                      "   curve:Curves.bounceIn,\n"
                      "   cycles:0,\n"
                      "   repeats:1,\n"
                      "   builder:\n"
                      "   (Animation anim)=>\n"
                      "   Transform.scale(\n"
                      "    scale:anim.value,\n"
                      "    child:\n"
                      "    Container(\n"
                      "     width:170,\n"
                      "     height:170,\n"
                      "     child:\n"
                      "     Image.asset(\n"
                      "     'Images/Flutter_Logo.png',\n"
                      "     width: 50,\n"
                      "     height:50,\n"
                      "     ),\n"
                      "    ),\n"
                      "   ),\n"
                      " ),\n"
              )

            ]
        ),
      ),
    ),
  ),
];

//-----------------------------------------------
//-----------------------------------------------
//-----------------------------------------------