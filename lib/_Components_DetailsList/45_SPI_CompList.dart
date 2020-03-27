import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var SPI_Intro_CompList =[
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
              CmpTitle(Title:"What Is Smooth Page Indicator?",),
              Divider(),
              CmpSubTitle(SubTitle:
                  "Customizable animated page indicator with set of built-in effects:\n"
                  "-Worm\n"
                  "-Expanding Dots\n"
                  "-Scrolling Dots\n"
                  "-Jumping Dots\n"
                  "-Slide\n"
                  "-Scale\n"
                  "-Swap\n",
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle: "First We Need To Import Into Yaml Dependecies:"),
              Image.asset("Images/SPI.PNG"),
              CmpSubTitle(SubTitle: "\nDon't Forget To Get Packages!\n"),
              CmpSubTitle(SubTitle: "\nWhen We Use It We Need To Import:\n"
                  "import 'package:smooth_page_indicator/smooth_page_indicator.dart';"),

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


String SPI_Worm_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SPIWormRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Page Slected Index\n\n"
    "-First Creating Main Class SPIWormRun And Set Its Main State\n\n"
    "-Secondly Creating Class _SPIWormState That Extend Its State From Its Main SPIWormRun\n\n"
    "-Creating Variable controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe)\n\n"
    "-The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Column That Give Us 2 Rows\n\n"
    "-First Row Have SizedBox Height Set to 300 And Full Width Having 3 Sized Box Placed Into PageView,3Pages Scrolled\n\n"
    "-Second Row Contain Container Representing The Smooth Page Indicator Worm\n\n";


List SPI_Worm_list =[
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
              CmpTitle(Title:"Getting Into The Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Defining Variable controller Of Type Controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe):\n"),
              CmpCode(
                CodeTxt:
                    "var controller;\n"
                    "controller=PageController(\n"
                    "  viewportFraction:0.8,\n"
                    ");\n\n",
              ),
              CmpSubTitle(SubTitle:"The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n",),
              CmpSubTitle(SubTitle:"2-Code:\n"),
              CmpCode(
                CodeTxt:
                    "Column(\n"
                    " children: <Widget>[\n\n\n"

                    "  SizedBox(\n"
                    "   height:300,\n"
                    "   child:PageView(\n"
                    "    controller:controller,\n"
                    "    children: <Widget>[\n"
                    "     //Widgets To Be Swiped\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n\n\n"

                    "  Container(\n"
                    "   child:\n"
                    "    SmoothPageIndicator(\n"
                    "     controller:controller,\n"
                    "     count:3,\n"
                    "     effect:WormEffect(),\n"
                    "    ),\n"
                    "  )\n\n\n"

                    " ],\n"
                    ")\n",
              ),
              CmpSubTitle(
                  SubTitle:
                  "\n\nThe Column Divide Into 2 Rows:\n"
                      "-Row 1 Represent Widgets Stacked Into Sized Box To Be Swipped\n"
                      "-Row 2 Represent The Smooth Page Indicator Placed Into Container,count Represent Number Of Pages\n",
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

String SPI_ExpDots_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SPIExpDotsRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Page Slected Index\n\n"
    "-First Creating Main Class SPIExpDotsRun And Set Its Main State\n\n"
    "-Secondly Creating Class _SPIExpDotsState That Extend Its State From Its Main SPIExpDotsRun\n\n"
    "-Creating Variable controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe)\n\n"
    "-The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Column That Give Us 2 Rows\n\n"
    "-First Row Have SizedBox Height Set to 300 And Full Width Having 3 Sized Box Placed Into PageView,3Pages Scrolled\n\n"
    "-Second Row Contain Container Representing The Smooth Page Indicator Expanding Dots\n\n";


List SPI_ExpDots_list =[
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
              CmpTitle(Title:"Getting Into The Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Defining Variable controller Of Type Controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe):\n"),
              CmpCode(
                CodeTxt:
                "var controller;\n"
                    "controller=PageController(\n"
                    "  viewportFraction:0.8,\n"
                    ");\n\n",
              ),
              CmpSubTitle(SubTitle:"The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n",),
              CmpSubTitle(SubTitle:"2-Code:\n"),
              CmpCode(
                CodeTxt:
                    "Column(\n"
                    " children: <Widget>[\n\n\n"

                    "  SizedBox(\n"
                    "   height:300,\n"
                    "   child:PageView(\n"
                    "    controller:controller,\n"
                    "    children: <Widget>[\n"
                    "     //Widgets To Be Swiped\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n\n\n"

                    "  Container(\n"
                    "   child:\n"
                    "    SmoothPageIndicator(\n"
                    "     controller:controller,\n"
                    "     count:3,\n"
                    "     effect:ExpandingDotsEffect(\n"
                    "      expansionFactor:4,\n"
                    "     ),\n"
                    "    ),\n"
                    "  )\n\n\n"

                    " ],\n"
                    ")\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nThe Column Divide Into 2 Rows:\n"
                    "-Row 1 Represent Widgets Stacked Into Sized Box To Be Swipped\n"
                    "-Row 2 Represent The Smooth Page Indicator Placed Into Container,count Represent Number Of Pages\n",
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


String SPI_JmpDots_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SPIJmpDotsRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Page Slected Index\n\n"
    "-First Creating Main Class SPIJmpDotsRun And Set Its Main State\n\n"
    "-Secondly Creating Class _SPIJmpDotsState That Extend Its State From Its Main SPIJmpDotsRun\n\n"
    "-Creating Variable controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe)\n\n"
    "-The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Column That Give Us 2 Rows\n\n"
    "-First Row Have SizedBox Height Set to 300 And Full Width Having 3 Sized Box Placed Into PageView,3Pages Scrolled\n\n"
    "-Second Row Contain Container Representing The Smooth Page Indicator Jumping Dot\n\n";


List SPI_JmpDots_list =[
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
              CmpTitle(Title:"Getting Into The Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Defining Variable controller Of Type Controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe):\n"),
              CmpCode(
                CodeTxt:
                "var controller;\n"
                    "controller=PageController(\n"
                    "  viewportFraction:0.8,\n"
                    ");\n\n",
              ),
              CmpSubTitle(SubTitle:"The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n",),
              CmpSubTitle(SubTitle:"2-Code:\n"),
              CmpCode(
                CodeTxt:
                    "Column(\n"
                    " children: <Widget>[\n\n\n"

                    "  SizedBox(\n"
                    "   height:300,\n"
                    "   child:PageView(\n"
                    "    controller:controller,\n"
                    "    children: <Widget>[\n"
                    "     //Widgets To Be Swiped\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n\n\n"

                    "  Container(\n"
                    "   child:\n"
                    "    SmoothPageIndicator(\n"
                    "     controller:controller,\n"
                    "     count:3,\n"
                    "     effect:JumpingDotEffect(),\n"
                    "    ),\n"
                    "  )\n\n\n"

                    " ],\n"
                    ")\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nThe Column Divide Into 2 Rows:\n"
                    "-Row 1 Represent Widgets Stacked Into Sized Box To Be Swipped\n"
                    "-Row 2 Represent The Smooth Page Indicator Placed Into Container,count Represent Number Of Pages\n",
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

String SPI_ScrollDots_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SPIScrollDotsRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Page Slected Index\n\n"
    "-First Creating Main Class SPIScrollDotsRun And Set Its Main State\n\n"
    "-Secondly Creating Class _SPIScrollDotsState That Extend Its State From Its Main SPIScrollDotsRun\n\n"
    "-Creating Variable controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe)\n\n"
    "-The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Column That Give Us 2 Rows\n\n"
    "-First Row Have SizedBox Height Set to 300 And Full Width Having 3 Sized Box Placed Into PageView,3Pages Scrolled\n\n"
    "-Second Row Contain Container Representing The Smooth Page Indicator ScrollingDotsEffect\n\n";


List SPI_ScrollDots_list =[
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
              CmpTitle(Title:"Getting Into The Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Defining Variable controller Of Type Controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe):\n"),
              CmpCode(
                CodeTxt:
                "var controller;\n"
                    "controller=PageController(\n"
                    "  viewportFraction:0.8,\n"
                    ");\n\n",
              ),
              CmpSubTitle(SubTitle:"The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n",),
              CmpSubTitle(SubTitle:"2-Code:\n"),
              CmpCode(
                CodeTxt:
                    "Column(\n"
                    " children: <Widget>[\n\n\n"

                    "  SizedBox(\n"
                    "   height:300,\n"
                    "   child:PageView(\n"
                    "    controller:controller,\n"
                    "    children: <Widget>[\n"
                    "     //Widgets To Be Swiped\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n\n\n"

                    "  Container(\n"
                    "   child:\n"
                    "    SmoothPageIndicator(\n"
                    "     controller:controller,\n"
                    "     count:3,\n"
                    "     effect:ScrollingDotsEffect(\n"
                    "      activeStrokeWidth:2.6,\n"
                    "      activeDotScale:0.4,\n"
                    "      radius:8,\n"
                    "      spacing:10,\n"
                    "     ),\n"
                    "    ),\n"
                    "  )\n\n\n"

                    " ],\n"
                    ")\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nThe Column Divide Into 2 Rows:\n"
                    "-Row 1 Represent Widgets Stacked Into Sized Box To Be Swipped\n"
                    "-Row 2 Represent The Smooth Page Indicator Placed Into Container,count Represent Number Of Pages\n",
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

String SPI_Scale_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SPIScaleRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Page Slected Index\n\n"
    "-First Creating Main Class SPIScaleRun And Set Its Main State\n\n"
    "-Secondly Creating Class _SPIScaleState That Extend Its State From Its Main SPIScaleRun\n\n"
    "-Creating Variable controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe)\n\n"
    "-The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Column That Give Us 2 Rows\n\n"
    "-First Row Have SizedBox Height Set to 300 And Full Width Having 3 Sized Box Placed Into PageView,3Pages Scrolled\n\n"
    "-Second Row Contain Container Representing The Smooth Page Indicator ScaleEffect\n\n";


List SPI_Scale_list =[
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
              CmpTitle(Title:"Getting Into The Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Defining Variable controller Of Type Controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe):\n"),
              CmpCode(
                CodeTxt:
                "var controller;\n"
                    "controller=PageController(\n"
                    "  viewportFraction:0.8,\n"
                    ");\n\n",
              ),
              CmpSubTitle(SubTitle:"The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n",),
              CmpSubTitle(SubTitle:"2-Code:\n"),
              CmpCode(
                CodeTxt:
                    "Column(\n"
                    " children: <Widget>[\n\n\n"

                    "  SizedBox(\n"
                    "   height:300,\n"
                    "   child:PageView(\n"
                    "    controller:controller,\n"
                    "    children: <Widget>[\n"
                    "     //Widgets To Be Swiped\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n\n\n"

                    "  Container(\n"
                    "   child:\n"
                    "    SmoothPageIndicator(\n"
                    "     controller:controller,\n"
                    "     count:3,\n"
                    "     effect:ScaleEffect(),\n"
                    "    ),\n"
                    "  )\n\n\n"

                    " ],\n"
                    ")\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nThe Column Divide Into 2 Rows:\n"
                    "-Row 1 Represent Widgets Stacked Into Sized Box To Be Swipped\n"
                    "-Row 2 Represent The Smooth Page Indicator Placed Into Container,count Represent Number Of Pages\n",
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

String SPI_Slide_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SPISlideRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Page Slected Index\n\n"
    "-First Creating Main Class SPISlideRun And Set Its Main State\n\n"
    "-Secondly Creating Class _SPISlideState That Extend Its State From Its Main SPISlideRun\n\n"
    "-Creating Variable controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe)\n\n"
    "-The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain Column That Give Us 2 Rows\n\n"
    "-First Row Have SizedBox Height Set to 300 And Full Width Having 3 Sized Box Placed Into PageView,3Pages Scrolled\n\n"
    "-Second Row Contain Container Representing The Smooth Page Indicator Slide\n\n";


List SPI_Slide_list =[
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
              CmpTitle(Title:"Getting Into The Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Defining Variable controller Of Type Controller Used To Control The Active Page (Knowing Wich Is The Selected Page After Each Swipe):\n"),
              CmpCode(
                CodeTxt:
                "var controller;\n"
                    "controller=PageController(\n"
                    "  viewportFraction:0.8,\n"
                    ");\n\n",
              ),
              CmpSubTitle(SubTitle:"The viewportFraction Determine Each Child To Fill In The Main Axis,Here 80%\n",),
              CmpSubTitle(SubTitle:"2-Code:\n"),
              CmpCode(
                CodeTxt:
                    "Column(\n"
                    " children: <Widget>[\n\n\n"

                    "  SizedBox(\n"
                    "   height:300,\n"
                    "   child:PageView(\n"
                    "    controller:controller,\n"
                    "    children: <Widget>[\n"
                    "     //Widgets To Be Swiped\n"
                    "    ],\n"
                    "   ),\n"
                    "  ),\n\n\n"

                    "  Container(\n"
                    "   child:\n"
                    "    SmoothPageIndicator(\n"
                    "     controller:controller,\n"
                    "     count:3,\n"
                    "     effect:SlideEffect(\n"
                    "      spacing:8.0,\n"
                    "      radius:4.0,\n"
                    "      dotWidth:24.0,\n"
                    "      dotHeight: 16.0,\n"
                    "      dotColor:Colors.grey,\n"
                    "      activeDotColor:Colors.indigo,\n"
                    "     ),\n"
                    "    ),\n"
                    "  )\n\n\n"

                    " ],\n"
                    ")\n",
              ),
              CmpSubTitle(
                SubTitle:
                "\n\nThe Column Divide Into 2 Rows:\n"
                    "-Row 1 Represent Widgets Stacked Into Sized Box To Be Swipped\n"
                    "-Row 2 Represent The Smooth Page Indicator Placed Into Container,count Represent Number Of Pages\n",
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