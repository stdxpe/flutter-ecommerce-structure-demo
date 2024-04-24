import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/explore_categories.dart';
import 'package:filledstacks_structure_deneme/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_bag_screen.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(
                tooltip: 'Wish List',
                // icon: Icon(Icons.favorite_border),
                icon: Container(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    'assets/icons/heart-icon.svg',
                  ),
                ),
                // Icon(Icons.search),
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => WishListScreen(),
                    ),
                  );
                },
              ),
              IconButton(
                tooltip: 'My Bag',
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                // icon: Container(
                //   height: 20,
                //   width: 20,
                //   child: SvgPicture.asset(
                //     'assets/icons/shopping-bag.svg',
                //   ),
                // ),
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => MyBagScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
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
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 17.5, right: 17.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: size.width,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withAlpha(40),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/icons/loupe-icon.svg',
                      ),
                    ),
                  ),
                  // enabledBorder: InputBorder.none,

                  hintText: 'Search',
                  // alignLabelWithHint: true,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '23 Items Found',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                controller: _scrollController,
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 17.5),
                    child: ExploreCategoriesCard(
                      title: 'Designer Collection',
                      subtitle: 'UP TO 70% OFF',
                      imageUrl: 'assets/images/bg_girl.jpg',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 17.5),
                    child: ExploreCategoriesCard(
                      title: 'Women\'s Suit',
                      subtitle: 'FLASH SALES',
                      imageUrl: 'assets/images/pose1.jpg',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 17.5),
                    child: ExploreCategoriesCard(
                      title: 'Spring Collection',
                      subtitle: 'DISCOUNTS UP TO 20%',
                      imageUrl: 'assets/images/pose2.jpg',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 17.5),
                    child: ExploreCategoriesCard(
                      title: 'Designer Destination',
                      subtitle: 'UP TO 70% OFF',
                      imageUrl: 'assets/images/pose4.jpg',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
