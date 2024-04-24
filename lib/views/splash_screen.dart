import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Stack(
        // fit: StackFit.passthrough,
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Colors.white.withOpacity(0.2),
            child:
                Image.asset('assets/images/bg_girl.jpg', fit: BoxFit.fitHeight),
          ),
          // Container(
          //   height: size.height,
          //   width: size.width,
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //           begin: Alignment.topCenter,
          //           end: Alignment.bottomCenter,
          //           colors: [
          //         Colors.black.withOpacity(0),
          //         Colors.black.withOpacity(0.5),
          //       ])),
          // ),
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'FANCY',
                  style: TextStyle(
                    shadows: [kBoxShadowText],
                    color: Colors.white,
                    fontSize: 60,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Best Fashion Shopping App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    shadows: [kBoxShadowText],
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.7,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            top: 45,
            right: 10,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            // bottom: size.height * 0.08,
            bottom: 70,
            width: size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  EllipseButton(
                    function: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => OnboardingScreen(),
                        ),
                      );
                    },
                    height: 50,
                    width: size.width,
                    colour: Colors.white,
                    textColour: Colors.black,
                    isBorderless: true,
                    isTextUsed: true,
                    text: 'Sign Up with Email',
                    isContentUsed: true,
                    content: Icon(Icons.mail, size: 17, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  EllipseButton(
                    function: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => HomeScreen(),
                        ),
                      );
                    },
                    height: 50,
                    width: size.width,
                    colour: Color(0xFF22252A),
                    textColour: Colors.white,
                    isBorderless: true,
                    isTextUsed: true,
                    text: 'Continue with Facebook',
                    isContentUsed: true,
                    content:
                        Icon(Icons.lock_open, size: 17, color: Colors.white),
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
