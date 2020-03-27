import 'package:flutter/material.dart';

class CmpQuizz_TextField_Text_TextField_Text_TextField_Text extends StatelessWidget {

  String Text1,Text2,Text3;
  TextEditingController TC1_Controller,TC2_Controller,TC3_Controller;
  double Spacing,TC1_Width,TC2_Width,TC3_Width;
  int TC1_MaxLength,TC2_MaxLength,TC3_MaxLength;

  CmpQuizz_TextField_Text_TextField_Text_TextField_Text({
    @required this.Spacing,
    @required this.TC1_Controller,
    @required this.TC1_MaxLength,
    @required this.TC1_Width,
    @required this.Text1,
    @required this.TC2_Controller,
    @required this.TC2_MaxLength,
    @required this.TC2_Width,
    @required this.Text2,
    @required this.TC3_Controller,
    @required this.TC3_MaxLength,
    @required this.TC3_Width,
    @required this.Text3,
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
        Container(
          width:TC3_Width,
          child: TextField(
            controller:TC3_Controller,
            maxLength:TC3_MaxLength,
            decoration:InputDecoration(
              counterText:"",
            ),
          ),
        ),
        Text(Text3),
      ],
    );
  }
}






