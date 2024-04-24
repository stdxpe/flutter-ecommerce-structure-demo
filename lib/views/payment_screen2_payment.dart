import 'package:carousel_slider/carousel_slider.dart';
import 'package:filledstacks_structure_deneme/components/appbar_checkout.dart';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/payment_screen3_summary.dart';
import 'package:flutter/material.dart';

class PaymentScreen2Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<Widget> creditCardSliders = creditCards
        .map(
          (item) => Container(
            height: size.width / 1.8,
            width: size.width,
            // color: Colors.red.withOpacity(0.5),
            child: Stack(
              children: [
                Container(
                  height: size.width / 1.8,
                  width: size.width,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(0),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/world_map_dots.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: size.width / 1.8,
                  width: size.width,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: Colors.grey,
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.white.withOpacity(0.6).withAlpha(100),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 35.0, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1123 1129 1287 4455',
                          style: TextStyle(
                            shadows: [kBoxShadowText],
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2.5,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Miranda West',
                          style: TextStyle(
                            shadows: [kBoxShadowText],
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.0, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '485',
                          style: TextStyle(
                            shadows: [kBoxShadowText],
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          '01/24',
                          style: TextStyle(
                            shadows: [kBoxShadowText],
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.only(top: 18.0, right: 18),
                    child: Text(
                      'VISA',
                      style: TextStyle(
                        shadows: [kBoxShadowText],
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        // fontStyle: FontStyle.italic,
                        // letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        .toList();

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBarCheckout(
        status: PaymentStatus.payment,
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: false,
                        enlargeCenterPage: true,
                        viewportFraction: 0.82,
                        enableInfiniteScroll: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        aspectRatio: 2,
                        onPageChanged: (index, reason) {}),
                    items: creditCardSliders,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Card Holder',
                            hintText: 'Emma Jones',
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Card Number',
                            hintText: '4500 0100 2593 4594',
                          ),
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Expiration Date',
                                  hintText: '01/24',
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              flex: 1,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'CVV',
                                  hintText: '483',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Checkbox(
                                activeColor: Colors.grey[900],
                                checkColor: Colors.white,
                                value: true,
                                onChanged: (bool) {},
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: Text(
                                'Save this credit card details',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  // shadows: [kBoxShadowText],
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.3,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container(color: Colors.red.withOpacity(0))),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 40.0,
                      top: 10,
                      right: 30,
                      left: 30,
                    ),
                    child: EllipseButton(
                      colour: Color(0xFF22252A),
                      isBorderless: true,
                      isContentUsed: false,
                      isTextUsed: true,
                      text: 'Continue',
                      textColour: Colors.white,
                      height: 55,
                      width: size.width,
                      function: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                PaymentScreen3Summary(),
                          ),
                        );
                      },
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
