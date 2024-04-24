import 'package:filledstacks_structure_deneme/views/details_screen.dart';
import 'package:filledstacks_structure_deneme/views/details_screen4.dart';
import 'package:flutter/material.dart';

class ProductHorizontalList extends StatelessWidget {
  final String topTitle;
  final List productsList;

  const ProductHorizontalList({Key key, this.topTitle, this.productsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 18, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                topTitle,
                style: TextStyle(
                  // shadows: [kBoxShadowText],
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 2,
                ),
                textAlign: TextAlign.start,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(height: 1),
        Container(
          height: 230,
          width: size.width,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 15, right: 15),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (_, __, ___) => DetailsScreen4(index: index),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: size.width * 0.4,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/bg_girl.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child:
                                  // IconButton(
                                  //   onPressed: () {},
                                  //  splashColor: Colors.white,
                                  //   icon: Icon(
                                  //     Icons.favorite,
                                  //     color: Colors.red,
                                  //     size: 17,
                                  //   ),
                                  // ),
                                  ClipRRect(
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: (index % 3) == 0
                                          ? Colors.red
                                          : Colors.grey,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          'Main Title',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          '\$${(index + 2) * 3}${(index + 3) * 1}.99',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 7.5),
      ],
    );
  }
}
