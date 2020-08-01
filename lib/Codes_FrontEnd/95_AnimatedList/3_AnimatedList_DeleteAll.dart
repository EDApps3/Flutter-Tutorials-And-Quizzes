import 'package:flutter/material.dart';

void main() => runApp(AnimatedList_DeleteAll_Run());

class AnimatedList_DeleteAll_Run extends StatefulWidget {
  @override
  AnimatedList_DeleteAll_State createState() => AnimatedList_DeleteAll_State();
}

class AnimatedList_DeleteAll_State extends State<AnimatedList_DeleteAll_Run> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> ListData = ['Dart', 'Flutter','Java','Php','Angular'];

  void DeleteAllItem() {
    final length = ListData.length;
    for (int i = length - 1; i >= 0; i--) {
      String removedItem = ListData.removeAt(i);
      AnimatedListRemovedItemBuilder builder = (context, animation) {
        return BuildCard(removedItem, animation);
      };
      _listKey.currentState.removeItem(i, builder);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.list),
        title:Text("Animated List Delete All"),
      ),
      body:Column(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            width:MediaQuery.of(context).size.width,
            height:30,
            child:SizedBox(
                        width:double.infinity,
                        child:RaisedButton( 
                          color: Colors.red,
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child:
                          Text(
                            'Delete All List Values!',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed:(){
                            DeleteAllItem();
                          },
                        ),
                      ),
          ),
        ),

        Expanded(
          child:AnimatedList(
            key: _listKey,
            initialItemCount: ListData.length,
            itemBuilder: (context, index, animation) {
              return BuildCard(ListData[index], animation);
            },
          ),
        ),

         
         
      ],
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
