import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';


void main() {
  runApp(SimpleExpandableRun());
}

class SimpleExpandableRun extends StatefulWidget{
  SimpleExpandableRun({Key Key}) : super (key: Key);
  _ExpandableState createState() => _ExpandableState();
}


class _ExpandableState extends State<SimpleExpandableRun> {

  String Content="Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content Content";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title:"Simple Expandable",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Simple Expandable"),
        ),
        body:
          Column(
           children: <Widget>[
             Card(
               color:Colors.teal,

               child:
               ExpandablePanel(

                 headerAlignment:ExpandablePanelHeaderAlignment.center,

                 header:Text(
                   'This Is The Header',
                   style:TextStyle(
                     color:Colors.white,
                   ),
                 ),

                 hasIcon:true,

                 iconColor:Colors.grey,

                 tapBodyToCollapse:true,

                 tapHeaderToExpand:true,

                 collapsed:
                 Card(
                   color:Colors.black26,
                   child:
                   Text(
                     Content,
                     softWrap:true,
                     maxLines:2,
                     overflow:TextOverflow.ellipsis,
                     style:TextStyle(
                       color:Colors.white,
                     ),
                   ),
                 ),


                 expanded:
                 Card(
                   color:Colors.black26,
                   child:
                   Text(
                     Content,
                     softWrap:true,
                     style:TextStyle(
                       color:Colors.white,
                     ),
                   ),
                 ),

               ),
             ),
             SizedBox(height:15),
             Card(
               color:Colors.teal,

               child:
               ExpandablePanel(

                 headerAlignment:ExpandablePanelHeaderAlignment.center,

                 header:Text(
                   'This Is The Header',
                   style:TextStyle(
                     color:Colors.white,
                   ),
                 ),

                 hasIcon:true,

                 iconColor:Colors.grey,

                 tapBodyToCollapse:true,

                 tapHeaderToExpand:true,

                 collapsed:
                 Card(
                   color:Colors.black26,
                   child:
                   Text(
                     Content,
                     softWrap:true,
                     maxLines:2,
                     overflow:TextOverflow.ellipsis,
                     style:TextStyle(
                       color:Colors.white,
                     ),
                   ),
                 ),


                 expanded:
                 Card(
                   color:Colors.black26,
                   child:
                   Text(
                     Content,
                     softWrap:true,
                     style:TextStyle(
                       color:Colors.white,
                     ),
                   ),
                 ),

               ),
             ),
           ],

         )
         ),
    );
  }

}








