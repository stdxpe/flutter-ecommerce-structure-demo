import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/wishlist_board_grid.dart';
import 'package:filledstacks_structure_deneme/views/search_demo.dart';
import 'package:flutter/material.dart';

List wishListBoards = [
  WishListBoardGrid(title: 'Going out-out', list: imgList),
  WishListBoardGrid(title: 'Payday Treats', list: imgList),
  WishListBoardGrid(title: 'Friday Night Lights', list: imgList),
  WishListBoardGrid(title: 'Valencia Lines', list: imgList),
];

class WishListTabBarView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: wishListBoards.length,
        separatorBuilder: (context, index) => Divider(thickness: 1.1),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => Example01(),
                ),
              );
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.5),
              child: wishListBoards[index],
            ),
          );
        },
      ),
    );
  }
}
