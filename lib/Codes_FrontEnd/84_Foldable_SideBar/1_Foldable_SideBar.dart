import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';

void main() {
  runApp(FoldableSideBarRun());
}

class FoldableSideBarRun extends StatefulWidget {
  @override
  _FoldableSideBarRunState createState() => _FoldableSideBarRunState();
}

class _FoldableSideBarRunState extends State<FoldableSideBarRun>  {
  FSBStatus drawerStatus;
  Icon MenuIcon=Icon(Icons.menu);
  Color MenuColor=Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body:FoldableSidebarBuilder(
          drawerBackgroundColor: Colors.teal,
          drawer: CustomDrawer(closeDrawer: (){
            setState(() {
              drawerStatus = FSBStatus.FSB_CLOSE;
            });
          },),
          screenContents:Column(children: <Widget>[
      Container(
        width:MediaQuery.of(context).size.width,
        height:70,
        color: Colors.blue,
        child:Row(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width:10,),
            FloatingActionButton(
                      backgroundColor:MenuColor,
                      child:MenuIcon,
                      onPressed: () {
                        setState(() {
                          if(drawerStatus == FSBStatus.FSB_OPEN){
                            drawerStatus=FSBStatus.FSB_CLOSE;
                            MenuIcon=Icon(Icons.menu,color: Colors.white,);
                            MenuColor=Colors.teal;
                          }
                          else{
                            drawerStatus=FSBStatus.FSB_OPEN;
                            MenuIcon=Icon(Icons.close,color: Colors.white,);
                            MenuColor=Colors.red;
                          }
                        });
                      }),
            Text(
              "  Title",
              style:TextStyle(
                fontSize:20,
                color:Colors.white,
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child:Center(
         child:Text(
          "Please Click The Top Button!",
          style:TextStyle(
            color:Colors.white,
          ),
        )
      )
      )
     ],
    ),
          status: drawerStatus,
        ),
      ),
    );
  }
}





class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: ListView(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "Images/160x160_Flutter.png",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Flutter Tutorials")
                ],
              )),
          Divider(height: 1, color: Colors.grey,),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Your Profile",),
          ),
          Divider(height: 1, color: Colors.grey,),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          Divider(height: 1, color: Colors.grey,),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Payments"),
          ),
          Divider(height: 1, color: Colors.grey,),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
          ),
          Divider(height: 1, color: Colors.grey,),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Log Out"),
          ),
        ],
      ),
    );
  }
}