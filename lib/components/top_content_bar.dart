import 'package:flutter/material.dart';

import 'constants.dart';

class TopContentBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      // fit: StackFit.passthrough,
      children: [
        Image.asset(
          'assets/images/bg_girl.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          margin: const EdgeInsets.all(25.0),
          // color: Colors.red.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SPRING COLLECTION',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  shadows: [kBoxShadowText],
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.7,
                ),
                textAlign: TextAlign.center,
              ),
              Divider(
                thickness: 1,
                height: 20,
                endIndent: 200,
                color: Colors.white54,
              ),
              SizedBox(height: 10),
              Text(
                '20% OFF',
                style: TextStyle(
                  shadows: [kBoxShadowText],
                  color: Colors.white,
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'For Selected Spring Style',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  shadows: [kBoxShadowText],
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.7,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
