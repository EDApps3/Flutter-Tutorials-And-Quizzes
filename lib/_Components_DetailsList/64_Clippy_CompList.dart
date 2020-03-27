import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Clippy_Triangle_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ClippyTriangle) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is No State Change Just Showing Clipped Widget\n\n"
    "-Creating Class ClippyTriangle\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial Add That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take An ListView To Allow Scrolling\n\n"
    "-ListView Taking Column(Elements PLaced On Row)\n\n"
    "-Each Pair Of Row Taking Text Descrbing Edge And Clipped By An isosceles Triangle That Take An Image\n\n";


List Clippy_Triangle_List =[
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
              CmpTitle(Title:"What Is Clippy Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Simple Package For Clipping Widgets With Custom Shapes Provided.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/Clippy.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:clippy_flutter/clippy_flutter.dart';\n",),
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
              CmpTitle(Title:"Edge To Top Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Triangle.isosceles(\n"
                "  edge: Edge.TOP,\n"
                "  child://Any Widget\n"
                ")\n",
              ),
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
              CmpTitle(Title:"Edge To Bottom Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Triangle.isosceles(\n"
                    "  edge: Edge.BOTTOM,\n"
                    "  child://Any Widget\n"
                    ")\n",
              ),
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
              CmpTitle(Title:"Edge To RIGHT Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Triangle.isosceles(\n"
                    "  edge: Edge.RIGHT,\n"
                    "  child://Any Widget\n"
                    ")\n",
              ),
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
              CmpTitle(Title:"Edge To LEFT Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Triangle.isosceles(\n"
                    "  edge: Edge.LEFT,\n"
                    "  child://Any Widget\n"
                    ")\n",
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

String Clippy_Chevron_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ClippyChevron) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is No State Change Just Showing Clipped Widget\n\n"
    "-Creating Class ClippyChevron\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial Add That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take An ListView To Allow Scrolling\n\n"
    "-ListView Taking Column(Elements PLaced On Row)\n\n"
    "-Each Pair Of Row Taking Text Descrbing Edge And Clipped By An Chevron That Take An Image Globbed By A Container Having Width And Height 170\n\n";


List Clippy_Chevron_List =[
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
              CmpTitle(Title:"What Is Clippy Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Simple Package For Clipping Widgets With Custom Shapes Provided.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/Clippy.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:clippy_flutter/clippy_flutter.dart';\n",),
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
              CmpTitle(Title:"Edge To Top Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Chevron(\n"
                " triangleHeight: 50.0,\n"
                " edge: Edge.Top,\n"
                " child://Any Widget\n"
                ")\n",
              ),
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
              CmpTitle(Title:"Edge To Bottom Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "Chevron(\n"
                    " triangleHeight: 50.0,\n"
                    " edge: Edge.BOTTOM,\n"
                    " child://Any Widget\n"
                    ")\n",
              ),
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
              CmpTitle(Title:"Edge To RIGHT Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "Chevron(\n"
                    " triangleHeight: 50.0,\n"
                    " edge: Edge.RIGHT,\n"
                    " child://Any Widget\n"
                    ")\n",
              ),
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
              CmpTitle(Title:"Edge To LEFT Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Chevron(\n"
                    " triangleHeight: 50.0,\n"
                    " edge: Edge.LEFT,\n"
                    " child://Any Widget\n"
                    ")\n",
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

String Clippy_Arc_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ClippyArc) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is No State Change Just Showing Clipped Widget\n\n"
    "-Creating Class ClippyArc\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial Add That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take An ListView To Allow Scrolling\n\n"
    "-ListView Taking Clipped Arc Taking Image As An Child Arc Height 30 And Take A Column Taking Text As Childrens\n\n";

List Clippy_Arc_List =[
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
              CmpTitle(Title:"What Is Clippy Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Simple Package For Clipping Widgets With Custom Shapes Provided.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/Clippy.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:clippy_flutter/clippy_flutter.dart';\n",),
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
                "Arc(\n"
                " height: 30.0,\n"
                " clipShadows: [\n"
                "  ClipShadow(color: Colors.black)\n"
                " ],\n"
                " child://Any Widget\n"
                ")\n",
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


String Clippy_Diagonal_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ClippyDiagonal) To Be Runned\n\n"
    "-This Class Is Statefull  Widget Due To Diagonal position Change On Clip (Right Or Left)\n\n"
    "-Creating Main Class ClippyDiagonal And Creating Its State\n\n"
    "-Creating State Class ClippyDiagonalState Extending Its Main State From The Main Class ClippyDiagonal\n\n"
    "-Creating Variable containerHeight Describe Diag Height\n\n"
    "-Creating Variable clipHeight Describe Diag Clipping Height,Here Clipped By 20%\n\n"
    "-Creating Variable position Describe Diag Clip Position Set To Bottom Left\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial Add That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take An ListView To Allow Scrolling\n\n"
    "-ListView Taking Column (Element Represented As Rows)\n\n"
    "-First Row Taking Diagonal Taking Image As Child,position Set To Bottom Left With Clip Height 200*0.20(20%)\n"
    "-Second Row Taking RaisedButton That Change Diagonal Position If Left To Right And Vice Versa\n\n";


List Clippy_Diagonal_List =[
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
              CmpTitle(Title:"What Is Clippy Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Simple Package For Clipping Widgets With Custom Shapes Provided.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/Clippy.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:clippy_flutter/clippy_flutter.dart';\n",),
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
              CmpTitle(Title:"Bottom Left Diag Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Diagonal(\n"
                " position:DiagonalPosition.BOTTOM_LEFT,\n"
                " clipHeight: 200*0.20,\n"
                " child: Container(\n"
                "  height:containerHeight,\n"
                "  child://Any Widget\n"
                " ),\n"
                ")\n",
              ),
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
              CmpTitle(Title:"Bottom Right Diag Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Diagonal(\n"
                    " position:DiagonalPosition.BOTTOM_RIGHT,\n"
                    " clipHeight: 200*0.20,\n"
                    " child: Container(\n"
                    "  height:containerHeight,\n"
                    "  child://Any Widget\n"
                    " ),\n"
                    ")\n",
              ),
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
              CmpTitle(Title:"TOP Left Diag Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Diagonal(\n"
                    " position:DiagonalPosition.TOP_LEFT,\n"
                    " clipHeight: 200*0.20,\n"
                    " child: Container(\n"
                    "  height:containerHeight,\n"
                    "  child://Any Widget\n"
                    " ),\n"
                    ")\n",
              ),
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
              CmpTitle(Title:"TOP Right Diag Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Diagonal(\n"
                    " position:DiagonalPosition.TOP_RIGHT,\n"
                    " clipHeight: 200*0.20,\n"
                    " child: Container(\n"
                    "  height:containerHeight,\n"
                    "  child://Any Widget\n"
                    " ),\n"
                    ")\n",
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


String Clippy_Bevel_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ClippyBevel) To Be Runned\n\n"
    "-Creating Class Category That Use Its Constructor To Save Data Of An Object\n\n"
    "-The ClippyBevel Class Is Stateless  Widget Due To Just Showing A Clipped Widget\n\n"
    "-Creating Class ClippyBevel\n\n"
    "-Creating Variable categories Of Type Class Category And Take 6 Objects Of An Category\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial Add That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An Body It Take An GridView Builder Where We Traverse Each Catgery And Post Its Data Inside A Clipped Container By Bevel And Data Shown As Column (Each On Row) First Row Taking The Icon And Second Row Taking The Text\n\n";


List Clippy_Bevel_List =[
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
              CmpTitle(Title:"What Is Clippy Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Simple Package For Clipping Widgets With Custom Shapes Provided.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/Clippy.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:clippy_flutter/clippy_flutter.dart';\n",),
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
                "Bevel(\n"
                " cutLength: 30.0,\n"
                " child://Any Widget\n"
                ")\n",
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


String Clippy_ButtCheek_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ClippyButtcheek) To Be Runned\n\n"
    "-The ClippyButtcheek Class Is Stateless  Widget Due To Just Showing A Clipped Widget\n\n"
    "-Creating Class ClippyButtcheek\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Builded\n\n"
    "-Creating Matrial Add That Allow Us To Set App Title Taking Scaffold As An Home\n\n"
    "-Scaffold Allow Us to Set AppBar And Body Of The Page\n\n"
    "-As An AppBar It Simple Title\n\n"
    "-As An ListView It Take An ListView To Allow Scroll\n\n"
    "-It Take Container Clipped By ButtCheek Taking A Image,ButtCheek Clip Height 30\n\n"
    "-It Take A Column Taking Texts On Each Row\n\n";


List Clippy_ButtCheek_List =[
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
              CmpTitle(Title:"What Is Clippy Flutter?",),
              Divider(),
              CmpSubTitle(SubTitle:"A Simple Package For Clipping Widgets With Custom Shapes Provided.",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/Clippy.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:clippy_flutter/clippy_flutter.dart';\n",),
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
                "ButtCheek(\n"
                " clipShadows: [\n"
                "   ClipShadow(color: Colors.black)\n"
                " ],\n"
                " height: 20.0,\n"
                " child: Container(\n"
                "   child:\\Any Child\n"
                " ),\n"
                ")\n",
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


