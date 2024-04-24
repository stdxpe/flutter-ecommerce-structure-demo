import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/views/wishlist_screen.dart';
import 'package:flutter/material.dart';

class WishListTabBarView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(thickness: 1.3);
              },
              // itemCount: 4,
              itemCount: imgList.length, physics: BouncingScrollPhysics(),
              // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              scrollDirection: Axis.vertical,
              // itemExtent: 100,
              itemBuilder: (context, index) {
                return Dismissible(
                  //TODO: Dismissible Confirmation Dialog
                  confirmDismiss: (direction) async {
                    return await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Delete Confirmation"),
                          actions: [
                            FlatButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text("Delete"),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text("Cancel"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: WishListItemListTile(index: index),
                  ),
                  key: Key(imgList[index]),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    padding: EdgeInsets.only(right: 30),
                    // width: 100,
                    color: Colors.red,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
