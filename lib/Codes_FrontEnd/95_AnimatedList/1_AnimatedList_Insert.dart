import 'package:flutter/material.dart';

void main() => runApp(AnimatedList_Insert_Run());

class AnimatedList_Insert_Run extends StatefulWidget {
  @override
  AnimatedList_Insert_State createState() => AnimatedList_Insert_State();
}

class AnimatedList_Insert_State extends State<AnimatedList_Insert_Run> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final formKey = new GlobalKey<FormState>();
  List<String> ListData = ['Dart', 'Flutter',];
  var LangController = new TextEditingController();
  String LangValue="";


  void InsertToAnimatedList(String Str,int Position) {
    ListData.insert(Position, Str);
    _listKey.currentState.insertItem(Position);
  }


  validate() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      InsertToAnimatedList(LangValue,0);
      LangController.text="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.list),
        title:Text("Animated List Insert"),
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
                  BuildCard(ListData[index], animation)

                ],)
                :BuildCard(ListData[index], animation);
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
       color:Colors.teal,   
          width:MediaQuery.of(context).size.width,
          height:165,
          child:
            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Known FrameWork/Programing Language:",style: TextStyle(
                            color: Colors.white,
                          ),),
                    TextFormField(
                      decoration:InputDecoration(
                        icon:Icon(Icons.code,color:Colors.white),
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
                          'Add To Animated List!',
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



  Widget BuildCard(String item, Animation animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        child: ListTile(
          title: Text(
            item,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }



}
