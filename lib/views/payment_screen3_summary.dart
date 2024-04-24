import 'package:filledstacks_structure_deneme/components/appbar_checkout.dart';
import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:filledstacks_structure_deneme/views/payment_screen2_payment.dart';
import 'package:filledstacks_structure_deneme/views/payment_screen4_success.dart';
import 'package:flutter/material.dart';

class PaymentScreen3Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBarCheckout(
        status: PaymentStatus.summary,
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            primary: true,
            physics: BouncingScrollPhysics(),
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return PaymentSummaryItemListTile(index: index);
                },
              ),
              SizedBox(height: 10),
              Divider(thickness: 1.5),
              SizedBox(height: 7),
              Text(
                'Shipping Address',
                maxLines: 2,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 7),
              Text(
                '217 E Bando Street 10002\nNew York\nUnited States',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: 7),
              Text(
                'Payment',
                maxLines: 2,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 7),
              Text(
                '**** **** **** 4765',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: 120),
              // Expanded(child: Container(color: Colors.red.withOpacity(0.5))),
            ],
          ),
          // Container(color: Colors.yellow.withOpacity(0.5)),
          // Expanded(child: Container(color: Colors.red.withOpacity(0.5))),
          Positioned(
            bottom: 0,
            child: Container(
              // color: Colors.grey.withAlpha(30),
              // color: Colors.red.withOpacity(0.5),
              height: 120,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.grey,
                gradient: LinearGradient(
                  colors: [
                    // Colors.red.withOpacity(1),
                    // Colors.grey.withAlpha(100),
                    // Colors.white.withOpacity(0),
                    Colors.white.withOpacity(0.9),
                    Colors.white.withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
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
              text: 'Pay \$246.99',
              textColour: Colors.white,
              height: 55,
              width: size.width,
              function: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => PaymentScreen4Success(),
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
