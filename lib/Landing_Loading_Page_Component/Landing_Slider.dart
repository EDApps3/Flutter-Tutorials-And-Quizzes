import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List CapList = [
  Padding(
    padding: const EdgeInsets.all(12.0),
    child:Container(
      color:Colors.blue.withOpacity(0.5),
      height:45,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,5,20,5),
        child: TyperAnimatedTextKit(
            text: [
              "Learn Widgets Step By Step",
            ],
            textStyle: TextStyle(
              color:Colors.white,
              fontSize: 16.0,
              fontFamily: "PT Mono",
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.center
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(12.0),
    child:Container(
      color:Colors.blueGrey.withOpacity(0.5),
      height:45,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,5,20,5),
        child: TyperAnimatedTextKit(
            text: [
              "Discover And Share Codes",
            ],
            textStyle: TextStyle(
              color:Colors.white,
              fontSize: 16.0,
              fontFamily: "PT Mono",
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.center
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(12.0),
    child:Container(
      color:Colors.teal.withOpacity(0.5),
      height:45,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,5,20,5),
        child: TyperAnimatedTextKit(
            text: [
              "Run Quizzes And Test Yourself",
            ],
            textStyle: TextStyle(
              color:Colors.white,
              fontSize: 16.0,
              fontFamily: "PT Mono",
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.center
        ),
      ),
    ),
  ),
];


class LandingPageSlider extends StatefulWidget {
  @override
  _LandingPageSliderState createState() => _LandingPageSliderState();
}

class _LandingPageSliderState extends State<LandingPageSlider> {
  CarouselSlider carouselSlider;
  int _current = 0;


  List imgList = [
    'Images/LandingPage/Slider1.jpg',
    'Images/LandingPage/Slider2.jpg',
    'Images/LandingPage/Slider3.jpg',
  ];

  @override
  void initState(){
    super.initState();
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:MediaQuery.of(context).size.width,
      height:360,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height:10),
          carouselSlider = CarouselSlider(
            autoPlayInterval:Duration(seconds:2),
            autoPlay:true,
            enableInfiniteScroll:true,
            height: 300.0,
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
                          CapList[imgList.indexOf(imgUrl)],


                        ],
                      )






                  );
                },
              );
            }).toList(),
          ),



        ],
      ),
    );
  }
}






