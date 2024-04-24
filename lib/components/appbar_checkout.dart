import 'package:flutter/material.dart';

import 'constants.dart';

class AppBarCheckout extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight = 180;
  final PaymentStatus status;

  const AppBarCheckout({Key key, this.status = PaymentStatus.shipping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String titleFunction() {
      if (status == PaymentStatus.shipping) {
        return 'Shipping';
      } else if (status == PaymentStatus.payment) {
        return 'Payment';
      } else if (status == PaymentStatus.summary) {
        return 'Summary';
      } else if (status == PaymentStatus.success) {
        return '';
      }
    }

    String stepNumberFunction() {
      if (status == PaymentStatus.shipping) {
        return 'Step 1';
      } else if (status == PaymentStatus.payment) {
        return 'Step 2';
      } else if (status == PaymentStatus.summary) {
        return 'Step 3';
      } else if (status == PaymentStatus.success) {
        return '';
      }
    }

    List iconFunction() {
      List<Widget> icons = [];
      if (status == PaymentStatus.shipping) {
        icons.clear();
        icons = [
          Icon(
            Icons.location_on,
            color: Colors.black,
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Icon(Icons.credit_card_sharp, color: Colors.black38),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Icon(Icons.check_box, color: Colors.black38),
        ];
        return icons;
      } else if (status == PaymentStatus.payment) {
        icons.clear();
        icons = [
          Icon(
            Icons.location_on,
            color: Colors.black,
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Icon(Icons.credit_card_sharp, color: Colors.black),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black38,
            ),
          ),
          Icon(Icons.check_box, color: Colors.black38),
        ];
        return icons;
      } else if (status == PaymentStatus.summary) {
        icons.clear();
        icons = [
          Icon(
            Icons.location_on,
            color: Colors.black,
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Icon(Icons.credit_card_sharp, color: Colors.black),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Icon(Icons.check_box, color: Colors.black),
        ];
        return icons;
      } else if (status == PaymentStatus.success) {
        icons.clear();
        icons = [
          Icon(
            Icons.location_on,
            color: Colors.black,
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Icon(Icons.credit_card_sharp, color: Colors.black),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Icon(Icons.check_box, color: Colors.black),
        ];
        return icons;
      }
    }

    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(toolbarHeight),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: iconFunction(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                stepNumberFunction(),
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // Expanded(child: Container(color: Colors.red)),
              Text(
                titleFunction(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      toolbarHeight: toolbarHeight,
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_horiz_sharp,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {},
        ),
      ],
      title: Text(
        'Checkout',
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
