import 'package:carousel_slider/carousel_slider.dart';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'dialog_screen_warning.dart';

class DetailsScreen extends StatefulWidget {
  final int index;
  const DetailsScreen({Key key, this.index}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Stack(
            children: [
              Container(
                height: size.height,
                width: size.width,
                child: Image.asset(
                  item,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.2, 0.3, 0.35, 0.4, 0.5],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xFFE8E6E7).withOpacity(1),
                      Color(0xFFE8E6E7).withOpacity(0.75),
                      Color(0xFFE8E6E7).withOpacity(0.5),
                      Color(0xFFE8E6E7).withOpacity(0.25),
                      Color(0xFFE8E6E7).withOpacity(0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
        .toList();

    return Scaffold(
      backgroundColor: Color(0xFFE8E6E7),
      body: Stack(
        children: [
          // Container(
          //   height: size.height,
          //   width: size.width,
          //   child: Image.asset(
          //     'assets/images/pose5.jpg',
          //     fit: BoxFit.cover,
          //     alignment: Alignment.topCenter,
          //   ),
          // ),
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 10),
                height: size.height,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: imageSliders,
          ),
          SizedBox(height: 20),
          Positioned(
            top: 30,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map(
                (url) {
                  int index = imgList.indexOf(url);
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
                            color: Colors.white70,
                          ),
                        );
                },
              ).toList(),
            ),
          ),

          DraggableScrollableSheet(
            initialChildSize: 0.42,
            minChildSize: 0.42,
            maxChildSize: 0.42,
            builder: (context, _scrollController) {
              return Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  // dragStartBehavior: DragStartBehavior.start,
                  controller: _scrollController,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    // key: _contentKey,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Classic\nCotton Jacket',
                        style: TextStyle(
                          // shadows: [kBoxShadowWhiteText],
                          color: Colors.black,
                          height: 1.1,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.star, size: 17),
                          Icon(Icons.star, size: 17),
                          Icon(Icons.star, size: 17),
                          Icon(Icons.star, size: 17),
                          Icon(Icons.star, color: Colors.grey[400], size: 17),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Color',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          ClipRRect(
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          ClipRRect(
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          ClipRRect(
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: size.width * 0.6,
                        child: Text(
                          'Everyone agrees that the short of the season is the biker. A regular on the runway, in the studio and on the street, this popular silhouette is ever-versatile and looks great with so many silhouettes.',
                          softWrap: true,
                          // textWidthBasis: TextWidthBasis.parent,
                          maxLines: 5, overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            // height: 1.5,
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30.0, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$239.99',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      // shadows: [kBoxShadowText],
                      color: Colors.black87, height: 1.1,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$208.99',
                    style: TextStyle(
                      // shadows: [kBoxShadowText],
                      color: Colors.black, height: 1.1,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(height: 88),
                  ClipRRect(
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        // boxShadow: [kBoxShadowText],
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (_, __, ___) => DialogScreenWarning(
                            image: 'assets/images/pose1.jpg',
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
