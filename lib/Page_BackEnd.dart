import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/1000_Rating.dart';
import '_Comp_Courses/Cmp_Cust_ExpTile.dart';
import '_GlobalVariables_BackEnd.dart';
import 'main.dart';


class BackEndPage extends StatefulWidget {
  @override
  BackEndPageState createState() => new BackEndPageState();
}

class BackEndPageState extends State<BackEndPage> with AutomaticKeepAliveClientMixin {


  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:<Widget>[


            SizedBox(height: 10,),
            CmpCustExpTile(
              ExpIcon:Icon(Icons.data_usage),
              ExpTitle:"1.SQLFlite",
              ExpBg:Colors.teal,
              ExInsideBg:Colors.teal[100],
              BordRadius:20.0,
              InQuizzRoute:"/Generate_SQLFlite_Quizz",
              CardLength:SQLFliteList.length,
              CardsList:SQLFliteList,
            ),



            SizedBox(height: 10,),
            CmpCustExpTile(
              ExpIcon:Icon(Icons.data_usage),
              ExpTitle:"2.HTTP + PHP",
              ExpBg:Colors.teal,
              ExInsideBg:Colors.teal[100],
              BordRadius:20.0,
              InQuizzRoute:"/Generate_HTTP_PHP_Quizz",
              CardLength:HTTP_PHP_List.length,
              CardsList:HTTP_PHP_List,
            ),


            SizedBox(height: 10,),
            CmpCustExpTile(
              ExpIcon:Icon(Icons.data_usage),
              ExpTitle:"3.FireBase",
              ExpBg:Colors.teal,
              ExInsideBg:Colors.teal[100],
              BordRadius:20.0,
              InQuizzRoute:"/Generate_FireBase_Quizz",
              CardLength:Firebase_List.length,
              CardsList:Firebase_List,
            ),

            SizedBox(height: 10,),
            CmpCustExpTile(
              ExpIcon:Icon(Icons.data_usage),
              ExpTitle:"4.FireStore",
              ExpBg:Colors.teal,
              ExInsideBg:Colors.teal[100],
              BordRadius:20.0,
              InQuizzRoute:"/Generate_FireStore_Quizz",
              CardLength:FireStore_List.length,
              CardsList:FireStore_List,
            ),

            SizedBox(height: 10,),
            CmpCustExpTile(
              ExpIcon:Icon(Icons.data_usage),
              ExpTitle:"5.FireBase Admob",
              ExpBg:Colors.teal,
              ExInsideBg:Colors.teal[100],
              BordRadius:20.0,
              InQuizzRoute:"/Generate_FireBaseAdmob_Quizz",
              CardLength:FireBaseAdmob_List.length,
              CardsList:FireBaseAdmob_List,
            ),


            SizedBox(height: 10,),
            RatingUI(),




          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

}



