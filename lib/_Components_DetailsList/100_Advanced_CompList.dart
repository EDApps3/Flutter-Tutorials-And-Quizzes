import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';



String A1_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(A1Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is Not Any Change Of Any Data After The Program Is Loaded\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Material App That Allow Us To Set App Title And The Theme, Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Container That Take A ListView As An Child To Allow Scrolling And Avoid OverFlow\n\n"
    "-ListView Scroll Direction Set Vertical From Up To Down Or Down To Up\n\n"
    "-Taking As Children 2 Rows Padded By 8 ( Row1 For Flutter And Google && Row2 For Dart And Facebook )\n\n"
    "-Each Row Take A 2 Column ( Display Each On Row As We Need Image And Text Under It )\n\n"
    "-Each Column Children Aligned To The Center Taking As First Row An Image Globbed By Gesture Detector To Detect The Tap Once Tape Will Take The User To The Needed Page,Second Row Taking Text Describing Image\n\n"
    "-Finally Creating Pages For Each Navigation (Flutter,Facebook,Google,Dart) Where It Take An AppBar With Title And Centered Image As An Body\n\n";

List A1_list =[
  SizedBox(height:5,),
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


String A2_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(A2Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is Not Any Change Of Any Data After The Program Is Loaded\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Material App That Allow Us To Set App Title And The Theme, Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Container Where Its Color (BgColor) Set To DeepPurple And Its Width Set To The Max Width Of The Screen And The Height Too Set To The Max Height Of The Screen\n\n"
    "-The Container Take Column To Display Children As Rows\n\n"
    "-Row1 Taking SizedBox With A Height 60\n\n"
    "-Row2 Taking A Text With Left To Right Direction And Styled To White And FontSize 28\n\n"
    "-Row3 Taking A SizedBox With Height 80\n\n"
    "-Row4 Taking Raised Button Shape Set To Circular By Radius 30 Having A Padded Text And Styled\n\n";


List A2_list =[
  SizedBox(height:5,),
];


//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------



String A3_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(A3Run) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is Change Of Any Data After The Program Is Loaded\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Material App That Allow Us To Set App Title And The Theme, Taking As An Home Class Page (Return the Scaffold)\n\n"
    "-Creating Class Page Stateless Widget Due To No Change Return Scaffold\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Centered Raised Button With Blue Color Rounded By 30 Taking Child Text Showing Its Value\n\n"
    "-Once Pressed It Will Show A Dialog,Context Needed As Working With Navigation,Builder Needed As We Need To Build Instance Of Dialog By Calling Class CustomDialog And Pass Variables\n\n"
    "-Creating Class CustomDialog Where Color Variable Initialized,And Data Variable Needed Initialized\n\n"
    "-Returning An Dialog Rounded By 20.0 With Shadows Where Its Widgets Represented By Column(Each On Row)\n\n"
    "-Row 1 Take An SizedBox With 24 Height\n\n"
    "-Row 2 Take Text Where Value Title Passed By Constructor Centered Represented On 2 Lines Max And Styled By Color Anf Font Size\n\n"
    "-Row 3 Take An SizedBox With 24 Height\n\n"
    "-Row 4 Take Text Where Value Description Passed By Constructor Centered Represented On 4 Lines Max And Styled By Color Anf Font Size\n\n"
    "-Row 5 Take An SizedBox With 24 Height\n\n"
    "-Row 6 RaisedButton Rounded With padded Text Value Passed By Constructor(primaryButtonText),Once Pressed Popping(Closing) The Dialog And Going To The Needed Page (/Page)\n\n"
    "-Row 7 Taking Sized Box By Height 10\n\n"
    "-Row 8 RaisedButton Rounded With padded Text Value Passed By Constructor(secondaryButtonText),Once Pressed Popping(Closing) The Dialog\n\n";


List A3_list =[
  SizedBox(height:5,),
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


String A4_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(A4Run) To Be Runned\n\n"
    "-This Class Is StatefullWidget Due To State Change (New Image Added,List Must Be Updated And Show The New Image),And Creating Its State\n\n"
    "-Creating State Class A4RunState That Extends Its Main State From The Main Class A4Run\n\n"
    "-First Creating List imgList Having 3 Images From Assets\n\n"
    "-Creating A Method AddRandomImage Used To Add New Image To The List,Once Called It Generate A Radom Number,Each Generated Number Will Add A Specific Image To The List\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Variable ImgCount That Container Number Of Images In List (3 If 3 Images)\n\n"
    "-returning Scaffold That Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take Padded ListView By 12\n\n"
    "-ListView Allow Scrolling And Avoiding OverFlow\n\n"
    "-ListView Taking First A Row(Elements Placed Into Columns) Col1 Taking Text Representing Image Count, Col2 Taking SizedBox With Width 45, Col3 Taking A FlatButton Once Pressed Will Add Image And Update The Entire Page By SetState\n\n"
    "-Taking Secondly Centered Container with width 200 and height 150 Containing Each Image Traversed Using For loop\n\n";


List A4_list =[
  SizedBox(height:5,),
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


String A5_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(A5_Row_Layout_Run) To Be Runned\n\n"
    "-This Class Is StatefullWidget Due To State Change (Changing Axis Of Row)\n\n"
    "-Creating State Class A5_Row_Layout_State That Extends Its Main State From The Main Class A5_Row_Layout_Run\n\n"
    "-Creating _MainAxisradioValue Variable Used To Know The Value Of MainAxisAlignment ( 0-> start 1->center 2->end )\n\n"
    "-Creating _CrossAxisradioValue Variable Used To Know The Value Of CrossAxisAlignment ( 0-> start 1->center 2->end )\n\n"
    "-Creating MainAxis Varible Used To Set MainAxisAlignment Initialized To start Changed When Used Change Radio Value\n\n"
    "-Creating CrossAxis Varible Used To Set CrossAxisAlignment Initialized To start Changed When Used Change Radio Value\n\n"
    "-Creating _handleMainAxisRadioValueChange Method Take Value Variable As Paremeter Representing Value Of The Selected Radio And Store It Into The Variable That We Have Created _MainAxisradioValue, Now Switching Value To Know Wich Selected And Applying Change To The Axis SetState Used To Update Page Variable\n\n"
    "-Creating _handleCrossAxisRadioValueChange Method Take Value Variable As Paremeter Representing Value Of The Selected Radio And Store It Into The Variable That We Have Created _CrossAxisradioValue, Now Switching Value To Know Wich Selected And Applying Change To The Axis SetState Used To Update Page Variable\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Variable ImgCount That Container Number Of Images In List (3 If 3 Images)\n\n"
    "-returning Scaffold That Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take ListView That Allow Scrolling And Avoiding OverFlow\n\n"
    "-Row 1 Taking Text \n\n"
    "-Row 2 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 0  Grouped To _MainAxisradioValue Once Changed Call _handleMainAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 3 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 1  Grouped To _MainAxisradioValue Once Changed Call _handleMainAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 4 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 2  Grouped To _MainAxisradioValue Once Changed Call _handleMainAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 5 Taking An Divider (Line) \n\n"
    "-Row 6 Taking Text \n\n"
    "-Row 7 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 0  Grouped To _CrossAxisradioValue Once Changed Call _handleCrossAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 8 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 1  Grouped To _CrossAxisradioValue Once Changed Call _handleCrossAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 9 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 2  Grouped To _CrossAxisradioValue Once Changed Call _handleCrossAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 10 Taking An Divider (Line) \n\n"
    "-Row 11 Taking Container With Teal BgColor And Max Width And Height 200 Taking A Row That We Will Apply Effect On Updated On Each SetState\n\n"
    "-Container Row mainAxisAlignment Set To MainAxis Variable (Changed On Each User Select)\n\n"
    "-Container Row crossAxisAlignment Set To CrossAxis Variable (Changed On Each User Select)\n\n"
    "-Row Taking As Children A Text That Will Take effect On Them\n\n";


List A5_list =[
  SizedBox(height:5,),
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



String A6_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(A6_Col_Layout_Run) To Be Runned\n\n"
    "-This Class Is StatefullWidget Due To State Change (Changing Axis Of Column)\n\n"
    "-Creating State Class A6_Col_Layout_Run That Extends Its Main State From The Main Class A6_Col_Layout_Run\n\n"
    "-Creating _MainAxisradioValue Variable Used To Know The Value Of MainAxisAlignment ( 0-> start 1->center 2->end )\n\n"
    "-Creating _CrossAxisradioValue Variable Used To Know The Value Of CrossAxisAlignment ( 0-> start 1->center 2->end )\n\n"
    "-Creating MainAxis Varible Used To Set MainAxisAlignment Initialized To start Changed When Used Change Radio Value\n\n"
    "-Creating CrossAxis Varible Used To Set CrossAxisAlignment Initialized To start Changed When Used Change Radio Value\n\n"
    "-Creating _handleMainAxisRadioValueChange Method Take Value Variable As Paremeter Representing Value Of The Selected Radio And Store It Into The Variable That We Have Created _MainAxisradioValue, Now Switching Value To Know Wich Selected And Applying Change To The Axis SetState Used To Update Page Variable\n\n"
    "-Creating _handleCrossAxisRadioValueChange Method Take Value Variable As Paremeter Representing Value Of The Selected Radio And Store It Into The Variable That We Have Created _CrossAxisradioValue, Now Switching Value To Know Wich Selected And Applying Change To The Axis SetState Used To Update Page Variable\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Variable ImgCount That Container Number Of Images In List (3 If 3 Images)\n\n"
    "-returning Scaffold That Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take ListView That Allow Scrolling And Avoiding OverFlow\n\n"
    "-Row 1 Taking Text \n\n"
    "-Row 2 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 0  Grouped To _CrossAxisradioValue Once Changed Call _handleCrossAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 3 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 1  Grouped To _CrossAxisradioValue Once Changed Call _handleCrossAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 4 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 2  Grouped To _CrossAxisradioValue Once Changed Call _handleCrossAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 5 Taking An Divider (Line) \n\n"
    "-Row 6 Taking Text \n\n"
    "-Row 7 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 0  Grouped To _MainAxisradioValue Once Changed Call _handleMainAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 8 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 1  Grouped To _MainAxisradioValue Once Changed Call _handleMainAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 9 Taking Row (Elements Placed Into Columns) Col1 Taking Radio That Values Go Between 2  Grouped To _MainAxisradioValue Once Changed Call _handleMainAxisRadioValueChange And Change Value And Update State And Col2 Text \n\n"
    "-Row 10 Taking An Divider (Line) \n\n"
    "-Row 11 Taking Container With Teal BgColor And Max Width And Height 200 Taking A Column That We Will Apply Effect On Updated On Each SetState\n\n"
    "-Container Column mainAxisAlignment Set To MainAxis Variable (Changed On Each User Select)\n\n"
    "-Container Column crossAxisAlignment Set To CrossAxis Variable (Changed On Each User Select)\n\n"
    "-Column Taking As Children A Text That Will Take effect On Them\n\n";

List A6_list =[
  SizedBox(height:5,),
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


String A7_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(A7Run) To Be Runned\n\n"
    "-This Class Is StatefullWidget Due To State Change (Animation Move + Text Change)\n\n"
    "-Creating State Class _A7State That Extends Its Main State From The Main Class A7Run with TickerProviderStateMixin As There Is Animating\n\n"
    "-Creating AnimationController That Will Control The Animation Of Each Ball (AC1,AC2...AC7)\n\n"
    "-Creating Animation<double> That Will Play Moving Animation Tween Of Each Ball (TB1,TB2..TB7)\n\n"
    "-Creating Integer Variable BallsLeft Initialized to 7,Describe Number Of Balls And Deduced When Ball Finished Animation And Ending The Game When Arrive At 0\n\n"
    "-Creating Method TB (To Avoid Duplicate Used 7 Times) That Return Tween Animation Taking 2 Parameters end Describe Number To Move To,AC Is the Animation Controller That Will Control The Animation...Moving From 0 To The End(Number Passed) Using CurvedAnimation\n\n"
    "-Creating Method AC (To Avoid Duplicate Used 7 Times) That Return AnimationController That Will Controler The Tween Animation Taking Duration To Finish 500ms,Change Satate Every Time Called\n\n"
    "-initState Used To Initilize Page On Start,Once Initialized We Initialize Our AnimationControllers (AC1,AC2...AC7) And Tween Animation (TB1,TB2...TB3) That Take AnimationController AC And End Number To Move To\n\n"
    "-dispose Used To Dispose Page State When Closed\n\n"
    "-Creating Method Ball That Will Transform (Move The Ball) And Add It As A Widget.Transform Move The Balls By Its Tween TB Already Initialized in initState,Taking gesture Detector To Detect Ball (Clipped Container By Oval) Tap. Once Tapped Call Animation Controller To Play The Animation And Reduce Balls Number Left,If 0 Then Calling Restart Method\n\n"
    "-Creating Method Restart That Reinitialize Balls to 7 And reset All Animation Controllers\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-returning MaterialApp Taking Scaffold That Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title And As An Action (Set To Right) Icon Button Restarting The Game By Calling Restart Method We Created Shown Only If Balls Equal To Zero\n\n"
    "-As An Body It Take Row (Elements Represented On Columns),And Each Col Will Take A Ball!\n\n";

List A7_list =[
  SizedBox(height:5,),
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


String A8_Explanation=
    "Soon!\n\n";

List A8_list =[
  SizedBox(height:5,),
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