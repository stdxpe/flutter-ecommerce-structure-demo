import 'package:filledstacks_structure_deneme/components/appbar_checkout.dart';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/payment_screen2_payment.dart';
import 'package:flutter/material.dart';

class PaymentScreen1Shipping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // double screenHeightMinusAppBarMinusStatusBar =
    //     MediaQuery.of(context).size.height -
    //         AppBarCheckout().preferredSize.height -
    //         MediaQuery.of(context).padding.top;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBarCheckout(
        status: PaymentStatus.shipping,
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Emma Jones',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: '217 E Bando Street',
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'City',
                            hintText: 'New York',
                            suffixIcon: Icon(Icons.keyboard_arrow_down),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Zip Code',
                            hintText: '10002',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'County',
                      hintText: 'United States',
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Shipping Method',
                      hintText: 'Standart Shipping (+ \$4.85)',
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                  SizedBox(height: 10),
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
                          'Save for faster checkouts next time',
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
                  Expanded(child: Container(color: Colors.red.withOpacity(0))),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.0, top: 10),
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
                                PaymentScreen2Payment(),
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
