import 'package:filledstacks_structure_deneme/components/appbar_checkout.dart';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/home_screen.dart';
import 'package:filledstacks_structure_deneme/views/payment_screen2_payment.dart';
import 'package:flutter/material.dart';

class PaymentScreen4Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarCheckout(
        status: PaymentStatus.success,
      ),
      body: Stack(
        children: [
          // Container(color: Colors.yellow.withOpacity(0.5)),
          // Expanded(child: Container(color: Colors.red.withOpacity(0.5))),
          Container(
            height: size.height,
            width: size.width,
            color: Colors.yellow.withOpacity(0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              // horizontal: 55.0,
              vertical: 40.0,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.50,
                width: size.width * 0.70,
                color: Colors.red.withOpacity(0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.withAlpha(35),
                      radius: 100,
                      child: Icon(
                        Icons.card_giftcard,
                        // Icons.check,

                        color: Colors.black,
                        size: 100,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Congrats!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Thank you for purchasing. Your order will be shipped in 2-4 working days.',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Expanded(child: Container(color: Colors.red)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40.0,
            right: 30,
            left: 30,
            child: EllipseButton(
              colour: Color(0xFF22252A),
              isBorderless: true,
              isContentUsed: false,
              isTextUsed: true,
              text: 'Continue Shopping',
              textColour: Colors.white,
              height: 55,
              width: size.width,
              function: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => HomeScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentSummaryItemListTile extends StatelessWidget {
  final int index;

  const PaymentSummaryItemListTile({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: size.width * 0.20,
                    width: size.width * 0.20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imgList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dot-Heritage Shoulder Jumper',
                          maxLines: 2,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '\$123.99',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Size: M  |  Color: Grey',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 15),
              // Divider(thickness: 1.3),
            ],
          ),
        ),
      ],
    );
  }
}
