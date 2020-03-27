import 'package:flutter/material.dart';

class CmpQuizz_Text_TextField_Text extends StatelessWidget {

  String Text1,Text2;
  TextEditingController TC1_Controller;
  double Spacing,TC1_Width;
  int TC1_MaxLength;

  CmpQuizz_Text_TextField_Text({
    @required this.Spacing,
    @required this.TC1_Width,
    @required this.TC1_Controller,
    @required this.TC1_MaxLength,
    @required this.Text1,
    @required this.Text2,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width:Spacing,),
        Text(Text1),
        Container(
          width:TC1_Width,
          child: TextField(
            controller:TC1_Controller,
            maxLength:TC1_MaxLength,
            decoration:InputDecoration(
              counterText:"",
            ),
          ),
        ),
        Text(Text2),
      ],
    );
  }
}






