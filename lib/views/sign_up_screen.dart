import 'dart:ui';
import 'package:filledstacks_structure_deneme/components/already_have_account.dart';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:flutter/material.dart';

import 'forgot_password_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE7DED7),
      body: Stack(
        children: [
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
                sigmaX: 30.0,
                sigmaY: 30.0,
              ),
              child: Container(
                width: size.width,
                height: size.height,
                decoration:
                    BoxDecoration(color: Colors.grey.shade200.withOpacity(0.3)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create\nyour account',
                    style: TextStyle(
                      shadows: [kBoxShadowText],
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.1,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: size.height * 0.3,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                          flex: 1,
                          child: Checkbox(
                              activeColor: Colors.white,
                              checkColor: Colors.green,
                              value: true,
                              onChanged: (bool) {})),
                      Flexible(
                        flex: 3,
                        child: Text(
                          'By signing up the agree to the terms of services and privacy policy.',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            // shadows: [kBoxShadowText],
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  EllipseButton(
                    isTextUsed: true,
                    isBorderless: true,
                    isContentUsed: false,
                    colour: Color(0xFF22252A),
                    height: 50,
                    text: 'Sign Up',
                    textColour: Colors.white,
                    width: size.width,
                    function: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => ForgotPasswordScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 30),
                  AlreadyHaveAccount(
                    text: 'Already have an account?',
                    buttonText: 'Sign In',
                    textColour: Colors.white70,
                    buttonColour: Colors.white,
                    function: () {},
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EllipseButton(
                        isTextUsed: false,
                        isBorderless: true,
                        isContentUsed: true,
                        colour: Colors.black,
                        height: 50,
                        content:
                            Icon(Icons.wrong_location, color: Colors.white),
                        width: size.width * 0.4,
                        function: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) =>
                                  ForgotPasswordScreen(),
                            ),
                          );
                        },
                      ),
                      EllipseButton(
                        isTextUsed: false,
                        isBorderless: true,
                        isContentUsed: true,
                        colour: Colors.blue,
                        height: 50,
                        content: Icon(Icons.shield, color: Colors.white),
                        width: size.width * 0.4,
                        function: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
