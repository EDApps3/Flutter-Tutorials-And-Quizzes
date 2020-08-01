import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderCaption extends StatefulWidget {
  SliderCaption() : super();

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<SliderCaption> {

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'Images/S1.jpg',
    'Images/S2.jpg',
    'Images/S3.jpg',
  ];

  List CapList = [
    'Caption 1',
    'Caption 2',
    'Caption 3',
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
        title: Text("Caption Slider"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Caption Slider",
              textAlign: TextAlign.center,
            ),
            carouselSlider = CarouselSlider(
              height: 206.0,
              initialPage: 0,
              enlargeCenterPage: true,
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
                            Center(
                              child: Text(
                                CapList[imgList.indexOf(imgUrl)],
                                style: TextStyle(
                                  color: Colors.white,
                                  backgroundColor: Colors.lightBlueAccent,
                                ),
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
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}