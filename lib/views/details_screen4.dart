import 'package:carousel_slider/carousel_slider.dart';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:flutter/material.dart';

import 'dialog_screen_warning.dart';

class DetailsScreen4 extends StatefulWidget {
  final int index;
  const DetailsScreen4({Key key, this.index}) : super(key: key);

  @override
  _DetailsScreen4State createState() => _DetailsScreen4State();
}

class _DetailsScreen4State extends State<DetailsScreen4> {
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
                      // Color(0xFFE8E6E7).withOpacity(1),
                      // Color(0xFFE8E6E7).withOpacity(0.75),
                      // Color(0xFFE8E6E7).withOpacity(0.5),
                      // Color(0xFFE8E6E7).withOpacity(0.25),
                      // Color(0xFFE8E6E7).withOpacity(0),
                      Colors.white.withOpacity(1),
                      Colors.white.withOpacity(0.75),
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.25),
                      Colors.white.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
        .toList();

    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Color(0xFFE8E6E7),
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
        // title: Text(
        //   'Checkout',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 17,
        //     fontWeight: FontWeight.w700,
        //   ),
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: CustomScrollView(
        // physics: ScrollPhysics
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Container(
              // color: Colors.red.withOpacity(0.5),
              // width: size.width,
              child: Stack(
                children: [
                  ///////////////////////////////////////CAROUSEL SLIDER
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
                  ///////////////////////////////////////DOTS INDICATOR
                  Positioned(
                    // top: 150,
                    right: 10,
                    // width: size.width,
                    height: size.height - 50,
                    child: RotatedBox(
                      quarterTurns: 1,
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
                  ),
                  ///////////////////////////////////////TITLE COLUMN
                  Positioned(
                    bottom: 0,
                    // top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Container(
                        // color: Colors.yellow.withOpacity(0.5),
                        child: Column(
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
                                Icon(Icons.star,
                                    color: Colors.grey[400], size: 17),
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
                            SizedBox(height: 45),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Colors.black87,
                                  size: 40,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Swipe down',
                                      maxLines: 1,
                                      softWrap: false,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.2,
                                      ),
                                    ),
                                    Text(
                                      'for Description, Details and Reviews',
                                      maxLines: 1,
                                      softWrap: false,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    // top: 0,
                    //left: 0,
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
                          SizedBox(height: 30),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  // color: Color(0xFFE8E6E7),
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: Offset(0, 1),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: ClipRRect(
                              child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  // border: Border.all(
                                  //   color: Colors.black54,
                                  //   width: 3,
                                  //   style: BorderStyle.solid,
                                  // ),
                                  // boxShadow: [kBoxShadowText],

                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  // color: Color(0xFFE8E6E7),
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
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  opaque: false,
                                  pageBuilder: (_, __, ___) =>
                                      DialogScreenWarning(
                                    image: 'assets/images/pose1.jpg',
                                  ),
                                ),
                              );
                            },
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 3,
                                    // color: Color(0xFFE8E6E7),
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(0, 1),
                                    blurRadius: 5,
                                  )
                                ],
                              ),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ///////////////////////////////////////REST OF THE SCREEN / OTHERSIDE / DOWNSIDE
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              // color: Colors.red.withOpacity(0.5),
              // width: size.width,
              child: Stack(
                children: [
                  Container(
                    // color: Colors.green.withOpacity(0.5),
                    height: 1250,
                    width: size.width,
                  ),
                  Positioned(
                    // bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      // color: Colors.yellow.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Container(
                            width: size.width,
                            child: Text(
                              'Everyone agrees that the short of the season is the biker. A regular on the runway, in the studio and on the street, this popular silhouette is ever-versatile and looks great with so many silhouettes.',
                              softWrap: true,
                              // textWidthBasis: TextWidthBasis.parent,
                              // maxLines: 5, overflow: TextOverflow.ellipsis,
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
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '4.9',
                                softWrap: true,
                                // textWidthBasis: TextWidthBasis.parent,
                                // maxLines: 5, overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  // height: 1.5,
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          size: 25, color: Colors.amber),
                                      Icon(Icons.star,
                                          size: 25, color: Colors.amber),
                                      Icon(Icons.star,
                                          size: 25, color: Colors.amber),
                                      Icon(Icons.star,
                                          size: 25, color: Colors.amber),
                                      Icon(Icons.star,
                                          color: Colors.grey[400], size: 25),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '274 ratings',
                                    softWrap: true,
                                    // textWidthBasis: TextWidthBasis.parent,
                                    // maxLines: 5, overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      // height: 1.5,
                                      color: Colors.black87,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          CommentBar(),
                          CommentBar(),
                          CommentBar(),
                          CommentBar(),
                          CommentBar(),
                          CommentBar(),
                          CommentBar(),
                          CommentBar(),
                          CommentBar(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
        // shrinkWrap: true,
      ),
    );
  }
}

class CommentBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 20),
            SizedBox(width: 13),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kate Carter',
                        maxLines: 12,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '5 OCT 2020',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, size: 14, color: Colors.amber),
                      Icon(Icons.star, size: 14, color: Colors.amber),
                      Icon(Icons.star, size: 14, color: Colors.amber),
                      Icon(Icons.star, size: 14, color: Colors.amber),
                      Icon(Icons.star, color: Colors.grey[400], size: 14),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Happy to refer to anyone who enjoys online shopping.',
                    maxLines: 12,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Divider(thickness: 1.5),
      ],
    );
  }
}
