import 'package:flutter/material.dart';

void main() => runApp(AnimatedList_Delete_Run());

class AnimatedList_Delete_Run extends StatefulWidget {
  @override
  AnimatedList_Delete_State createState() => AnimatedList_Delete_State();
}

class AnimatedList_Delete_State extends State<AnimatedList_Delete_Run> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> ListData = ['Dart', 'Flutter','Java','Php','Angular'];

  void RemoveItemFromList(int Pos) {
    String removedItem = ListData.removeAt(Pos);
    AnimatedListRemovedItemBuilder builder = (context, animation) {
      return BuildCard(removedItem, animation,Pos);
    };
    _listKey.currentState.removeItem(Pos, builder);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.list),
        title:Text("Animated List Delete"),
      ),
      body:AnimatedList(
            key: _listKey,
            initialItemCount: ListData.length,
            itemBuilder: (context, index, animation) {
              return BuildCard(ListData[index], animation,index);
            },
          ),
    );
  }


  Widget BuildCard(String item, Animation animation,int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        child: ListTile(
          trailing:IconButton(
            icon:Icon(Icons.delete),
            onPressed:(){
              RemoveItemFromList(index);
            },
          ),
          title: Text(
            item,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }















}
