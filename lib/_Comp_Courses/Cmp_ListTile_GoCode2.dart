import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_SubTitle.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Title.dart';

import 'Cmp_Code.dart';

class Cmp_ListTile_GoCode2 extends StatelessWidget {

  final String Title,Code,GoRoute;
  final Widget PutWidget;

  Cmp_ListTile_GoCode2({
    @required this.Title,
    @required this.Code,
    @required this.PutWidget,
    @required this.GoRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height:510,
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading:PutWidget,
            title: CmpTitle(Title:Title,),
          ),
          ListTile(
            title:
            Container(
              alignment:Alignment.center,
              width:MediaQuery.of(context).size.width -150,
              height:410,
              child:CmpCode(CodeTxt:Code),
            ),
            trailing:
            Container(
              width:20,
              height:20,
              margin:
              const EdgeInsets.only(top:200.0),
              child: IconButton(
                icon:new Icon(
                  Icons.arrow_forward_ios,
                  size:20,
                ),
              ),
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed(GoRoute);
            },
          ),
        ],
      ),
    );
  }

}






