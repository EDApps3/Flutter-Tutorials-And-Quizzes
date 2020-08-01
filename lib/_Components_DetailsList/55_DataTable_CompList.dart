import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String DataTable_Simple_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SimpleDataTable) To Be Runned\n\n"
    "-This Class Is Stateless Widget As Data Shown Will be Fixed(No Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain SingleChildScrollView Used To Scroll Horizontally And Avoid Overflow Due To Mobile Low Width Screen\n\n"
    "-SingleChildScrollView Take Sinle Child DataTable That Take Columns And Rows\n\n"
    "-Columns Represented In DataColumn That Take A Label Followed By Any Widget(Text here)\n\n"
    "-Rows Represented In DataRow That Take Cells Followed By DataCell That Take Any Widget Representing Each Col Value Of The Row\n\n ";


List DataTable_Simple_list =[
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
              CmpTitle(Title:"What Is DataTable?",),
              Divider(),
              CmpSubTitle(SubTitle:"Material Design Used To Display Data Into Table.",),
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
              CmpCode(
                CodeTxt:
                "DataTable(\n"
                " columns: [\n"
                "  DataColumn(label: Text('Col1'),),\n"
                "  DataColumn(label: Text('Col2'),),\n"
                " ],\n"
                " rows:[\n"
                "  DataRow(cells: [\n"
                "   DataCell(Text('ValCol1')),\n"
                "   DataCell(Text('ValCol2')),\n"
                "  ]),\n"
                " ],\n"
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


String DataTable_Sort_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(SortDataTable) To Be Runned\n\n"
    "-Before Creating SortDataTable We Need Create Class That Create Objects\n\n\n\n"

    "-Creating Class Persons Used To Create Person Objects\n\n"
    "-Creating Information Variables ID,Age Integer type,Name And LastName As String\n\n"
    "-Creating Constructor That Set Each Object Information,Have Same Class Name\n\n\n"

    "-Now Start Creating The Main Class SortDataTable Statefull Due To State Change(Sorting,Info Change Positions) And Creating Its State\n\n"
    "-Creating State Class _SortDataTableState That Extends Its Main State From Main Class SortDataTable\n\n"
    "-Creating A List PersonsLst That Will Hold Persons Objects,Containing 2 Objects Of Persons\n\n"
    "-Creating Variable sort bool To Know If Sorted Or No (true|false)\n\n"
    "-Once Page Is Loaded We're Initializing Its State Ans Set sort to false\n\n"
    "-onSortColum Method Called When We Need To Sort,Taking Column Index To Know Wich Column We Need To Sort And ascending To Know If Sorting ascending or descending\n\n"
    "-We Compare Each Column,If ascending Then sort The List Descending And Vice Versa Comparing Object Column Value\n\n\n\n"

    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain SingleChildScrollView Used To Scroll Horizontally And Avoid Overflow Due To Mobile Low Width Screen\n\n"
    "-SingleChildScrollView Take Sinle Child DataTable That Take Columns And Rows\n\n"
    "-Columns Taking DataColumns Each Have Its Label onSort If Not Sorted Then Will Be Sorted,ColIndex Knowable By columnIndex\n\n"
    "-Finally Rows Mapped By The List\n\n";


List DataTable_Sort_list =[
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
              CmpTitle(Title:"What Is DataTable?",),
              Divider(),
              CmpSubTitle(SubTitle:"Material Design Used To Display Data Into Table.",),
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
              CmpTitle(Title:"Why Creating Class Data?",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Create Objects From Class To Avoid Duplication,Example:\nProduct P1=new Product(1,'PName');\n",),
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
              CmpSubTitle(SubTitle:"First Creating Variable Data That We Need By Using var Or Set Type(int,String...)\n",),
              CmpCode(CodeTxt:"var Var1,Var2;",),
              CmpSubTitle(SubTitle:"\n\nCreating Constructor That Set Data,And Must Have Same Name Of The Class\n",),
              CmpCode(
                  CodeTxt:
                      "ClassName(\n"
                      "  this.Var1,\n"
                      "  this.Var1,\n"
                      ");\n"
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "class ClassName {\n"
                    " final int Col1;\n"
                    " final String Col2;\n\n"

                    " ClassName(\n"
                    "  this.Col1,\n"
                    "  this.Col2,\n"
                    " );\n\n"

                    "}\n\n",
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
              CmpTitle(Title:"Sort Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "onSortColum(int columnIndex, bool ascending){\n"
                " if (columnIndex == 0) {\n"
                "  if (ascending) {\n"
                "   Lst.sort((a,b)=>a.Col.compareTo(b.Col));\n"
                "  } else {\n"
                "   Lst.sort((a,b)=>b.Col.compareTo(a.Col));\n"
                "  }\n"
                " },\n"
                "}\n\n"
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
              CmpTitle(Title:"DataTable Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "DataTable(\n"
                    " sortAscending: sort,\n"
                    " sortColumnIndex:ColIndex,"
                    " columns: [\n"
                    "  DataColumn(\n"
                    "   label: Text('Col1'),\n"
                    "   onSort: (columnIndex, ascending) {\n"
                    "    setState(() {\n"
                    "      sort = !sort;\n"
                    "      ColIndex=columnIndex;\n"
                    "    });\n"
                    "    onSortColum(columnIndex, ascending);\n"
                    "   },\n"
                    "  ),\n"
                    " ],\n"
                    " rows:Lst.map((p) => DataRow(cells:[\n"
                    "  DataCell(Text(p.Col.toString()),),\n"
                    " ]),\n"
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



String DataTable_Insert_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(InsertDataTable) To Be Runned\n\n"
    "-Before Creating InsertDataTable We Need Create Class That Create Objects\n\n\n\n"

    "-Creating Class Persons Used To Create Person Objects\n\n"
    "-Creating Information Variables ID,Age Integer type,Name And LastName As String\n\n"
    "-Creating Constructor That Set Each Object Information,Have Same Class Name\n\n\n"

    "-Now Start Creating The Main Class InsertDataTable Statefull Due To State Change(New Data Fetch) And Creating Its State\n\n"
    "-Creating State Class _InsertDataTableState That Extends Its Main State From Main Class InsertDataTable\n\n"
    "-Creating A List PersonsLst That Will Hold Persons Objects,Containing 2 Objects Of Persons\n\n"
    "-Creating A Form That Gonna Validate Each TextField Value To Avoid Saving Wrong Or Null Data\n\n"
    "-Due To Let User Insert His Own Data We Need To Create TextEditingControllers To Take Data\n\n"
    "-Creating Variable LastID Initialized To 2 Due To 2 Objects Created In PersonsLst In The Begining,Once Insert We Will Increase The ID\n\n"

    "-Once Page Is Loaded We're Initializing Its State And Incrementing LastID To Take Number 3 Now And Puting This Value Into ID TextField Controller\n\n"
    "-Creating RefreshList That Refresh DataTable Data Taken From PersonsLst And Set New ID To The TextField(Incremented On Insert Button Click After Validation)\n\n"
    "-Create Validation Method That See If Validated From Form,If Validated Then We're Taking Each Value Inputed By The User And Adding It To The List Into Object\n\n"
    "-After Adding The New Object Persons,Incrementing ID,Clear Field And Refreshing The List To Take On New Object\n\n"
    "-Due To Age Being Integer Number We Need To Check The Value,We Create Method That Will Check It Whenever Int Or Not By Returning true or false\n\n"

    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain ListView That Allow Scrolling And Avoid OverFlows\n"
    "-List View Take The Form Known By Its Key(Used To Validate Form(All TextFields)) Taking Column Putting Texts,TextFields And Button\n\n"
    "-Each TextFormField Have Its Controller(Used To Take Data Insered Into) And A Validator That Check Data( length 0 If No Character Whre Insered | Check If Int At Age ) With The Error Message To Be Shown In Error Case\n\n"
    "-Listview Take Also SingleChildScrollView Used To Scroll Horizontally And Avoid Overflow Due To Mobile Low Width Screen\n\n"
    "-SingleChildScrollView Take Sinle Child DataTable That Take Columns And Rows\n\n"
    "-Columns Taking DataColumns Each Have Its Label\n\n"
    "-Finally Rows Mapped By The List\n\n";


List DataTable_Insert_list =[
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
              CmpTitle(Title:"What Is DataTable?",),
              Divider(),
              CmpSubTitle(SubTitle:"Material Design Used To Display Data Into Table.",),
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
              CmpTitle(Title:"Why Creating Class Data?",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Create Objects From Class To Avoid Duplication,Example:\nProduct P1=new Product(1,'PName');\n",),
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
              CmpSubTitle(SubTitle:"First Creating Variable Data That We Need By Using var Or Set Type(int,String...)\n",),
              CmpCode(CodeTxt:"var Var1,Var2;",),
              CmpSubTitle(SubTitle:"\n\nCreating Constructor That Set Data,And Must Have Same Name Of The Class\n",),
              CmpCode(
                  CodeTxt:
                  "ClassName(\n"
                      "  this.Var1,\n"
                      "  this.Var1,\n"
                      ");\n"
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "class ClassName {\n"
                    " final int Col1;\n"
                    " final String Col2;\n\n"

                    " ClassName(\n"
                    "  this.Col1,\n"
                    "  this.Col2,\n"
                    " );\n\n"

                    "}\n\n",
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
              CmpTitle(Title:"Insert Code:",),
              CmpSubTitle(SubTitle:"Due To Data being Fetched By The List,Insert Will Be New Object To The List",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "ClassName Obj = ClassName(Col1);\n"
                  "Lst.add(Obj);\n\n"
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
              CmpTitle(Title:"DataTable Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "DataTable(\n"
                    " columns: [\n"
                    "  DataColumn(label: Text('Col1'),),\n"
                    " ],\n"
                    " rows:Lst.map((p) => DataRow(cells:[\n"
                    "  DataCell(Text(p.Col.toString()),),\n"
                    " ]),\n"
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


String DataTable_Update_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(UpdateDataTable) To Be Runned\n\n"
    "-Before Creating UpdateDataTable We Need Create Class That Create Objects\n\n\n\n"

    "-Creating Class Persons Used To Create Person Objects\n\n"
    "-Creating Information Variables ID,Age Integer type,Name And LastName As String\n\n"
    "-Creating Constructor That Set Each Object Information,Have Same Class Name\n\n\n"

    "-Now Start Creating The Main Class DeleteDataTable Statefull Due To State Change(Fetch New Data After Delete) And Creating Its State\n\n"
    "-Creating State Class _UpdateDataTableState That Extends Its Main State From Main Class UpdateDataTable\n\n"
    "-Creating A List PersonsLst That Will Hold Persons Objects,Containing 2 Objects Of Persons\n\n"
    "-Creating Variable curUserId Used To Know Selected Person ID(Used To Update At Index)\n\n"

    "-Once Page Is Loaded We're Initializing Its State And Set ID TextField Text To Select From Bottom Due To Updating Person Is On His ID\n\n"
    "-Creating RefreshList That Refresh DataTable Data Taken From PersonsLst And Set New ID Back To Select Text After A Information Being Updated Successufly\n\n"
    "-Create Validation Method That See If Validated From Form,If Validated Then We're Taking Each Value Inputed By The User And Updating Object Variables At ID Of The Object needed,ID -1 Due To List Starting By Index 0 And Our First ID Person Is 1\n\n"
    "-After Updating Refreshing List Required To Take New Data And Clearing TextFields\n\n"
    "-Due To Age Being Integer Number We Need To Check The Value,We Create Method That Will Check It Whenever Int Or Not By Returning true or false\n\n"

    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain ListView That Allow Scrolling And Avoid OverFlows\n"
    "-List View Take The Form Known By Its Key(Used To Validate Form(All TextFields)) Taking Column Putting Texts,TextFields And Button\n\n"
    "-Each TextFormField Have Its Controller(Used To Take Data Insered Into) And A Validator That Check Data( length 0 If No Character Whre Insered | Check If Int At Age ) With The Error Message To Be Shown In Error Case\n\n"
    "-Listview Take Also SingleChildScrollView Used To Scroll Horizontally And Avoid Overflow Due To Mobile Low Width Screen\n\n"
    "-SingleChildScrollView Take Sinle Child DataTable That Take Columns And Rows\n\n"
    "-Columns Taking DataColumns Each Have Its Label \n\n"
    "-Finally Rows Mapped By The List\n\n"
    "-Each DataRow DataCell When Tapped Values Being Filled In TextFields\n\n";


List DataTable_Update_list =[
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
              CmpTitle(Title:"What Is DataTable?",),
              Divider(),
              CmpSubTitle(SubTitle:"Material Design Used To Display Data Into Table.",),
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
              CmpTitle(Title:"Why Creating Class Data?",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Create Objects From Class To Avoid Duplication,Example:\nProduct P1=new Product(1,'PName');\n",),
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
              CmpSubTitle(SubTitle:"First Creating Variable Data That We Need By Using var Or Set Type(int,String...)\n",),
              CmpCode(CodeTxt:"var Var1,Var2;",),
              CmpSubTitle(SubTitle:"\n\nCreating Constructor That Set Data,And Must Have Same Name Of The Class\n",),
              CmpCode(
                  CodeTxt:
                      "ClassName(\n"
                      "  this.Var1,\n"
                      "  this.Var1,\n"
                      ");\n"
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "class ClassName {\n"
                    " final int Col1;\n"
                    " final String Col2;\n\n"

                    " ClassName(\n"
                    "  this.Col1,\n"
                    "  this.Col2,\n"
                    " );\n\n"

                    "}\n\n",
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
              CmpTitle(Title:"Update Code:",),
              CmpSubTitle(SubTitle:"Due To Data being Fetched By The List,Update Data Will Be Updated Due Index\n",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "Lst.elementAt(ID).Col=Data;\n\n"
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
              CmpTitle(Title:"DataTable Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "DataTable(\n"
                    " columns: [\n"
                    "  DataColumn(label: Text('Col1'),),\n"
                    " ],\n"
                    " rows:Lst.map((p) => DataRow(cells:[\n"
                    "  DataCell(\n"
                    "   Text(p.Col.toString()),\n"
                    "   onTap: () {\n"
                    "    Var_Controller.text = p.Col.toString();\n"
                    "   },\n"
                    "  ),\n"
                    " ]),\n"
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




String DataTable_Delete_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DeleteDataTable) To Be Runned\n\n"
    "-Before Creating DeleteDataTable We Need Create Class That Create Objects\n\n\n\n"

    "-Creating Class Persons Used To Create Person Objects\n\n"
    "-Creating Information Variables ID,Age Integer type,Name And LastName As String\n\n"
    "-Creating Constructor That Set Each Object Information,Have Same Class Name\n\n\n"

    "-Now Start Creating The Main Class DeleteDataTable Statefull Due To State Change(Fetch New Data After Delete) And Creating Its State\n\n"
    "-Creating State Class _DeleteDataTableState That Extends Its Main State From Main Class DeleteDataTable\n\n"
    "-Creating A List PersonsLst That Will Hold Persons Objects,Containing 2 Objects Of Persons\n\n"

    "-Once Page Is Loaded We're Initializing Its State\n\n"
    "-Creating RefreshList That Refresh DataTable Data By Refreshing Data\n\n"

    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain ListView That Allow Scrolling And Avoid OverFlows\n"
    "-List View Take A SingleChildScrollView That Take DataTable That Take Columns And Rows\n\n"
    "-Columns Taking DataColumns  Starting With Action Followeb Each By Labels\n\n"
    "-Finally Rows Mapped By The List\n\n"
    "-Each DataRow DataCell Have At The First IconButton Having Delete Icon Once Pressed Searching For The Delete ID In The List And Removing It\n\n";


List DataTable_Delete_list =[
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
              CmpTitle(Title:"What Is DataTable?",),
              Divider(),
              CmpSubTitle(SubTitle:"Material Design Used To Display Data Into Table.",),
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
              CmpTitle(Title:"Why Creating Class Data?",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Create Objects From Class To Avoid Duplication,Example:\nProduct P1=new Product(1,'PName');\n",),
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
              CmpSubTitle(SubTitle:"First Creating Variable Data That We Need By Using var Or Set Type(int,String...)\n",),
              CmpCode(CodeTxt:"var Var1,Var2;",),
              CmpSubTitle(SubTitle:"\n\nCreating Constructor That Set Data,And Must Have Same Name Of The Class\n",),
              CmpCode(
                  CodeTxt:
                      "ClassName(\n"
                      "  this.Var1,\n"
                      "  this.Var1,\n"
                      ");\n"
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "class ClassName {\n"
                    " final int Col1;\n"
                    " final String Col2;\n\n"

                    " ClassName(\n"
                    "  this.Col1,\n"
                    "  this.Col2,\n"
                    " );\n\n"

                    "}\n\n",
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
              CmpTitle(Title:"Delete Code:",),
              CmpSubTitle(SubTitle:"Due To Data being Fetched By The List,Delete Object Will Be By Its Index\n",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "for(int i=0;i<Lst.length;i++){\n"
                      " if(Lst.elementAt(i).ID==p.ID){\n"
                      "  Lst.removeAt(i);\n"
                      " }\n"
                      "}\n\n"
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
              CmpTitle(Title:"DataTable Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "DataTable(\n"
                    " columns: [\n"
                    "  DataColumn(label: Text('Action'),),\n"
                    "  DataColumn(label: Text('Col1'),),\n"
                    " ],\n"
                    " rows:Lst.map((p) => DataRow(cells:[\n"
                    "  DataCell(IconButton(\n"
                    "   icon: Icon(Icons.delete),\n"
                    "   onPressed: () {\n"
                    "    for(int i=0;i<PersonsLst.length;i++){\n"
                    "     if(PersonsLst.elementAt(i).ID==Prs.ID){\n"
                    "      PersonsLst.removeAt(i);\n"
                    "     }\n"
                    "    }\n"
                    "    refreshList();\n"
                    "   },\n"
                    "  )),\n"
                    "  DataCell(Text(p.Col.toString())),\n"
                    " ]),\n"
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



String DataTable_DeleteAll_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(DeleteAllDataTable) To Be Runned\n\n"
    "-Before Creating DeleteAllDataTable We Need Create Class That Create Objects\n\n\n\n"

    "-Creating Class Persons Used To Create Person Objects\n\n"
    "-Creating Information Variables ID,Age Integer type,Name And LastName As String\n\n"
    "-Creating Constructor That Set Each Object Information,Have Same Class Name\n\n\n"

    "-Now Start Creating The Main Class DeleteAllDataTable Statefull Due To State Change(Fetch New Data After Delete) And Creating Its State\n\n"
    "-Creating State Class _DeleteAllDataTableState That Extends Its Main State From Main Class DeleteAllDataTable\n\n"
    "-Creating A List PersonsLst That Will Hold Persons Objects,Containing 2 Objects Of Persons\n\n"

    "-Once Page Is Loaded We're Initializing Its State\n\n"
    "-Creating RefreshList That Refresh DataTable Data By Refreshing Data\n\n"

    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Allow Us To Use Scaffold\n\n"
    "-Scaffold Allow Us To Use AppBar And Body\n\n"
    "-The AppBar Have Simple Title\n\n"
    "-Body Contain ListView That Allow Scrolling And Avoid OverFlows\n"
    "-List View Take A Delete All Button Once Pressed List Cleared And List Refreshed\n\n"
    "-List View Take A SingleChildScrollView That Take DataTable That Take Columns And Rows\n\n"
    "-Columns Taking DataColumns Each Have Its Label\n\n"
    "-Finally Rows Mapped By The List\n\n";


List DataTable_DeleteAll_list =[
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
              CmpTitle(Title:"What Is DataTable?",),
              Divider(),
              CmpSubTitle(SubTitle:"Material Design Used To Display Data Into Table.",),
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
              CmpTitle(Title:"Why Creating Class Data?",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Create Objects From Class To Avoid Duplication,Example:\nProduct P1=new Product(1,'PName');\n",),
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
              CmpSubTitle(SubTitle:"First Creating Variable Data That We Need By Using var Or Set Type(int,String...)\n",),
              CmpCode(CodeTxt:"var Var1,Var2;",),
              CmpSubTitle(SubTitle:"\n\nCreating Constructor That Set Data,And Must Have Same Name Of The Class\n",),
              CmpCode(
                  CodeTxt:
                  "ClassName(\n"
                      "  this.Var1,\n"
                      "  this.Var1,\n"
                      ");\n"
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "class ClassName {\n"
                    " final int Col1;\n"
                    " final String Col2;\n\n"

                    " ClassName(\n"
                    "  this.Col1,\n"
                    "  this.Col2,\n"
                    " );\n\n"

                    "}\n\n",
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
              CmpTitle(Title:"Delete All  Code:",),
              CmpSubTitle(SubTitle:"Due To Data being Fetched By The List,Clearing The List Will Delete All The Objects\n",),
              Divider(),
              CmpCode(
                  CodeTxt:
                  "Lst.clear();\n"
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
              CmpTitle(Title:"DataTable Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "DataTable(\n"
                    " columns: [\n"
                    "  DataColumn(label: Text('Col1'),),\n"
                    " ],\n"
                    " rows:Lst.map((p) => DataRow(cells:[\n"
                    "  DataCell(\n"
                    "   Text(p.Col.toString()),\n"
                    "  ),\n"
                    " ]),\n"
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


String DataTable_BgColor_Explanation=
    "-Same As Simple Data Table!\n\n";


List DataTable_BgColor_list =[
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
              CmpTitle(Title:"Changing DataTable BgColor?",),
              Divider(),
              CmpSubTitle(SubTitle:"Not Provided OfficialY And We Will Edit The Main Code Of It.",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
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
              CmpSubTitle(SubTitle:"Main Package Will Be Located In flutter> packages> flutter> lib >src >material We Need To Copy It To Our Project To Start Editing It\nDataTable Changed To CustomDataTable And Same For DataCell And DataRow To Avoid Packages Conflicts...Change To Do:\n",),
              CmpSubTitle(SubTitle:"1-Change Spacing To 0\n",),
              CmpCode(
                CodeTxt:
                  "CustomDataTable({\n"
                  " ...\n"
                  " this.horizontalMargin = 0.0,\n"
                  " this.columnSpacing    = 0.0,\n"
                  " ...\n"
                  "})\n"
              ),

              CmpSubTitle(SubTitle:"2-Providing Color Like Header Set To teal\n",),
              CmpCode(
                CodeTxt:
                  "label = Container(\n"
                  "  color:Colors.teal,\n"
                  "  padding: padding,\n"
                  "  ..."
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





String DataTable_Pagination_Explanation=
    "Soon...\n\n";


List DataTable_Pagination_list =[
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
              CmpTitle(Title:"What Is Paginated DataTable?",),
              Divider(),
              CmpSubTitle(SubTitle:"Display Number Of Rows Wich We Can Fetch By Next And Previous.",),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
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
              CmpSubTitle(SubTitle:"Soon...\n",),
              
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


//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------