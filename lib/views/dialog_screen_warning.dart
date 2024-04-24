import 'dart:ui';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:flutter/material.dart';

class DialogScreenWarning extends StatelessWidget {
  final String image;

  const DialogScreenWarning({Key key, @required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 6.0,
                sigmaY: 6.0,
              ),
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ),
          // BGBlurFilter(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.red.withOpacity(0),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.55,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 15,
                        blurRadius: 20,
                        offset: Offset(0, 3.5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Container(
                //   height: size.height * 0.5,
                //   width: size.width * 0.75,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 35.0),
                //         child: Text(
                //           'Success! You\'ve added this item to your bag.',
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 18,
                //             // shadows: [kBoxShadowText],
                //             fontWeight: FontWeight.w600,
                //             letterSpacing: 0.2,
                //           ),
                //           textAlign: TextAlign.center,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Positioned(
                  bottom: 0,
                  // alignment: Alignment.bottomCenter,
                  child: Container(
                    height: size.height * 0.25,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    // height: size.height * 0.5,
                    width: size.width * 0.75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'Success! You\'ve added this item to your bag.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              // shadows: [kBoxShadowText],
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 15),
                        EllipseButton(
                          colour: Color(0xFF22252A),
                          isBorderless: true,
                          isContentUsed: false,
                          isTextUsed: true,
                          text: 'Check Out',
                          textColour: Colors.white,
                          height: 55,
                          width: size.width * 0.75,
                          function: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(height: 10),
                        EllipseButton(
                          colour: Colors.grey[200],
                          isBorderless: true,
                          isContentUsed: false,
                          isTextUsed: true,
                          text: 'Continue Shopping',
                          textColour: Colors.black,
                          height: 55,
                          width: size.width * 0.75,
                          function: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.close_sharp,
                            color: Colors.black,
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
        ],
      ),
    );
  }
}
