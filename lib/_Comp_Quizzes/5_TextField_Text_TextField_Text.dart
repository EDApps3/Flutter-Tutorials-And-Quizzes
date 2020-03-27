import 'package:flutter/material.dart';

class CmpQuizz_TextField_Text_TextField_Text extends StatelessWidget {

  String Text1,Text2;
  TextEditingController TC1_Controller,TC2_Controller;
  double Spacing,TC1_Width,TC2_Width;
  int TC1_MaxLength,TC2_MaxLength;

  CmpQuizz_TextField_Text_TextField_Text({
    @required this.Spacing,
    @required this.TC1_Width,
    @required this.TC1_Controller,
    @required this.TC1_MaxLength,
    @required this.Text1,
    @required this.TC2_Width,
    @required this.TC2_Controller,
    @required this.TC2_MaxLength,
    @required this.Text2,

  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width:Spacing,),
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
        Text(Text1),
        Container(
          width:TC2_Width,
          child: TextField(
            controller:TC2_Controller,
            maxLength:TC2_MaxLength,
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






