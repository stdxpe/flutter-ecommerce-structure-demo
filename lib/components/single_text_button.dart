import 'package:flutter/material.dart';

class SingleTextButton extends StatelessWidget {
  final double paddingHorizontal;
  final double paddingVertical;
  final String text;
  final Color colour;
  final double fontSize;
  final Function function;

  const SingleTextButton(
      {Key key,
      this.paddingHorizontal,
      this.paddingVertical,
      this.text,
      this.colour,
      this.fontSize,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal, vertical: paddingVertical),
        // color: Colors.red.withOpacity(0.7),
        child: Text(
          text,
          style: TextStyle(
            color: colour,
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            // letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }
}
