import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(CarouselScrollDirectionRun());

class CarouselScrollDirectionRun extends StatefulWidget {
  CarouselScrollDirectionRun() : super();

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselScrollDirectionRun> {

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'Images/S1.jpg',
    'Images/S2.jpg',
    'Images/S3.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll Direction"),
      ),
      body:
      ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10,),
                Text(
                  "Slider 1->scrollDirection: Axis.horizontal,\nScrolled Horizontaly\n\n",
                  textAlign: TextAlign.center,
                ),
                carouselSlider = CarouselSlider(
                  height: 186.0,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },

                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child:
                            Stack(
                              children: <Widget>[
                                new Positioned.fill(
                                  child:Image.asset(
                                    imgUrl,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            )
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 10,),
                Text(
                  "Slider 2->scrollDirection: Axis.vertical,\nScrolled Verticaly\n\n",
                  textAlign: TextAlign.center,
                ),
                carouselSlider = CarouselSlider(
                  height: 186.0,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },

                  items: imgList.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child:
                            Stack(
                              children: <Widget>[
                                new Positioned.fill(
                                  child:Image.asset(
                                    imgUrl,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            )
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}