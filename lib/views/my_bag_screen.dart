import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/payment_screen1_shipping.dart';
import 'package:flutter/material.dart';

class MyBagScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_horiz_sharp,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
        title: Text(
          'My Bag',
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
      ),
      body: Column(
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
                  child: BagItemListTile(index: index),
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
          Container(
            color: Colors.grey.withAlpha(30),
            height: size.height * 0.3,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Promo Code',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'springsale',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        // letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 1.3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '\$123.99',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: EllipseButton(
                    colour: Color(0xFF22252A),
                    isBorderless: true,
                    isContentUsed: false,
                    isTextUsed: true,
                    text: 'Continue',
                    textColour: Colors.white,
                    height: 55,
                    width: size.width,
                    function: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => PaymentScreen1Shipping(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Container(
          //   height: size.width * 0.25,
          //   width: size.width * 0.25,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(15),
          //     color: Colors.grey,
          //   ),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(10),
          //     child: Image.asset(
          //       'assets/images/bg_girl.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class BagItemListTile extends StatelessWidget {
  final int index;

  const BagItemListTile({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withAlpha(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 17,
                        ),
                        onTap: () {},
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 17,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: size.width * 0.20,
                        width: size.width * 0.20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
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
                        height: size.width * 0.20,
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
                            SizedBox(height: 15),
                            Text(
                              'Size: M  |  Color: Grey',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
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
        ),
      ],
    );
  }
}
