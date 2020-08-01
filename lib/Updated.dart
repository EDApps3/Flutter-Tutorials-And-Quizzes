import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_SubTitle.dart';
import '_Comp_Courses/Cmp_Title.dart';

class UpdatesUI extends StatefulWidget {
  @override
  UpdatesState createState() => new UpdatesState();
}

class UpdatesState extends State<UpdatesUI> {

  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[
          Divider(color:Colors.black,),

          Container(
            height:200,
            child:ListView(
              children: <Widget>[
                CmpTitle(Title:"Improvement:",),
                CmpSubTitle(SubTitle:"-Bug Fix",),
                CmpSubTitle(SubTitle:"-Drawer Improvement",),
                CmpSubTitle(SubTitle:"-LeaderBoard Improvement",),
                CmpSubTitle(SubTitle:"-Search Contents",),

                SizedBox(height:7,),

                CmpTitle(Title:"Contents:",),
                CmpSubTitle(SubTitle:"-New Samples",),
                CmpSubTitle(SubTitle:"-GeoLocator",),
                CmpSubTitle(SubTitle:"-PHP Auth",),
                CmpSubTitle(SubTitle:"-PHP Image CRUD",),
                CmpSubTitle(SubTitle:"-PHP Image CRUD",),
                CmpSubTitle(SubTitle:"-DataTable Pagination",),
                CmpSubTitle(SubTitle:"-KFDrawer",),
                CmpSubTitle(SubTitle:"-Translator",),
                CmpSubTitle(SubTitle:"-ApkAdmin",),


              ],
            ),
          ),


          SizedBox(height:10,),

          Text(
            "Feel Free To Contact Us At edapps.contact@gmail.com For Any Suggestions Or Any Error,Thank You.",
            style:TextStyle(
              color:Colors.indigo,
            ),
          ),

          SizedBox(height:10,),
          Divider(color:Colors.black,),


        ],
      ),
    );
  }






}