import 'dart:ui';
import 'package:flutter/material.dart';

class BGBlurFilter extends StatelessWidget {
  final double _sigmaX = 5.0; // from 0-10
  final double _sigmaY = 5.0; // from 0-10
  final double _opacity = 0.2; // from 0-1.0

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: _sigmaX,
          sigmaY: _sigmaY,
        ),
        child: Container(
          color: Colors.black54.withOpacity(_opacity),
        ),
      ),
    );
  }
}

//  ClipRect(
//             child: BackdropFilter(
//               filter: ImageFilter.blur(
//                 sigmaX: 10.0,
//                 sigmaY: 10.0,
//               ),
//               child: Container(
//                 width: size.width * 0.5,
//                 height: size.height,
//                 decoration:
//                     BoxDecoration(color: Colors.grey.shade200.withOpacity(0.3)),
//               ),
//             ),
//           ),
