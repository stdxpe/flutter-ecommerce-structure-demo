import 'package:filledstacks_structure_deneme/components/profile_button_tile.dart';
import 'package:filledstacks_structure_deneme/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_bag_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, left: 17.5, right: 17.5),
            child: Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 50, left: 17.5, right: 17.5),
          //   child: Align(
          //     alignment: Alignment.centerLeft,
          //     child: Row(
          //       children: [
          //         CircleAvatar(
          //           radius: size.width * 0.15,
          //         ),
          //         SizedBox(width: 10),
          //         Column(
          //           children: [
          //             Text(
          //               'Miranda West',
          //               style: TextStyle(
          //                 color: Colors.black,
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.w600,
          //                 letterSpacing: 1,
          //               ),
          //             ),
          //             Text(
          //               'sabatminas@gmail.com',
          //               style: TextStyle(
          //                 color: Colors.black,
          //                 fontSize: 12,
          //                 // fontWeight: FontWeight.w600,
          //                 // letterSpacing: 1,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width,
              height: size.height * 0.3,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.15,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Miranda West',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    'sabatminas@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      // fontWeight: FontWeight.w600,
                      // letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            // color: Colors.green,
            width: size.width,
            // height: size.height * 0.4,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileButtonTile(
                  title: 'Edit Profile',
                  function: () {},
                  leadingIcon: Icon(Icons.edit),
                  trailingIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                ProfileButtonTile(
                  title: 'My Orders',
                  function: () {},
                  leadingIcon: Icon(Icons.shopping_bag_outlined),
                  trailingIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                ProfileButtonTile(
                  title: 'My Address',
                  function: () {},
                  leadingIcon: Icon(Icons.location_on_outlined),
                  trailingIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                ProfileButtonTile(
                  title: 'My Credit Cards',
                  function: () {},
                  leadingIcon: Icon(Icons.credit_card),
                  trailingIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                ProfileButtonTile(
                  title: 'Notifications',
                  function: () {},
                  leadingIcon: Icon(Icons.notifications_outlined),
                  trailingIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                ProfileButtonTile(
                  title: 'Change Password',
                  function: () {},
                  leadingIcon: Icon(Icons.lock_outline),
                  trailingIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                ProfileButtonTile(
                  title: 'Log Out',
                  function: () {},
                  leadingIcon: Icon(Icons.logout),
                  trailingIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
