import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_SubTitle.dart';

import 'Cmp_Code.dart';

class Cmp_ListTile_GoCode extends StatelessWidget {

  final String Title,Code,GoRoute;
  final double SWidth,SHeight;
  final Widget PutWidget;

  Cmp_ListTile_GoCode({
    @required this.Title,
    @required this.Code,
    @required this.SWidth,
    @required this.SHeight,
    @required this.PutWidget,
    @required this.GoRoute,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CmpSubTitle(SubTitle:Title,),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width:SWidth,
                height:SHeight,
                child:PutWidget,
              ),
              SizedBox(width:3,),
              Container(
                alignment:Alignment.center,
                width:MediaQuery.of(context).size.width -150,
                height:170,
                     child:CmpCode(CodeTxt:Code),
              ),
            ],
          ),
        ],
      ),
      trailing:
      Container(
        width:20,
        height:20,
        margin:
        const EdgeInsets.only(top:70.0),
        child: IconButton(
          onPressed:(){},
          icon:new Icon(
            Icons.arrow_forward_ios,
            size:20,
          ),
        ),
      ),
      onTap: (){
        Navigator.of(context).pushReplacementNamed(GoRoute);
      },
    );
  }

}






