import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';


class LikeButtonDemo extends StatefulWidget {
  @override
  _LikeButtonDemoState createState() => _LikeButtonDemoState();
}

class _LikeButtonDemoState extends State<LikeButtonDemo> {
  int likeCount = 999;

  double buttonSize = 40.0;
  Color CircleStartColor = Colors.teal;
  Color CircleEndColor   = Colors.red;
  Color LikeColor        = Colors.blue;
  Color DisLikeColor     = Colors.grey;
  int _RadioShowNumberValue = 0;

  void _setButtonSizeValue(double value){
    setState(() {
      buttonSize = value;
    });
  }

  void changeStartColor(Color SelectedClr) => setState(
          () => CircleStartColor = SelectedClr
  );

  void changeEndColor(Color SelectedClr) => setState(
          () => CircleEndColor  = SelectedClr
  );

  void changeLikeColor(Color SelectedClr) => setState(
          () => LikeColor  = SelectedClr
  );

  void changeDisLikeColor(Color SelectedClr) => setState(
          () => DisLikeColor  = SelectedClr
  );


  void _RadioNumberShowChange(int value) {
    setState(() {
      _RadioShowNumberValue = value;
    });
  }

  IconButton ColorBtn( Color Clr,int index){
    return IconButton(
      icon:Icon(Icons.edit),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text('Select a color'),
                content: Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: BlockPicker(
                        pickerColor: Clr,
                        onColorChanged:(SlectedColor){
                          if(index==1){
                            changeStartColor(SlectedColor);
                          }
                          else if(index==2){
                            changeEndColor(SlectedColor);
                          }
                          else if(index==3){
                            changeLikeColor(SlectedColor);
                          }
                          else if(index==4){
                            changeDisLikeColor(SlectedColor);
                          }
                        },
                      ),
                    ),
                    RaisedButton(
                      child:Text("Close"),
                      onPressed:(){
                        Navigator.pop(context);
                      },
                    )
                  ],
                )
            );
          },
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("Like Button"),
        ),
        body:Column(
          children: <Widget>[

            Container(
              width:MediaQuery.of(context).size.width,
              height:200,
              child:Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("size "+buttonSize.toInt().toString()),
                      new Slider(
                          min:40,
                          max:100,
                          value: buttonSize,
                          onChanged: _setButtonSizeValue
                      ),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Text("CircleStarColor:"),
                      ClipOval(
                        child:Container(width:30,height:30,color:CircleStartColor,),
                      ),
                      ColorBtn(CircleStartColor,1),
                      SizedBox(width:2,),
                      Text("CircleEndColor:"),
                      ClipOval(
                        child:Container(width:30,height:30,color:CircleEndColor,),
                      ),
                      ColorBtn(CircleEndColor,2),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Text("LikeColor         :"),
                      ClipOval(
                        child:Container(width:30,height:30,color:LikeColor,),
                      ),
                      ColorBtn(LikeColor,3),
                      SizedBox(width:2,),
                      Text("DisLikeColor     :"),
                      ClipOval(
                        child:Container(width:30,height:30,color:DisLikeColor,),
                      ),
                      ColorBtn(DisLikeColor,4),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      new Text('Show Like Number:'),
                      new Radio(
                        value: 0,
                        groupValue: _RadioShowNumberValue,
                        onChanged: _RadioNumberShowChange,
                      ),
                      new Text('Yes'),
                      new Radio(
                        value: 1,
                        groupValue: _RadioShowNumberValue,
                        onChanged: _RadioNumberShowChange,
                      ),
                      new Text('No'),
                    ],
                  ),

                ],
              ),
            ),

            Expanded(
              child:Container(
                child:Center(
                  child:LikeButton(
                    size: buttonSize,
                    circleColor:CircleColor(
                      start:CircleStartColor,
                      end:CircleEndColor
                    ),
                    likeCount:(_RadioShowNumberValue==0)?likeCount:null,
                    likeBuilder:(bool isLiked){
                      if(isLiked){
                        return Icon(
                          Icons.favorite,
                          color:LikeColor,
                          size:buttonSize,
                        );
                      }
                      else{
                        return Icon(
                          Icons.favorite_border,
                          color:DisLikeColor,
                          size:buttonSize,
                        );
                      }

                    },
                    countBuilder: (int count, bool isLiked, String text) {
                      var color = isLiked ? LikeColor : DisLikeColor;
                      if(isLiked){
                        likeCount++;
                      }
                      else{
                        likeCount--;
                      }
                        return Text(
                          likeCount.toString(),
                          style:TextStyle(
                            color:color,
                          ),
                        );
                    },

                    likeCountPadding: EdgeInsets.only(left: 15.0),
                    likeCountAnimationType:LikeCountAnimationType.all,
                    onTap: onLikeButtonTapped,
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );

  }

  Future<bool> onLikeButtonTapped(bool isLiked) async{
    return !isLiked;
  }

}