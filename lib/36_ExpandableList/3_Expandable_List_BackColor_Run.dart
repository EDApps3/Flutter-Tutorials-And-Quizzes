import 'package:flutter/material.dart';

void main() => runApp(ExpandableListBackColor());

class ExpandableListBackColor extends StatelessWidget {

  void PopAlert(BuildContext context){
    var AD=new AlertDialog(
      title:Text("Tap Detected!"),
      content:Text("ListTile Tapped!"),
    );
    showDialog(
        context:context,
        child: AD
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expandable List BackColor'),
        ),
        body:
         ListView(
           children: <Widget>[
             Column(
               children:<Widget>[
                 SizedBox(height: 20,),
                 Text(
                   "Select Wanted Option!",
                   style: TextStyle(
                     color: Colors.red,
                     fontSize: 24,
                   ),
                 ),
                 ExpansionTile (
                   backgroundColor: Colors.blueGrey,
                   leading:new Icon(Icons.perm_identity),
                   title: Text ("Account"),
                   children: <Widget>[
                     Divider(color: Colors.grey,),
                     Card(
                       color: Colors.grey,
                       child:ListTile (
                         leading: Icon (Icons.add),
                         title: Text ("SignUp"),
                         subtitle: Text ("Where You Can Register An Account"),
                         onTap: (){
                           PopAlert(context);
                         },
                       ),
                     ),
                     Card(
                       color: Colors.grey,
                       child:
                       ListTile (
                         leading: Icon (Icons.account_circle),
                         title: Text ("SignIn"),
                         subtitle: Text ("Where You Can Login With Your Account"),
                         onTap: (){
                           PopAlert(context);
                         },
                       ),
                     )

                   ],
                 ),
                 SizedBox(height: 10,),
                 ExpansionTile (
                   backgroundColor: Colors.blueGrey,
                   leading:new Icon(Icons.message),
                   title: Text ("MoreInfo"),
                   children: <Widget>[
                     Card(
                       color: Colors.grey,
                       child:
                       ListTile (
                         leading: Icon (Icons.phone),
                         title: Text ("Contact"),
                         subtitle: Text ("Where You Can Call Us"),
                         onTap: (){
                           PopAlert(context);
                         },
                       ),
                     )

                   ],
                 ),
               ],
             )
           ],
         )
    );
  }
}
