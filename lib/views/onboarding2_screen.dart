import 'package:filledstacks_structure_deneme/components/already_have_account.dart';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Onboarding2Screen extends StatefulWidget {
  @override
  _Onboarding2ScreenState createState() => _Onboarding2ScreenState();
}

class _Onboarding2ScreenState extends State<Onboarding2Screen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: size.height * 0.35,
                  width: size.width * 0.65,
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        )
        .toList();

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Swipe to browse',
              style: TextStyle(
                // shadows: [kBoxShadowText],
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold,
                letterSpacing: 0.1,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Discover products easily by swiping from\none category to another',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                // shadows: [kBoxShadowText],
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.75,
                  enableInfiniteScroll: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  aspectRatio: 1.1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: imageSliders,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return _current == index
                    ? Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 11.0,
                            height: 11.0,
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(0, 0, 0, 0.9),
                            ),
                          ),
                          Container(
                            width: 10.0,
                            height: 10.0,
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(0, 0, 0, 0.9),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container(
                        width: 6.0,
                        height: 6.0,
                        margin: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 4,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      );
              }).toList(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: EllipseButton(
                function: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      //TODO: Shopping Screen
                      pageBuilder: (_, __, ___) => SignInScreen(),
                    ),
                  );
                },
                colour: Color(0xFF22252A),
                isBorderless: true,
                isContentUsed: false,
                isTextUsed: true,
                text: 'Start Shopping',
                textColour: Colors.white,
                width: size.width,
                height: 50,
              ),
            ),
            SizedBox(height: 30),
            AlreadyHaveAccount(
              text: 'Already have account?',
              textColour: Colors.black54,
              buttonColour: Colors.black87,
              buttonText: 'Sign In',
              function: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => SignInScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
