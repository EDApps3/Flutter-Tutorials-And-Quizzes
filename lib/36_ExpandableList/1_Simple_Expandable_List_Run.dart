import 'package:flutter/material.dart';

void main() => runApp(SimpleExpandableListRun());


class SimpleExpandableListRun extends StatelessWidget {

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
    return MaterialApp(
      title: 'Expandable List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
          appBar: AppBar(
            title: Text('Expandable List'),
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
                     title: Text ("Account"),
                     children: <Widget>[
                       Divider(color: Colors.grey,),
                       ListTile (
                         title: Text ("SignUp"),
                         subtitle: Text ("Where You Can Register An Account"),
                         onTap: (){
                           PopAlert(context);
                         },
                       ),
                       Divider(color: Colors.grey,),
                       ListTile (
                         title: Text ("SignIn"),
                         subtitle: Text ("Where You Can Login With Your Account"),
                         onTap: (){
                           PopAlert(context);
                         },
                       ),
                     ],
                   ),
                   SizedBox(height: 10,),
                   ExpansionTile (
                     title: Text ("MoreInfo"),
                     children: <Widget>[
                       Divider(color: Colors.grey,),
                       ListTile (
                         title: Text ("Contact"),
                         subtitle: Text ("Where You Can Call Us"),
                         onTap: (){
                           PopAlert(context);
                         },
                       ),
                     ],
                   ),
                 ],
               ),
             ],
           ),
        ),
    );
  }
}


