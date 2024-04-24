import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:flutter/material.dart';

class ButtonShowroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EllipseButton(
                  height: 50,
                  width: size.width,
                  colour: Colors.grey[900],
                  textColour: Colors.white,
                  isBorderless: true,
                  isTextUsed: true,
                  text: 'Log In',
                  isContentUsed: false,
                ),
                SizedBox(height: 20),
                EllipseButton(
                  height: 50,
                  width: size.width,
                  colour: Colors.white,
                  textColour: Colors.black,
                  isBorderless: false,
                  isTextUsed: true,
                  text: 'Add to Bag',
                  isContentUsed: true,
                  content: Icon(Icons.shopping_basket, size: 20),
                ),
                SizedBox(height: 20),
                EllipseButton(
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
                  height: 50,
                  width: size.width,
                  colour: Colors.black,
                  textColour: Colors.white,
                  isBorderless: true,
                  isTextUsed: true,
                  text: 'Continue with Facebook',
                  isContentUsed: true,
                  content: Icon(Icons.lock_open, size: 17, color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    EllipseButton(
                      height: 50,
                      width: size.width * 0.3,
                      colour: Colors.white,
                      textColour: Colors.white,
                      isBorderless: false,
                      isTextUsed: false,
                      isContentUsed: true,
                      content: Icon(Icons.thumb_up_alt_outlined,
                          size: 17, color: Colors.black87),
                    ),
                    SizedBox(width: 20),
                    EllipseButton(
                      height: 50,
                      width: size.width * 0.3,
                      colour: Colors.white,
                      isBorderless: true,
                      isTextUsed: false,
                      isContentUsed: true,
                      content: Icon(Icons.thumb_down_alt_outlined,
                          size: 17, color: Colors.black87),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
