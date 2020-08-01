import 'package:flutter/material.dart';

void main() => runApp(new DialogTransition_LTR());


class DialogTransition_LTR extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar:AppBar(
            title:Text('Animated Dialog LTR'),
          ),
          body:Center(
            child:RaisedButton(
              child:Text("Show Dialog!"),
              onPressed:(){

                showGeneralDialog(
                    context: context,
                    barrierDismissible:true,
                    barrierLabel:'',
                    transitionDuration:Duration(seconds:1),
                    transitionBuilder: (BuildContext context,Animation<double> a1,Animation<double> a2,Widget child)=>SlideTransition(
                      position:Tween<Offset>(
                        begin:const Offset(-1,0),
                        end:Offset.zero,
                      ).animate(a1),
                      child:
                      Dialog (
                        shape: RoundedRectangleBorder (
                          borderRadius: BorderRadius.circular (8),
                        ),
                        child:Container(
                          height:120,
                          child:Column(
                            children: <Widget>[
                              ListTile(
                                title:Text("Header"),
                                trailing:IconButton(
                                  icon:Icon(Icons.close),
                                  onPressed:(){
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Divider(),
                              Text("This Is An Simple Animated Dialog!")
                            ],
                          ),
                        )
                      ),
                    ),
                    pageBuilder: (context,anim1,anim2){
                      return Transform.rotate(
                          angle:anim1.value,
                      );
                    }
                );





              },
            )
          )
      ),
    );
  }


}






