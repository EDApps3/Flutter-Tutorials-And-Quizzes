import 'package:flutter/material.dart';

void main() {
  runApp(PageViewTransition_2_Run());
}

class PageViewTransition_2_Run extends StatefulWidget {
  @override
  PageViewTransition_2_State createState() => new PageViewTransition_2_State();
}

class PageViewTransition_2_State extends State<PageViewTransition_2_Run> {
  PageController controller = PageController();
  var currentPageValue = 0.0;

  List PageViewItem =[
    Container(
      width :double.infinity,
      height:double.infinity,
      color:Colors.teal,
      child:Row(
       mainAxisAlignment:MainAxisAlignment.center,
       crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.pages,color:Colors.white,),
          Text("Page 1,Swipe Right!",style:TextStyle(color:Colors.white),) ,
          Icon(Icons.arrow_right,color:Colors.white,),  
        ],
      ),
     ),
    Container(
      width :double.infinity,
      height:double.infinity,
      color:Colors.blue,
      child:Row(
       mainAxisAlignment:MainAxisAlignment.center,
       crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.pages,color:Colors.white,),
          Text("Page 2,Swipe Right Or Left!",style:TextStyle(color:Colors.white),),
          Icon(Icons.arrow_left,color:Colors.white,),  
          Icon(Icons.arrow_right,color:Colors.white,),  
        ],
      ),
     ),
   Container(
      width :double.infinity,
      height:double.infinity,
      color:Colors.grey,
      child:Row(
       mainAxisAlignment:MainAxisAlignment.center,
       crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.pages,color:Colors.white,),
          Text("Page 3,Swipe Left!",style:TextStyle(color:Colors.white),),
          Icon(Icons.arrow_left,color:Colors.white,),  
        ],
      ),
     ),
  
  ];

  @override
  void initState(){
    super.initState();
    controller.addListener(() {
      setState(() {
       currentPageValue = controller.page;
      });
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
       appBar:AppBar(
          title:Text("Page View Transition1"),
        ),
        body:PageView.builder(
          itemCount:PageViewItem.length,
          scrollDirection:Axis.horizontal,
          controller: controller,
          itemBuilder: (context, position) {
           return Transform(
             transform: Matrix4.identity()..rotateZ(currentPageValue - position),
             child:PageViewItem[position]
           );
          },
        ),
      ),
    );
  }
  

}