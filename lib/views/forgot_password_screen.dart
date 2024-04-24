import 'dart:ui';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/verification_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
                    'Forgot Password?',
                    style: TextStyle(
                      // shadows: [kBoxShadowText],
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'If you need help resetting your password,\nwe can help by sending you a link to reset it.',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.3,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 70,
                    width: size.width,
                    color: Colors.blueGrey.withOpacity(0.1),
                  ),
                  SizedBox(height: 30),
                  EllipseButton(
                    isTextUsed: true,
                    isBorderless: true,
                    isContentUsed: false,
                    colour: Color(0xFF22252A),
                    height: 50,
                    text: 'Send',
                    textColour: Colors.white,
                    width: size.width,
                    function: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => VerificationScreen(),
                        ),
                      );
                    },
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
