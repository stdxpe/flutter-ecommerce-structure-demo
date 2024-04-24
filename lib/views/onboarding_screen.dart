import 'dart:ui';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:flutter/material.dart';

import 'onboarding2_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Stack(
        children: [
          // Container(height: size.height, width: size.width),
          Container(
            height: size.height,
            width: size.width,
            color: Colors.white.withOpacity(0.2),
            child:
                Image.asset('assets/images/bg_girl.jpg', fit: BoxFit.fitHeight),
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                width: size.width * 0.5,
                height: size.height,
                decoration:
                    BoxDecoration(color: Colors.grey.shade200.withOpacity(0.3)),
              ),
            ),
          ),
          Positioned(
            top: 45,
            right: 10,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => Onboarding2Screen(),
                  ),
                );
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 30,
            child: Text(
              'FANCY',
              style: TextStyle(
                shadows: [kBoxShadowText],
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shop the\nmost modern\nessentials',
                    style: TextStyle(
                      shadows: [kBoxShadowText],
                      fontFamily: 'Helvetica',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 55,
            left: 30,
            child: Icon(
              Icons.more_horiz_rounded,
              size: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
