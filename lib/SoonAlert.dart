import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tutorials_and_quizzes/1000_Rating.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_SubTitle.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Title.dart';

import 'main.dart';




class SoonAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Running Quizzes",
      home:Scaffold(
        appBar:AppBar(
          title:Text("Running Quizzes..."),
          leading:IconButton(
            icon:Icon(Icons.arrow_back),
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Main()));
            },
          )
        ),
        body:
         Column(
           mainAxisAlignment:MainAxisAlignment.center,
           children: <Widget>[
             Center(
               child:
               ClipRRect(
                 borderRadius:BorderRadius.circular(30.0),
                 child:
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                       color:Colors.white30,
                       child:
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           mainAxisAlignment:MainAxisAlignment.start,
                           children: <Widget>[
                             CmpTitle(Title:"Coming Soon!",),
                             Divider(),
                             CmpSubTitle(SubTitle:"Unfortunaly We Shutted Down Quizzes For This Version Due To Some Problems,Hoping To Be Fixed For All The Contents As Soon As Possible,Thank You.",),
                           ],
                         ),
                       )
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



