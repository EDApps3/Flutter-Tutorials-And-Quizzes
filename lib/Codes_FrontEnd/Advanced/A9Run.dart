import 'package:flutter/material.dart';

const Image_DATA = [
  {
    "ImageTitle":"Img1",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S1.jpg"
  },{
    "ImageTitle":"Img2",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S2.jpg"
  },
  {
    "ImageTitle":"Img3",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S3.jpg"
  },
  {
    "ImageTitle":"Img4",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S1.jpg"
  },{
    "ImageTitle":"Img5",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S2.jpg"
  },
  {
    "ImageTitle":"Img6",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S3.jpg"
  },
  {
    "ImageTitle":"Img7",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S1.jpg"
  },{
    "ImageTitle":"Img8",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S2.jpg"
  },
  {
    "ImageTitle":"Img9",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S3.jpg"
  },
  {
    "ImageTitle":"Img10",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S1.jpg"
  },{
    "ImageTitle":"Img11",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S2.jpg"
  },
  {
    "ImageTitle":"Img12",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S3.jpg"
  },
  {
    "ImageTitle":"Img13",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S1.jpg"
  },{
    "ImageTitle":"Img14",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S2.jpg"
  },
  {
    "ImageTitle":"Img15",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S3.jpg"
  },
  {
    "ImageTitle":"Img16",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S1.jpg"
  },{
    "ImageTitle":"Img17",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S2.jpg"
  },
  {
    "ImageTitle":"Img18",
    "ImageDesc":"This Is ListView Item Stack Tutorial Where Each Item Scaled, Keep Scrolling Down And See What Gonna Happens!",
    "ImageName":"S3.jpg"
  },
  

];

void main() {
  runApp(ListViewItemStack());
}



class ListViewItemStack extends StatefulWidget {
  @override
  _ListViewItemStackState createState() => _ListViewItemStackState();
}

class _ListViewItemStackState extends State<ListViewItemStack> {
  ScrollController controller = ScrollController();
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = Image_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
          ]),
          child:Row(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width:3,),
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Container(
                    height:135,
                    width:135,
                    child:Image.asset(
                    "Images/${post["ImageName"]}",
                    height:395,
                    width:95,
                    fit:BoxFit.fill,
                   ),
                  ),
                ),
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,5.0),
                    child: ListTile(
                    title:Text(
                        post["ImageTitle"],
                        style: const TextStyle(fontSize:19, fontWeight: FontWeight.bold),
                      ),
                    subtitle:Text(
                        post["ImageDesc"],
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                        overflow:TextOverflow.ellipsis,
                        maxLines:4,
                      ),
                ),
                  ),
                )
                
              ],
            ),
          ));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {

      double value = controller.offset/119;

      setState(() {
        topContainer = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar:AppBar(
          title:Text("ListView Stack Item"),
        ),
        body: Container(
          height: size.height,
          child: Column(
            children: <Widget>[
            
              Expanded(
                  child: ListView.builder(
                    controller: controller,
                      itemCount: itemsData.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        if (topContainer > 0.5) {
                          scale = index + 0.5 - topContainer;
                          if (scale < 0) {
                            scale = 0;
                          } else if (scale > 1) {
                            scale = 1;
                          }
                        }
                        return Opacity(
                          opacity: scale,
                          child: Transform(
                            transform:  Matrix4.identity()..scale(scale,scale),
                            alignment: Alignment.bottomCenter,
                            child: Align(
                                heightFactor: 0.7,
                                alignment: Alignment.topCenter,
                                child: itemsData[index]),
                          ),
                        );
                      })
                      ),

            ],
          ),
        ),
      ),
    );
  }
}
