import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String Footer_AppBar_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleFooterRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Put A Bottom Appbar (No Change To Do)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Take Scaffold Allow Us To Use bottomNavigationBar,AppBar And Set The Body Of The Page\n\n"
    "-To Set The Footer AppBar We Use BottomAppBar Placed Into BottomNavigationBar\n\n"
    "-The Bottom AppBar Has Elevation 20 With Blue Background color\n\n"
    "-Inside The Bottom Bar Elements Has Padding 10 (Space Arround Them)\n\n"
    "-Elements Placed Inside A Row(All In One Row) That take Image FlatButton Image FlatButton\n\n"
    "-Also The Scaffold Has An AppBar That Display At The Top(Header)\n\n"
    "-As An Body It Call testPage Class(Body Inside)\n\n"
    "-It Take Centered Layout Having Simple Text As A Child\n\n";


List Footer_AppBar_Simple_list =[
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
                    "bottomNavigationBar:BottomAppBar(\n"
                    " color:Colors.lightBlueAccent,\n"
                    " child:\n"
                    " Padding(\n"
                    "  padding:\n   const EdgeInsets.all(10.0),\n"
                    "   child: Row(\n"
                    "    children: <Widget>[\n"
                    "     //Any Widgets\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n"
                    ")"
              )
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
//---------------------------------------------------------
//---------------------------------------------------------


String Footer_AppBar_NavBar_Explanation=
    "-Defining Variable Clr Of Type Color Initialized To deepPurple Used To Change AppBar,BottomAppbar BackgroundColor When Navigating\n\n"
    "-Defining Variable Ic Icon Initilized To Home,Used To Change AppBar Leading Icon When Navigating\n\n"
    "-Defining Variable BarTitle Icon Initilized To Home,Used To Change AppBar Text Title\n\n"
    "-Defining Variable pageController PageController To Control Active Selected Page\n\n"
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NavBarFooterRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As We Just Need To Set Its Content\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Call DashBoardScreen Class(Content Loaded Inside Home)\n\n\n"
    "-Creating Class DashBoardScreen And creating Its State, Statefull Widget Due To Page State Change\n\n"
    "-Creating DashBoardScreenState Class Extending Its Main State From DashBoardScreen\n\n"
    "-Creating Variable _page Initialized to 0 (Page Index Of Start)\n\n"
    "-When Page Is Loaded We're Initalizing Its State And Setting The PageController\n\n"
    "-When the Page Is Closed We're Disposing Its State And Its PageController\n\n"
    "-Creating NavigationTapped Method Taking As Parameter Page Index To Go To Using Curve Ease Animation By 600ms of time\n\n"
    "-Creating onPageChanged Method That Keep Updating NavBar State That Headed To Another Page And Updating Page Index,You Can Compare Page Index To Set A Change Of Page State Color,Icons,Texts....\n\n"
    "-Finally Creating DashBoardScreen Widget As Flutter Is Based On Widget\n\n"
    "-Taking An Scaffold That Allow us To Use AppBar,BottomNavigationBar And Body\n\n"
    "-As An AppBar It Take Background Color That Change In OnPageChanged Method,Title That Change Too,Icon Also\n\n"
    "-As An Body It Takes Page View Used To Scroll Pages That Take Pages Into Children(Pages Set By Classed Or Put Directly Widgeets Code)\n\n"
    "-As An BottomNavigationBar It Take BottomNavigationBar That Background Color Change On PageChange Method,Each BottomNavigationBar Taking An Icon And Text\n\n"
    "-BottomNavigationBar Take Events onTap That Call navigationTapped To Slide To Another Page\n\n"
    "-currentIndex That Will Change The page To Its Navigation Index\n\n"
    "-Now All Setted Up You Just Need To Create Pages!\n\n";



List Footer_AppBar_NavBar_list =[
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
              CmpTitle(Title:"Set Body:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "body: new PageView(\n"
                    " children: [\n"
                    "  new Page1(),\n"
                    "  new Page2(),\n"
                    "  //You Can Add More\n"
                    " ],\n"
                    " onPageChanged: onPageChanged,\n"
                    " controller: pageController,\n"
                    "),\n"
                    "bottomNavigationBar: new BottomNavigationBar(\n"
                    "backgroundColor:Colors.Name,\n"
                    "items: [\n"
                    "new BottomNavigationBarItem(\n"
                    " icon: new Icon(\n"
                    "  Icons.home,\n"
                    "  color:Colors.white,\n"
                    "),\n"
                    ' title: new Text("NavText"),\n'
                    " ),\n"
                    " //You Can Add More\n"
                    "],\n"
                    " onTap: navigationTapped,\n"
                    " currentIndex: _page,\n"
                    ")\n",
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
              CmpTitle(Title:"Navigation Event:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "void navigationTapped(int page){\n"
                    " pageController.animateToPage(\n"
                    "  page,\n"
                    "  duration:const Duration(\n"
                    "  milliseconds: 600,\n"
                    " ),\n"
                    " curve: Curves.ease\n"
                    " );\n"
                    "}\n"
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
              CmpTitle(Title:"Page Change Event:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "void onPageChanged(int page){\n"
                      " setState(() {\n"
                      "   this._page = page;\n"
                      " });\n"
                      "}\n"
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
//---------------------------------------------------------
//---------------------------------------------------------
