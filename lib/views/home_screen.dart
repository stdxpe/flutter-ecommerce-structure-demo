import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/product_horizontal_list.dart';
import 'package:filledstacks_structure_deneme/components/top_content_bar.dart';
import 'package:filledstacks_structure_deneme/components/top_content_bar_sliding.dart';
import 'package:filledstacks_structure_deneme/views/profile_screen.dart';
import 'package:filledstacks_structure_deneme/views/search_demo.dart';
import 'package:filledstacks_structure_deneme/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'details_screen3.dart';
import 'dialog_screen.dart';
import 'explore_screen.dart';
import 'my_bag_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    if (isThereAnySale) {
      Future.delayed(Duration(microseconds: 5), () {
        isThereAnySale = false;
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false,
            pageBuilder: (_, __, ___) => DialogScreen(),
          ),
        );
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            collapsedHeight: 71,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData.fallback(),
            pinned: true,
            actionsIconTheme: IconThemeData.fallback(),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              titlePadding: EdgeInsets.all(10),
              background: TopContentBarSliding(),
              // child: TopContentBar()
            ),
            expandedHeight: 350,
            floating: false,
            // stretch: true,
            // title: Text(
            //   'FANCY',
            //   style: TextStyle(
            //     shadows: [kBoxShadowText],
            //     color: Colors.green,
            //     fontSize: 18,
            //     fontFamily: 'Helvetica',
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: 5,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            actions: [
              Row(
                children: [
                  IconButton(
                    tooltip: 'Search',
                    // icon: Icon(Icons.favorite_border),
                    icon: Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/icons/loupe-icon.svg',
                      ),
                    ),
                    // Icon(Icons.search),
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (_, __, ___) => ExploreScreen(),
                        ),
                      );
                    },
                  ),
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
                    icon: Icon(Icons.shopping_cart),
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
            automaticallyImplyLeading: false,
            leading: IconButton(
              tooltip: 'Profile',
              // icon: Icon(Icons.verified_user),
              icon: Container(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                  'assets/icons/user-icon.svg',
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => ProfileScreen(),
                  ),
                );
              },
            ),
            // leading: Text(
            //   'FANCY',
            //   style: TextStyle(
            //     shadows: [kBoxShadowText],
            //     color: Colors.white,
            //     fontSize: 18,
            //     fontFamily: 'Helvetica',
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: 5,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // excludeHeaderSemantics: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: EdgeInsets.only(top: 35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ProductHorizontalList(
                      topTitle: 'Top Trends',
                    ),
                    ProductHorizontalList(
                      topTitle: 'Recommendations',
                    ),
                    ProductHorizontalList(
                      topTitle: 'Designer Collection',
                    ),
                    ProductHorizontalList(
                      topTitle: 'Women\'s Suit',
                    ),
                    ProductHorizontalList(
                      topTitle: 'Spring Collection',
                    ),
                    ProductHorizontalList(
                      topTitle: 'Designer Destination',
                    ),
                  ],
                ),
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
