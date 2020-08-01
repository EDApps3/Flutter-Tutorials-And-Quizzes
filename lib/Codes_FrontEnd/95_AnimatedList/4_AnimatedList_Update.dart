import 'package:flutter/material.dart';

void main() => runApp(AnimatedList_Update_Run());

class AnimatedList_Update_Run extends StatefulWidget {
  @override
  AnimatedList_Update_State createState() => AnimatedList_Update_State();
}

class AnimatedList_Update_State extends State<AnimatedList_Update_Run> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final formKey = new GlobalKey<FormState>();
  List<String> ListData = ['Dart', 'Flutter',];
  var LangController = new TextEditingController();
  String LangValue="";
  bool ValueSelected=false;
  int UpdatePos;

  void UpdateListItem(String Str,int Pos) {
    setState(() {
      ListData[Pos] = Str;
    });
  }

  validate() {
    if(ValueSelected==false){
      AlertDialog dialog = new AlertDialog(
                        content: new Text(
                            "Please Tap On Card Down To Choose Value To Update"
                        )
                    );
                    showDialog(context: context, child: dialog);
    }
    else{
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      UpdateListItem(LangValue,UpdatePos);
      LangController.text="";
      setState(() {
              ValueSelected=false;
      });
    }
    }
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.list),
        title:Text("Animated List Update"),
      ),
      body:Stack(
      children: <Widget>[

        AnimatedList(
            key: _listKey,
            initialItemCount: ListData.length,
            itemBuilder: (context, index, animation) {
              return (index==0)?
                Column(children: <Widget>[
                  SizedBox(height:200),
                  BuildCard(ListData[index], animation,index)

                ],)
                :BuildCard(ListData[index], animation,index);
            },
          ),

          Positioned(
          top:0,
          left:0,
          child:BuildForm()
        ),
         
      ],
      ),
      
    );
  }

Widget BuildForm() {
    return Container(
          width:MediaQuery.of(context).size.width,
          height:185,
          child:
            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Known FrameWork/Programing Language:",),
                    (ValueSelected==true)?Text("Updating $UpdatePos"):SizedBox(),

                    TextFormField(
                      decoration:InputDecoration(
                        icon:Icon(Icons.code,),
                        hintText:"Please Enter A Value!",
                      ),
                      controller: LangController,
                      keyboardType: TextInputType.text,
                      validator: (val) => val.length == 0 ? 'Please Enter A Value' : null,
                      onSaved: (val) => LangValue = val,
                    ),
                    SizedBox(
                      width:double.infinity,
                      child:RaisedButton( 
                        color: Colors.green,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child:
                        Text(
                          'Update Selected Value List!',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: validate,
                      ),
                    ),

                  ],
                ),
              ),
              ),            
        );
  }



  Widget BuildCard(String item, Animation animation,int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        child: ListTile(
          onTap:(){
            setState(() {
              UpdatePos=index;
              ValueSelected=true;
              LangValue=item;
              LangController.text=item;
            });
          },
          title: Text(
            item,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }








}
