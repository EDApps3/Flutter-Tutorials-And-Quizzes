import 'package:flutter/material.dart';
import 'LeaderBoard.dart';
import 'SettingPage.dart';

List<String> ShowLeaderBoardList = ['10','50','100','200'];
String selectedShowLeaderBoard="10";


List<String> ShowSearchByList = ['None','AvatarName','XP','UID'];
String selectedShowSearchBy="None";

class LeaderBoardShowResultBy extends StatefulWidget {
  LeaderBoardState parent;
  LeaderBoardShowResultBy(this.parent);

  @override
  LeaderBoardShowResultByState createState() => LeaderBoardShowResultByState();
}

class LeaderBoardShowResultByState extends State<LeaderBoardShowResultBy> {
  Color ThemeClr;
  TextEditingController SearchTFCtrl = new TextEditingController();
 

  @override
  void initState(){
    super.initState();
    if(ThemeResult=="Light"){
      ThemeClr=Colors.black;
    }
    else{
      ThemeClr=Colors.white;
    }
  }

    @override
  void dispose(){
    super.dispose();
  }



Widget build(BuildContext context) {


  return Container(
    color:Colors.grey.withOpacity(0.4),
    width: MediaQuery.of(context).size.width,
    height:150,  
    child:Column(children: <Widget>[
      Row(
             mainAxisAlignment:MainAxisAlignment.start,
             children: <Widget>[
               Text("   Show Result Rows By :",style:TextStyle(color:ThemeClr),),
               DropdownButton(
                 dropdownColor:(ThemeResult=="Light")?Colors.white:Colors.black,
                 hint: Text('50'),
                 value: selectedShowLeaderBoard,
                 onChanged: (newValue) {
                   setState(() {
                     selectedShowLeaderBoard = newValue;
                   });
                   this.widget.parent.setState(() {
                     this.widget.parent.refreshList();
                    });
                 },
                 items: ShowLeaderBoardList.map((Show) {
                   return DropdownMenuItem(
                     child:Text(Show,style:TextStyle(color:ThemeClr),),
                     value: Show,
                   );
                 }).toList(),
               ),
             ],
           ),
           












           Row(
             mainAxisAlignment:MainAxisAlignment.start,
             children: <Widget>[
               Text("   Search By :",style:TextStyle(color:ThemeClr),),
               DropdownButton(
                 dropdownColor:(ThemeResult=="Light")?Colors.white:Colors.black,
                 hint: Text('None'),
                 value: selectedShowSearchBy,
                 onChanged: (newValue) {
                   setState(() {
                     selectedShowSearchBy = newValue;
                   });
                   this.widget.parent.setState(() {
                     this.widget.parent.refreshList();
                    });
                 },
                 items: ShowSearchByList.map((Show2) {
                   return DropdownMenuItem(
                     child:Text(Show2,style:TextStyle(color:ThemeClr),),
                     value: Show2,
                   );
                 }).toList(),
               ),
               
             ],
           ), 


           Row(children: <Widget>[
              SizedBox(width:15,),
              Container(
                width:200,
                child:TextField(
                 controller:SearchTFCtrl,
                 style:TextStyle(
                   color:(ThemeClr)
                 ),
               ),
              ),
             
               RaisedButton(
                 child:Text("Search"),
                 onPressed:(){
                   List<UserData> UserObj=new List();
                   bool ResultFound=false;

                   if(selectedShowSearchBy=="None"){
                       this.widget.parent.setState(() {
                         this.widget.parent.refreshList();
                       });
                   }
                   else if(selectedShowSearchBy=="AvatarName"){
                     for(int i=0;i<UserDataLst.length;i++){
                       if(UserDataLst[i].UserName.contains(SearchTFCtrl.text)){
                         UserObj.add(UserDataLst[i]);
                       }
                     }
                       UserDataLst=UserObj;
                       this.widget.parent.setState(() {});
                   }
                   else if(selectedShowSearchBy=="XP"){
                     for(int i=0;i<UserDataLst.length;i++){
                       if(UserDataLst[i].Xp.toString().contains(SearchTFCtrl.text)){
                         UserObj.add(UserDataLst[i]);
                       }
                     }
                       UserDataLst=UserObj;
                       this.widget.parent.setState(() {});
                   }
                    else if(selectedShowSearchBy=="UID"){
                     for(int i=0;i<UserDataLst.length;i++){
                       if(UserDataLst[i].UID.contains(SearchTFCtrl.text)){
                         UserObj.add(UserDataLst[i]);
                       }
                     }
                       UserDataLst=UserObj;
                       this.widget.parent.setState(() {});
                   }
                   
                 },
               )
           ],)


    ],)
  );

          }

}