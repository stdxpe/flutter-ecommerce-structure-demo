import 'dart:ui';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/components/single_text_button.dart';
import 'package:filledstacks_structure_deneme/views/home_screen.dart';
import 'package:filledstacks_structure_deneme/views/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen2.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: size.height * 0.2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter the Code\nto Verify Your Phone',
                    style: TextStyle(
                      // shadows: [kBoxShadowText],
                      color: Colors.black,
                      fontSize: 25, height: 1.15,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'We have sent you an SMS with a code \nto the +852 9984 5894',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      ClipRRect(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      ClipRRect(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      ClipRRect(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => HomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Send a new code',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
