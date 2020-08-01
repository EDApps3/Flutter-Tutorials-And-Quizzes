import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String FoldableSideBar_Explanation=
    "-main Is The Principal Method Runned First,Lunching Class FoldableSideBarRun\n\n"
    "-Creating Class FoldableSideBarRun Statefull Widget Due To State Change (Drawer Close | Open ),Creating Its State\n\n"
    "-Creating State Class _FoldableSideBarRunState That Extend Its Main Class From FoldableSideBarRun\n\n"
    "-Creating FSBStatus Variable drawerStatus That Indicate If Foldable SideBar Is Open Or Closed\n\n"
    "-Creating Variable For Menu Icon Set To Menu If Closed And Close If Opened\n\n"
    "-Creating Variable For Color Set To Teal If Closed Red If Opened\n\n"
    "-As Flutter Is Based On Widget A Widget Must Be Created\n\n"
    "-Taking MaterialApp That Set Theme And Title Taking Scaffold\n\n"
    "-Scaffold Allow Using AppBar And Body\n\n"
    "-As AnAppBar Taking A Simple Title\n\n"
    "-As An Body Taking FoldableSidebarBuilder having Teal Bg Taking As Drawer Class CustomDrawer That We Will Create Taking Drawer Widgets Initialized drawerStatus To Be Closed On Start\n\n"
    "-Taking As screenContents (Widgets Appearing In Body Pushed By Foldable SideBar) Column (Elements Represented On Rows)\n\n"
    "-Row 1 Taking A Container With Max Width And Height 70 Taking A Row (Elements Represented On Col) Col1 Taking A SizedBox With Width 10 - Col2 Taking Floating Button Where OnPressed Changing Its State (Color,Icon) And Foldable SideBar State - Col3 Title (Text)\n\n"
    "-Row 2 Taking Expanded (Take Rest Height) With Centered Text\n\n"
    "-Creating CustomDrawer Class Used To return Drawer Content Taking A Constructor To Set Drawer First To Closed\n\n"
    "-Taking Container That Take Width 60% Of The Screen And Its Elment Represented Into Column(ListTiles,Images,Texts...)\n\n";


List FoldableSideBar_list =[
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
              CmpTitle(Title:"What Is Foldable SideBar?",),
              Divider(),
              CmpSubTitle(SubTitle:"An easy Packageto implement Foldable Sidebar Navigation Drawer for Flutter Applications.",),
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
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugin:",),
              SizedBox(height: 16,),
              Image.asset("Images/FoldableSideBar.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle:"\n\nWe Need To Import:\nimport 'package:foldable_sidebar/foldable_sidebar.dart';\n",),
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
              CmpSubTitle(SubTitle:"1-Creating Drawer Status Variable Used To Know Its State (Open | Closed):\n",),
              CmpCode(CodeTxt:"FSBStatus drawerStatus;\n",),

              CmpSubTitle(SubTitle:"\n2-Drawer Content:\n",),
              CmpCode(
                CodeTxt:
                "class CustomDrawer extends StatelessWidget {\n"
                " final Function closeDrawer;\n"
                " const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);\n"
                " @override\n"
                " Widget build(BuildContext context) {\n"
                "  MediaQueryData mediaQuery = MediaQuery.of(context);\n"
                "  return Container(\n"
                "   color: Colors.white,\n"
                "   width: mediaQuery.size.width * 0.60,\n"
                "   height: mediaQuery.size.height,\n"
                "   child://Widget To Show\n"
                "  );\n"
                " },\n"
                "}\n",
              ),

              CmpSubTitle(SubTitle:"\n3-Drawer Widget:\n",),
              CmpCode(
                CodeTxt:
                "body: FoldableSidebarBuilder(\n"
                " drawerBackgroundColor: Colors.deepOrange,\n"
                "  drawer: CustomDrawer(closeDrawer: (){\n"
                "   setState(() {\n"
                "     drawerStatus = FSBStatus.FSB_CLOSE;\n"
                "   });\n"
                "  },\n"
                " ),\n"
                " screenContents://BodyWidget\n"
                " status: drawerStatus,\n"
                ")\n",
              ),

              CmpSubTitle(SubTitle:"\n4-Opening FoldableSideBar:\n",),
              CmpCode(CodeTxt:"drawerStatus=FSBStatus.FSB_OPEN;",),

              CmpSubTitle(SubTitle:"\n5-Closing FoldableSideBar:\n",),
              CmpCode(CodeTxt:"drawerStatus=FSBStatus.FSB_CLOSE;",),

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
