import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(ListTilePopupMenuButton());
}

class ListTilePopupMenuButton extends StatefulWidget {
  @override
  _ListTilePopupMenuButtonState createState() => new _ListTilePopupMenuButtonState();
}

class _ListTilePopupMenuButtonState extends State<ListTilePopupMenuButton> {
  double posx,posy;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    _showPopupMenu() async{
      await showMenu(
        context: context,
        position: RelativeRect.fromLTRB(posx, posy, 40, 10),
        items:[
          PopupMenuItem(
              child:
               ListTile(
                 leading:Icon(Icons.edit),
                 title:Text("Edit"),
                 onTap:(){
                   PopAlert(context,"Edit Tapped!");
                 },
               )
          ),
          PopupMenuItem(
              child:
              ListTile(
                leading:Icon(Icons.delete),
                title:Text("Delete"),
                onTap:(){
                  PopAlert(context,"Delete Tapped!");
                },
              )
          ),
        ],
      );
    }



    void onTapDown(BuildContext context, TapDownDetails details) {
      print('${details.globalPosition}');
      final RenderBox box = context.findRenderObject();
      final Offset localOffset = box.globalToLocal(details.globalPosition);
      setState(() {
        posx = localOffset.dx;
        posy = localOffset.dy;
      });
      _showPopupMenu();
    }

    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'AppBar Popup Menu Button',
      home: new Scaffold(
        appBar:AppBar(
            title: Text('ListTile Popup Menu Button'),
        ),
        body:
         ListView(
           children: <Widget>[
             Card(
              elevation:2,
              child:
               ListTile(
                leading:Icon(Icons.exposure_plus_1),
                title:Text("exposure_plus_1"),
                subtitle:Text("Icon(Icons.exposure_plus_1)"),
                trailing:IconButton(
                  icon:
                  GestureDetector(
                    onTapDown: (TapDownDetails details) => onTapDown(context, details),
                    child:
                     Icon(Icons.more_vert),
                  ),
              ),
             ),
             ),
             Card(
               elevation:2,
               child:
               ListTile(
                 leading:Icon(Icons.exposure_plus_2),
                 title:Text("exposure_plus_2"),
                 subtitle:Text("Icon(Icons.exposure_plus_2)"),
                 trailing:IconButton(
                   icon:
                   GestureDetector(
                     onTapDown: (TapDownDetails details) => onTapDown(context, details),
                     child:
                     Icon(Icons.more_vert),
                   ),
                 ),
               ),
             ),
           ],
         )
      ),
    );
  }


  void PopAlert(BuildContext context,String Txt){
    var AD=new AlertDialog(
      title:Text("Action"),
      content:Text(Txt),
    );
    showDialog(
        context:context,
        child: AD
    );
  }


}







