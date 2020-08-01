import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';
import 'package:get/get.dart';
import '../AppSoundPlay.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/CmpWebView.dart';

var PageViewAnimationGlobal =ListTile(
    leading:Image.asset("Images/Dart_Logo.png"),
    title:Text("PageView",),
    subtitle:Text("Tap Here To See The Official Documentation Provided On This Widget!",),
    onTap:(){
      PlayTapSound();
      Get.to(
      CmpWebViewPage(
        Title:"PageView",
        GoUrl:"https://api.flutter.dev/flutter/widgets/PageView-class.html",
      )
      );
    },
);

List PageViewAnimation_OffDoc=[
  SizedBox(height:10),
  PageViewAnimationGlobal,
];




String PageViewAnimation_Transition1_Explanation=
    "-main Is The Principal Method Used To Run PageViewTransition_1_Run Class On Start\n\n"
    "-Creating Class PageViewTransition_1_Run,Statefull Widget Due To Position Change Of The PageView, Create State Needed\n\n"
    "-Creating State Class PageViewTransition_1_State That Extend Its Main State From The Main Class PageViewTransition_1_Run\n\n"
    "-Creating String Variable controller Used To Control Page View\n\n"
    "-Creating Variable currentPageValue Used To Know PageView Active Page Index Initialized To 0 (First Page)\n\n"
    "-Creating PageViewItem List That Take Widgets To Be Placed Inside The The Page View Each A Container With Different Color Taking A Row Where Content Cenetered\n\n"
    "-First in initState We Need To Initialize Page And Set The Controller Listener That Will Activate On Each Swipe And Update Selected Page Index Into Variable currentPageValue Where Value Is Decimal Example Going From 1 To 2 May Return (1.33 Or 1.45 Or 1.75 Depends On Swipe...)\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Returning Material App That Take As Home Scaffold That Allow Using Body And AppBar\n\n"
    "-As An AppBar Taking Simple Text\n\n"
    "-As An Body Taking PageView\n\n"
    "-PageView Take The ItemCount (Number Of Children Here 3 As List Have 3 Widgets)\n\n"
    "-ScrollDirection Set To Horizontal You Can Still Set It To Vettical\n\n"
    "-controller To Control Each Action On PageView And Get Value Of Swipes And Active Page Index\n\n"
    "-Finally Starting Building The Items Were The Item Returned By The List On Its Position And RotatedX\n\n"
    "-RotateX Value Goes Between 0 And 1 If Negative Rotate Left If Positive Rotate Right\n\n"
    "-Example Going From 2 To 3 Noting That Position 2 And CurrentPage Value 2.30 => 2.30-2 = 0.3 Rotate By 0.3\n\n";


List PageViewAnimation_Transition1_list =[
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
              CmpTitle(Title:"What Is PageView?",),
              Divider(),
              CmpSubTitle(SubTitle:"A scrollable list that works page by page.\n",),
            ]
        ),
      ),
    ),
  ),


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

              CmpSubTitle(SubTitle:"1-Creating Page Controller Used To Control Pages And Listen To Swipes:\n",),
              CmpCode(CodeTxt:"PageController controller = PageController();\n",),

              CmpSubTitle(SubTitle:"2-Creating Variable currentPageValue Used To Set Number Of Selected Page:\n",),
              CmpCode(CodeTxt:"var currentPageValue = 0.0;\n",),

              CmpSubTitle(SubTitle:"3-Adding Listener To The Controller To Change Selected Page Index When Page Is Changed:\n",),
              CmpCode(
                CodeTxt:
                 "controller.addListener(() {\n"
                 " setState(() {\n"
                 "  currentPageValue = controller.page;\n"
                 " });\n"
                 "});\n",
              ),

              CmpSubTitle(SubTitle:"4-Create Page Widget Content In A List Vatriable:\n",),
              CmpCode(
                CodeTxt:
                 "List PageViewItem = [\n"
                 "  Container(...),\n"
                 "  Column(...),\n"
                 "  ...\n"
                 "]\n"
              ),


              CmpSubTitle(SubTitle:"5-Building The Page View :\n",),
              CmpCode(
                CodeTxt:
                 "PageView.builder(\n"
                 " itemCount:PageViewItem.length,\n"
                 " scrollDirection:Axis.horizontal,\n"
                 " controller: controller,\n"
                 " itemBuilder: (context, position) {\n"
                 "  return Transform(\n"
                 "   transform:\n"
                 "     Matrix4.identity()..rotateX(currentPageValue - position),\n"
                 "     child:PageViewItem[position]\n"
                 "   );\n"
                 "}\n"
              ),

              Divider(),
              CmpSubTitle(
                SubTitle:
                 "Note:\n"
                 "Position Values Goes Between 0 1 2\n"
                 "currentPageValue Value Goes Between 0 And 1 Decimal Examples (0.255 , 1.8976 , 2.767 )\n"
                 "CurrentPositionValue - Postion Will Return Decimal Number Between (0 And 1) Negative Rotate Left ,Positive Rotate Right",
              ),
              Divider(),

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



String PageViewAnimation_Transition2_Explanation=
 "-main Is The Principal Method Used To Run PageViewTransition_2_Run Class On Start\n\n"
    "-Creating Class PageViewTransition_2_Run,Statefull Widget Due To Position Change Of The PageView, Create State Needed\n\n"
    "-Creating State Class PageViewTransition_2_State That Extend Its Main State From The Main Class PageViewTransition_2_Run\n\n"
    "-Creating String Variable controller Used To Control Page View\n\n"
    "-Creating Variable currentPageValue Used To Know PageView Active Page Index Initialized To 0 (First Page)\n\n"
    "-Creating PageViewItem List That Take Widgets To Be Placed Inside The The Page View Each A Container With Different Color Taking A Row Where Content Cenetered\n\n"
    "-First in initState We Need To Initialize Page And Set The Controller Listener That Will Activate On Each Swipe And Update Selected Page Index Into Variable currentPageValue Where Value Is Decimal Example Going From 1 To 2 May Return (1.33 Or 1.45 Or 1.75 Depends On Swipe...)\n\n"
    "-As Flutter Is Based On Widgets We Need To Create One\n\n"
    "-Returning Material App That Take As Home Scaffold That Allow Using Body And AppBar\n\n"
    "-As An AppBar Taking Simple Text\n\n"
    "-As An Body Taking PageView\n\n"
    "-PageView Take The ItemCount (Number Of Children Here 3 As List Have 3 Widgets)\n\n"
    "-ScrollDirection Set To Horizontal You Can Still Set It To Vettical\n\n"
    "-controller To Control Each Action On PageView And Get Value Of Swipes And Active Page Index\n\n"
    "-Finally Starting Building The Items Were The Item Returned By The List On Its Position And RotatedZ\n\n"
    "-RotateX Value Goes Between 0 And 1 If Negative Rotate Left If Positive Rotate Right\n\n"
    "-Example Going From 2 To 3 Noting That Position 2 And CurrentPage Value 2.30 => 2.30-2 = 0.3 Rotate By 0.3\n\n";


List PageViewAnimation_Transition2_list =[
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
              CmpTitle(Title:"What Is PageView?",),
              Divider(),
              CmpSubTitle(SubTitle:"A scrollable list that works page by page.\n",),
            ]
        ),
      ),
    ),
  ),


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

              CmpSubTitle(SubTitle:"1-Creating Page Controller Used To Control Pages And Listen To Swipes:\n",),
              CmpCode(CodeTxt:"PageController controller = PageController();\n",),

              CmpSubTitle(SubTitle:"2-Creating Variable currentPageValue Used To Set Number Of Selected Page:\n",),
              CmpCode(CodeTxt:"var currentPageValue = 0.0;\n",),

              CmpSubTitle(SubTitle:"3-Adding Listener To The Controller To Change Selected Page Index When Page Is Changed:\n",),
              CmpCode(
                CodeTxt:
                 "controller.addListener(() {\n"
                 " setState(() {\n"
                 "  currentPageValue = controller.page;\n"
                 " });\n"
                 "});\n",
              ),

              CmpSubTitle(SubTitle:"4-Create Page Widget Content In A List Vatriable:\n",),
              CmpCode(
                CodeTxt:
                 "List PageViewItem = [\n"
                 "  Container(...),\n"
                 "  Column(...),\n"
                 "  ...\n"
                 "]\n"
              ),


              CmpSubTitle(SubTitle:"5-Building The Page View :\n",),
              CmpCode(
                CodeTxt:
                 "PageView.builder(\n"
                 " itemCount:PageViewItem.length,\n"
                 " scrollDirection:Axis.horizontal,\n"
                 " controller: controller,\n"
                 " itemBuilder: (context, position) {\n"
                 "  return Transform(\n"
                 "   transform:\n"
                 "     Matrix4.identity()..rotateZ(currentPageValue - position),\n"
                 "     child:PageViewItem[position]\n"
                 "   );\n"
                 "}\n"
              ),

              Divider(),
              CmpSubTitle(
                SubTitle:
                 "Note:\n"
                 "Position Values Goes Between 0 1 2\n"
                 "currentPageValue Value Goes Between 0 And 1 Decimal Examples (0.255 , 1.8976 , 2.767 )\n"
                 "CurrentPositionValue - Postion Will Return Decimal Number Between (0 And 1) Negative Rotate Left ,Positive Rotate Right",
              ),
              Divider(),

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

