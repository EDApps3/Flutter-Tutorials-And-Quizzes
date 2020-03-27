import 'package:flutter/material.dart';

void main() {
  runApp(ImgNetworkRun());
}

class ImgNetworkRun extends StatefulWidget {
  @override
  _ImgNetworkState createState() => _ImgNetworkState();
}

class _ImgNetworkState extends State<ImgNetworkRun> {

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Image From Network",
      home:Scaffold(
        appBar: AppBar(
          title: Text('Image From Network'),
        ),
        body:Center(
          child:Container(
            padding: new EdgeInsets.all(5.0),
            child: Image.network(
              'https://miro.medium.com/max/2560/1*vgN2zojqiIYu23JPVuaSiA.jpeg',
              fit: BoxFit.cover,
              loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null ?
                    loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                        : null,
                  ),
                );
              },
            ),
            width: 270,
            height: 270,
          ),
        ),
      ),
    );
  }
}









