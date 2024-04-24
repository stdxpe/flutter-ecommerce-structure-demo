import 'dart:ui';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
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
                  height: size.height * 0.5,
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
                      'assets/images/bg_girl.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  height: size.height * 0.5,
                  width: size.width * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Winter',
                        style: TextStyle(
                          shadows: [kBoxShadowText],
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Collection',
                        style: TextStyle(
                          // shadows: [kBoxShadowText],
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        '20% Off Selected Brands',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          // shadows: [kBoxShadowText],
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                // Positioned(
                //   bottom: 0,
                //   // alignment: Alignment.bottomCenter,
                //   child: Container(
                //     height: 90,
                //     width: size.width * 0.75,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.only(
                //         bottomLeft: Radius.circular(15),
                //         bottomRight: Radius.circular(15),
                //       ),
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    // height: size.height * 0.5,
                    width: size.width * 0.75,
                    child: EllipseButton(
                      colour: Colors.grey[200],
                      isBorderless: true,
                      isContentUsed: false,
                      isTextUsed: true,
                      text: 'Check Out',
                      textColour: Colors.black,
                      height: 55,
                      width: size.width * 0.75,
                      function: () {
                        Navigator.pop(context);
                      },
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
