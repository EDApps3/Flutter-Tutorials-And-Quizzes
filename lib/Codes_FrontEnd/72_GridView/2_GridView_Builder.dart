import 'package:flutter/material.dart';

void main() => runApp(GridView__Builder_Run());

class WallPaper {
  String ImageSrc,Title,Desc;
  WallPaper({
    @required this.ImageSrc,
    @required this.Title,
    @required this.Desc,
  });
}

class GridView__Builder_Run extends StatefulWidget {
  @override
  _GridViewState createState() => _GridViewState();
}

class _GridViewState extends State<GridView__Builder_Run> {

  List WallPaperList =[
    WallPaper(
        ImageSrc:"Images/S1.jpg",
        Title:"Title 1",
        Desc:"This Is Image 1 Description This Is Image 1 Description This Is Image 1 Description"
    ),
    WallPaper(
        ImageSrc:"Images/S3.jpg",
        Title:"Title 2",
        Desc:"This Is Image 2 Description This Is Image 2 Description This Is Image 2 Description"
    ),
    WallPaper(
        ImageSrc:"Images/S2.jpg",
        Title:"Title 3",
        Desc:"This Is Image 3 Description This Is Image 3 Description This Is Image 3 Description"
    ),
  ];

  int crossAxisCountValue=2;

  void _setCrossAxisCountValue(double value){
    setState(() {
      crossAxisCountValue = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView Builder',
      home: Scaffold(
          appBar:AppBar(
            title:Text("GridView Builder"),
          ),
          body:Column(
            children: <Widget>[
              Container(
                width:double.infinity,
                height:50,
                child:Row(
                  children: <Widget>[
                    Text("  CrossAxisCount $crossAxisCountValue"),
                    new Slider(
                        min:1,
                        max:3,
                        value: crossAxisCountValue.toDouble(),
                        onChanged: _setCrossAxisCountValue
                    ),
                  ],
                ),
              ),
              Expanded(
                child:Container(
                    width:MediaQuery.of(context).size.width,
                    child:GridView.builder(
                      itemCount:WallPaperList.length,
                      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:crossAxisCountValue),
                      itemBuilder: (context,index){
                        return Card(
                            child:Column(
                              children: <Widget>[

                                Expanded(
                                  child:Container(
                                    width:double.infinity,
                                    child: Image.asset(
                                      WallPaperList[index].ImageSrc,
                                      fit:BoxFit.fill,
                                    ),

                                  ),
                                ),

                                Container(
                                    width:double.infinity,
                                    height:65,
                                    color:Colors.teal,
                                    child:ListTile(
                                      title   :Text(WallPaperList[index].Title),
                                      subtitle:Text(
                                        WallPaperList[index].Desc,
                                        maxLines:2,
                                        overflow:TextOverflow.ellipsis,
                                      ),
                                    )
                                ),







                              ],
                            )
                        );
                      },

                    )
                ),
              )


            ],
          ),
      ),
    );
  }
}