import 'package:flutter/material.dart';

void main() {
  runApp(LVScrollTo());
}

class LVScrollTo extends StatelessWidget{
  ScrollController SC = new ScrollController();
  double IndexSc=0.0;
  double JumpWidth=0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "ListView Scroll To",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("ListView Scroll To"),
        ),
        body:
         Row(
           mainAxisAlignment:MainAxisAlignment.center,
           crossAxisAlignment:CrossAxisAlignment.center,
           children: <Widget>[

             Container(
               height:250,
               width: MediaQuery.of(context).size.width*0.1,
               child:Center(
                 child:OutlineButton(
                   child:Text("<"),
                   onPressed:(){
                     if(IndexSc !=0){
                       IndexSc--;
                       JumpWidth-=200.00;
                       SC.animateTo(
                         JumpWidth,
                         duration:Duration(milliseconds:500),
                         curve:Curves.fastOutSlowIn,
                       );
                     }
                   },
                 ),
               )
             ),

             Container(
              height:250,
              width: MediaQuery.of(context).size.width*0.8,
              child:
              ListView(
                controller:SC,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[

                      Card(
                        child:Image.asset("Images/S1.jpg",width:200,height:200,),
                      ),
                      SizedBox(width:10,),

                      Card(
                        child:Image.asset("Images/S2.jpg",width:200,height:200,),
                      ),
                      SizedBox(width:10,),

                      Card(
                        child:Image.asset("Images/S3.jpg",width:200,height:200,),
                      ),
                      SizedBox(width:10,),

                      Card(
                        child:Image.asset("Images/S2.jpg",width:200,height:200,),
                      ),
                      SizedBox(width:10,),

                      Card(
                        child:Image.asset("Images/S3.jpg",width:200,height:200,),
                      ),
                      SizedBox(width:10,),

                      Card(
                        child:Image.asset("Images/S1.jpg",width:200,height:200,),
                      ),
                      SizedBox(width:10,),


                    ],
                  ),
                ],
              ),
             ),



             Container(
               height:250,
                width: MediaQuery.of(context).size.width*0.1,
                child:Center(
                  child:
                    OutlineButton(
                      child:Text(">"),
                       onPressed:(){
                         if(IndexSc !=6){
                           IndexSc++;
                           JumpWidth+=200.00;
                           SC.animateTo(
                               JumpWidth,
                             duration:Duration(milliseconds:500),
                             curve:Curves.fastOutSlowIn,
                           );
                         }
                       },
                    ),
                ),
             ),


           ],
         ),
      ),



    );
  }

}










