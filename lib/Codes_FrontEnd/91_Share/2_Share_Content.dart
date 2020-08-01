import 'package:flutter/material.dart';
import 'package:share/share.dart';

void main() {
  runApp(ShareContentRun());
}


class ShareContentRun extends StatelessWidget {
  String ImgUrl="http://optionsmegastore.com/5042-tm_large_default/acer-aspire-es1-15-572-33zu-laptop-intel-core-i3-6006u-156-inch-1tb-hdd-4gb-ram-dos-red.jpg";
  String Title="Acer Aspire ES1 -15-572 -33ZU Laptop , Intel Core i3 -6006U , 15.6 Inch , 1TB HDD , 4GB RAM , DOS , RED";
  String Descr="Aspire ES series notebooks inject a fresh blast of color1 and style into everyday computing. Along with a number of useful enhancements, you’ll work and play comfortably, efficiently, and with flair.";
  String Price="483\$";


  @override
  Widget build(BuildContext context) {
    String ShareText=Title+"\n"+Descr+"\n"+Price+"\n\n"+ImgUrl;

    return MaterialApp(
     debugShowCheckedModeBanner:false,
     title: 'Share Content',
     home: Scaffold(
      appBar: AppBar(
        title: Text('Share Content'),
      ),
      body:ListView(
        children: <Widget>[
          SizedBox(
          width :350,
          height:415,
          child:Card(
            child:Column(
              children:<Widget>[
                Image.network(
                  ImgUrl,
                  width:200,
                  height:200,
                ),
                ListTile(
                  title:Text(Title),
                  subtitle:Column(
                    children: <Widget>[
                      Text(Descr),
                      Text(Price),
                    ],
                  ),
                ),
                FlatButton.icon(
          icon:Icon(Icons.share),
          label:Text('Share Product'), 
          onPressed:(){
            final RenderBox box = context.findRenderObject();
            Share.share(
              ShareText,
              sharePositionOrigin:box.localToGlobal(Offset.zero) &box.size
            );
          },             
        ),
              ]
            ),
          ),
        ),   
        ],
      )
     ),
    );
  }
}