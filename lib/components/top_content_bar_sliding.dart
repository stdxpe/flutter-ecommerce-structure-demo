import 'package:carousel_slider/carousel_slider.dart';
import 'package:filledstacks_structure_deneme/components/top_content_bar.dart';
import 'package:flutter/material.dart';

class TopContentBarSliding extends StatefulWidget {
  @override
  _TopContentBarSlidingState createState() => _TopContentBarSlidingState();
}

class _TopContentBarSlidingState extends State<TopContentBarSliding> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> topContentList = [
      TopContentBar(),
      TopContentBar(),
      TopContentBar(),
      TopContentBar(),
    ];
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 1),
              // autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              autoPlayInterval: Duration(seconds: 10),
              enlargeCenterPage: false,
              viewportFraction: 1,
              height: size.height,
              enableInfiniteScroll: true,
              // enlargeStrategy: CenterPageEnlargeStrategy.height,
              aspectRatio: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          // items: imageSliders,
          items: topContentList,
        ),
        SizedBox(height: 20),
        Positioned(
          bottom: 10,
          left: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: topContentList.map(
              (url) {
                int index = topContentList.indexOf(url);
                return _current == index
                    ? Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 11.0,
                            height: 11.0,
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Colors.white,
                              border: Border.all(
                                color: Colors.white70,
                                width: 0.8,
                              ),
                            ),
                          ),
                          Container(
                            width: 6.0,
                            height: 6.0,
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : Container(
                        width: 6.0,
                        height: 6.0,
                        margin: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 4,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                      );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
