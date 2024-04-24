import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/wishlist_tabbarview1_screen.dart';
import 'package:filledstacks_structure_deneme/views/wishlist_tabbarview2_screen.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  // TabController _tabController = TabController(length: 2,);
  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 120,
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Edit  ',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            )
            // IconButton(
            //   icon:
            //   Icon(
            //     Icons.more_horiz_sharp,
            //     color: Colors.black,
            //     size: 25,
            //   ),
            //   onPressed: () {},
            // ),
          ],
          title: Text(
            'Wish List',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
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
          bottom: ColoredTabBar(
            color: Colors.grey.withAlpha(40),
            tabBar: TabBar(
              // labelColor: Colors.blue,
              // indicatorPadding: EdgeInsets.all(20),
              // indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.symmetric(vertical: 14),
              // indicator: BoxDecoration(),
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              onTap: (index) {
                // _tabController.index = index;
              },
              indicatorColor: Colors.black,
              // isScrollable: true,

              tabs: [
                Text(
                  'All Items',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    // fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Boards',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    // fontWeight: FontWeight.w700,
                  ),
                ),
              ],
              // controller: _tabController,
            ),
          ),
        ),
        body: TabBarView(
          // physics: ,
          controller: _tabController,
          children: [
            WishListTabBarView1(),
            WishListTabBarView2(),
          ],
        ),
      ),
    );
  }
}

class ColoredTabBar extends ColoredBox implements PreferredSizeWidget {
  ColoredTabBar({this.color, this.tabBar}) : super(color: color, child: tabBar);

  final Color color;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;
}

class WishListItemListTile extends StatelessWidget {
  final int index;

  const WishListItemListTile({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: size.width * 0.30,
                      width: size.width * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.grey.withOpacity(0.5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imgList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: size.width * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'One-Shoulder Dress',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '\$123.99',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          // SizedBox(height: 15),
                          Text(
                            'Size: M  |  Color: Grey',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          // SizedBox(height: 15),
                          // ClipRRect(
                          //   child: Container(
                          //     height: 35,
                          //     width: 35,
                          //     decoration: BoxDecoration(
                          //       shape: BoxShape.circle,
                          //       color: Colors.black,
                          //     ),
                          //     child: Center(
                          //       child: Icon(
                          //         Icons.shopping_bag,
                          //         color: Colors.white,
                          //         size: 20,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          EllipseButton(
                            colour: Colors.white,
                            isBorderless: false,
                            isContentUsed: false,
                            isShadowUsed: false,
                            isTextUsed: true,
                            text: 'Move to Bag',
                            fontSize: 12,
                            textColour: Colors.black,
                            height: 30,
                            width: size.width * 0.27,
                            function: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 15),
                // Divider(thickness: 1.3),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
