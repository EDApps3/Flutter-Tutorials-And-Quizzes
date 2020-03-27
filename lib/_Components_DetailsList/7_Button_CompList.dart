import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Btn_SimpleRaisedBtn_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BtnSimpleRaisedBtnRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Raised Button (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain The Raised Button\n\n"
    "-A Raised Button Has An Text Child That Show As Button Value\n\n"
    "-On Pressed Event That Call Any Action Putted Inside(Methods , or Instruction Like Show An Alert...)\n\n"
    "-Centered Layout Center The Raised Button\n\n";


List SimpleRaisedBtn_list =[
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
              CmpTitle(Title:"Raised Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Material Design Button Having Elevation",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "RaisedButton(\n"
                    " child:Text('Txt'),\n"
                    " onPressed: () {\n"
                    "   //Method Or Action To Be Done\n"
                    " },\n"
                    ")\n",
              ),
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


String ButtonMatchParent_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BtnSimpleRaisedBtnFullWidthRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Raised Button Full Width (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain Sized Box That Will Be Used To Size The Box To Its Width(You Can Also St Height).\n\n"
    "-Sized Box Having Width Set To Max By double.infinity,Now Child Inside Will Take Its Size\n\n"
    "-Now Sized Box Having The Raised Button As A Child That Has As An Child Text Representing Its Value\n\n"
    "-On Pressed Event Used To Do An Action When The Button Is Pressed\n\n";


List ButtonMatchParent_list =[
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
              CmpTitle(Title:"Raised Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Set Raised Button To Custom Width And Height",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "SizedBox(\n"
                    " width:double.infinity,\n"
                    " //height:Value,\n"
                    " child:\n"
                    "  RaisedButton(\n"
                    "   child:Text('Txt'),\n"
                    "   onPressed: () {\n"
                    "     //Method Or Action To Be Done\n"
                    "   },\n"
                    " ),\n"
                    ")\n",
              ),
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

String Btn_RaisedRounded_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BtnSimpleRaisedRoundedBtnRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Rounded Raised Button (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain Raised Button\n\n"
    "-You Can Round The Button By Applying RoundedRectangleBorder In The Shape And Set Border Radius Circular To 30 Or Any Other Value\n\n"
    "-The Button Take An Child A Text Representing Its Value\n\n"
    "-On Pressed Event Used To Do An Action When The Button Is Pressed\n\n";


List Btn_RaisedRoundedBtn_list =[
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
              CmpTitle(Title:"Raised Button Style:",),
              Divider(),
              CmpSubTitle(SubTitle:"You Can Still Apply Style On The Button,Example:Round.",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "RaisedButton(\n"
                    " shape:\n"
                    "  RoundedRectangleBorder(\n"
                    "    borderRadius:\n"
                    "     BorderRadius.circular(30.0),\n"
                    "  ),"
                    "  child:Text('Txt'),\n"
                    "  onPressed: () {\n"
                    "   //Method Or Action To Be Done\n"
                    "  },\n"
                    ")\n",
              ),
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


String Btn_RaisedStyled_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BtnRaisedRoundedRedBgWTxtRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Style A Raised Button (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain Raised Button Having Color Set To Red\n\n"
    "-You Can Round The Button By Applying RoundedRectangleBorder In The Shape And Set Border Radius Circular To 30 Or Any Other Value\n\n"
    "-The Button Take An Child A Text Representing Its Value Styled By TextStyle And Its Color Set To White\n\n"
    "-On Pressed Event Used To Do An Action When The Button Is Pressed\n\n";


List Btn_RaisedStyled_list =[
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
              CmpTitle(Title:"Raised Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Styling The Raised Button!",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "RaisedButton(\n"
                " color: Colors.red,\n"
                " shape:RoundedRectangleBorder(\n"
                "  borderRadius:\n"
                "   BorderRadius.circular(30.0),\n"
                " ),"
                " child:\n"
                "  Text(\n"
                "   'Click Me',\n"
                "   style: TextStyle(\n"
                "    color: Colors.white,\n"
                "   ),\n"
                "  ),\n"
                " onPressed: () {\n"
                "  //Do Action"
                " },\n"
                ")\n",
              ),
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


String Btn_RaisedRoundedGradient_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BtnRoundedRaisedGradientBtnRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Rounded Gradient Raised Button (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Call A Class Name TestPage (Scaffold Inside The New Class So Scaffold is In The BtnRoundedRaisedGradientBtnRun Class)\n\n"
    "-Test Page Has The Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain Sized Box To Set The Width And Height\n\n"
    "-SizedBox Has Width 200 And Height 40\n\n"
    "-Inside That SizedBox We Place The RaisedButton\n\n"
    "-To Set The Round Of The Button We Use Shape -> Rounded RectangularBorder\n\n"
    "-To Set The Gardient Of the Button We Put Container That Fit That Raised Button With The same Width 200 And Height 40\n\n"
    "-To Set The Gradient We Need BoxDecoration Where We Can Set Colors of Gradient\n\n"
    "-Also Container Need To Be Rounded By 80 Like Raised Button So They Fit\n\n"
    "-A Raised Button Has An Text Child That Show As Button Value\n\n"
    "-On Pressed Event That Call Any Action Putted Inside(Methods , or Instruction Like Show An Alert...)\n\n"
    "-Finally Moving Text From Sides By Padding And Setting The text To Get Centered\n\n"
    "-Centered Layout Center The SizedBox(Containing RaisedButton -> Container (Gradient Set On) )\n\n";


List Btn_RaisedRoundedGradient_list =[
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
              CmpTitle(Title:"Raised Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Applying Gradient With Rounding!",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "SizedBox(\n"
                " width: 200,\n"
                " height: 40,\n"
                " child: RaisedButton(\n"
                "  onPressed: () {},\n"
                "  padding:\n"
                "   const EdgeInsets.all(0.0),\n"
                "  shape:\n"
                "   RoundedRectangleBorder(\n"
                "    borderRadius:\n"
                "     BorderRadius.circular(80.0),\n"
                "   ),\n"
                "   child: Container(\n"
                "    width: 200,\n"
                "    height: 40,\n"
                "    decoration:\n"
                "     const BoxDecoration(\n"
                "      gradient: LinearGradient(\n"
                "       colors: <Color>[\n"
                "         Color(0xFF0D47A1),\n"
                "         Color(0xFF1976D2),\n"
                "         Color(0xFF42A5F5),\n"
                "       ],\n"
                "      ),\n"
                "      borderRadius:\n"
                "       BorderRadius.all(Radius.circular(80.0))\n"
                "     ),\n"
                "     padding:\n"
                "      const EdgeInsets.fromLTRB(20, 10, 20, 10),\n"
                "     child: const Text(\n"
                "      'txt',\n"
                "      textAlign: TextAlign.center,\n"
                "     ),\n"
                "    ),\n"
                "  ),\n"
                ")\n",
              ),
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


String Btn_RoundedIconButton_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BtnLittleRoundedIconBtnRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Raised Button (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Title And Light Theme\n\n"
    "-As An Home It Call A Class Name TestPage (Scaffold Inside The New Class So Scaffold is In The BtnLittleRoundedIconBtnRun Class)\n\n"
    "-Test Page Has The Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain Clip Oval That Turn Content Into Oval(Circle)\n\n"
    "-To Set The Background Color We Add Container Having color blue\n\n"
    "-Inside That Container We Add The Icon Button That Contain Icon Android\n\n"
    "-Icon Background Color Set to yellow By color"
    "-On Pressed Event That Call Any Action Putted Inside(Methods , or Instruction Like Show An Alert...)\n\n"
    "-Centered Layout Center The ClipOval(Containing Container -> IconButton)\n\n";


List Btn_RoundedIconButton_list =[
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
              CmpTitle(Title:"Rounded Icon Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Little Rounded Icon Button!",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "ClipOval(\n"
                    " child:Container(\n"
                    "  color:Colors.blue,\n"
                    " child:IconButton(\n"
                    "  icon:Icon(Icons.android),\n"
                    "  color:Colors.yellow,\n"
                    "   onPressed: () {\n"
                    "    //Nothing To Do\n"
                    "   },\n"
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



String Btn_FlatButton_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BtnSimpleFlatBtnRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Flat Button (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take An Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain The Flat Button\n\n"
    "-The Button Value Set By a Text Child\n\n"
    "-On Pressed Event That Call Any Action Putted Inside(Methods , or Instruction Like Show An Alert...)\n\n"
    "-Centered Layout Center The Flat Button\n\n";


List Btn_FlatButton_list =[
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
              CmpTitle(Title:"Flat Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Simple Flat Button!",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "FlatButton(\n"
                    " child:Text('Login'),\n"
                    " onPressed: () {\n"
                    "   //Nothing To Do\n"
                    " },\n"
                    ")\n",
              ),
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




String Btn_FlatIconButton_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(BtnFlatIconGreyBgBtnRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Flat Button With Icon (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain The Flat Icon Button\n\n"
    "-The Button Has Background Color Set By color:Colors.grey\n\n"
    "-The Button Icon Set By icon:Icons.add\n\n"
    "-The Button Value Set By label\n\n"
    "-On Pressed Event That Call Any Action Putted Inside(Methods , or Instruction Like Show An Alert...)\n\n"
    "-Centered Layout Center The Flat Button\n\n";


List Btn_FlatIconButton_list =[
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
              CmpTitle(Title:"Flat Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Flat Button With Icon!",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "FlatButton.icon(\n"
                    " color:Colors.grey,\n"
                    " icon:Icon(Icons.add),\n"
                    " label:Text('Add'),\n"
                    " onPressed: () {\n"
                    "   //Nothing To Do\n"
                    " },\n"
                    "),\n"
              ),
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




String Btn_SimpleOutlineButton_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleOutlineBtn) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Ouline Button (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain The Outline Button\n\n"
    "-The Button Take As Child Text Value To Be Shown\n\n"
    "-OnPressed Used To Do An Action When User Press The Button,Here No Action To Do\n\n";


List Btn_SimpleOutlineButton_list =[
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
              CmpTitle(Title:"Outline Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Its A Button Displaying With Border",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "OutlineButton(\n"
                  " child:Text('Txt'),\n"
                  "  onPressed:(){},\n"
                  ")\n"
              ),
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





String Btn_StyledOutlineButton_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleStyledOutlineBtn) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Styled Outline Button(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain The Outline Button\n\n"
    "-The Button Take As Child Text Value To Be Shown\n\n"
    "-color Set The BackgroundColor Of The Button When Pressed\n\n"
    "-textColor Change Button Text Color\n\n"
    "-BorderSide Control Border Styling:Color,Width,Style...\n"
    "-OnPressed Used To Do An Action When User Press The Button,Here No Action To Do\n\n";



List Btn_StyledOutlineButton_list =[
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
              CmpTitle(Title:"Outline Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"An Outline Button Can Still Be Styled",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "OutlineButton(\n"
                  " child:Text('Txt'),\n"
                  " color:Colors.blueAccent,\n"
                  " textColor:Colors.teal,\n"
                  " borderSide:BorderSide(\n"
                  "  color:Colors.teal,\n"
                  "  style:BorderStyle.solid,\n"
                  "  width:0.7,\n"
                  " ),\n"
                  " onPressed:(){},\n"
                  ")\n"
              ),
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












String Btn_RoundedOutlineButton_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(RoundOutlineBtn) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Centered Rounded Outline Button(No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Grant Light Theme\n\n"
    "-As An Home It Take Scaffold That Allow us To use AppBar And Set The Body Of The Page\n\n"
    "-As An App Bar It Has An Title\n\n"
    "-As An Body It Has Center Layout\n\n"
    "-The Center Layout Contain The Outline Button\n\n"
    "-The Button Take As Child Text Value To Be Shown\n\n"
    "-Rounding Set By Using Shape And Using Form Needed\n\n"
    "-color Set The BackgroundColor Of The Button When Pressed\n\n"
    "-textColor Change Button Text Color\n\n"
    "-BorderSide Control Border Styling:Color,Width,Style...\n"
    "-OnPressed Used To Do An Action When User Press The Button,Here No Action To Do\n\n";



List Btn_RoundedOutlineButton_list =[
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
              CmpTitle(Title:"Flat Button:",),
              Divider(),
              CmpSubTitle(SubTitle:"Flat Button With Icon!",),
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "OutlineButton(\n"
                  " child:Text('Txt'),\n"
                  " shape:RoundedRectangleBorder(\n"
                  "   borderRadius:\n"
                  "     BorderRadius.circular(50.0),\n"
                  " ),\n"
                  " onPressed(){}\n"
                  ")\n"
              ),
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