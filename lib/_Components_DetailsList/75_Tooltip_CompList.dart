import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';

String Tooltip_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ToolTipRun) To Be Runned\n\n"
    "-This Class Is Stateless Widget As There Is No Data Change (No State Change)\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Has Scaffold That Allow Us To Use AppBar And Set Body\n\n"
    "-As An AppBar It Has A Title\n\n"
    "-As An Body It Take A Column (Elements Placed On Rows) Wich Children Are Centered To The Center Vertically And Horizontally\n\n"
    "-Row 1 Take A Simple Text 'Hold On Any Icon And See What Gonna Happen!'\n\n"
    "-Row 2 Take A Row (Elements Placed On Columns) Centered To The Center Horizontally,And Taking 4 Children (4Columns)\n\n"
    "-Each Column Take A Tooltip That Show a Message When LongPressed,Showing Under The Widget,Take 500ms to appear And Disappear After 2s Applied On A Icon With Size 60 (Width & Height)\n\n";



List Tooltip_list =[
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
              CmpTitle(Title:"Tooltip",),
              Divider(),
              CmpSubTitle(SubTitle:"Material Design Widget Used To Let User Know The Functionality On Long Press on Any Widget!",),
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
              CmpTitle(Title:"Code",),
              Divider(),
              CmpCode(
                CodeTxt:
                 "Tooltip(\n"
                 "  message:'MsgToShow',\n"
                 "  preferBelow:true,\n"
                 "  showDuration:Duration(seconds:2),\n"
                 "  child: //Any Widget \n"
                 ")\n",
              )
            ]
        ),
      ),
    ),
  ),
];