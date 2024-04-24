import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:flutter/material.dart';

class DetailsScreen2 extends StatelessWidget {
  final int index;
  const DetailsScreen2({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE8E6E7),
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Image.asset(
              'assets/images/pose4.jpg',
              fit: BoxFit.cover,
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
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Classic\nCotton Jacket',
                        style: TextStyle(
                          shadows: [kBoxShadowText],
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
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
                      Container(
                        width: size.width * 0.6,
                        child: Text(
                          'Everyone agrees—the short of the season is the biker. A regular on the runway, in the studio and on the street, this popular silhouette is ever-versatile and looks great with so many silhouettes.',
                          softWrap: true,
                          maxLines: 10,
                          style: TextStyle(
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
                ],
              ),
            ),
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
                  ClipRRect(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
