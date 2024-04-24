import 'package:flutter/material.dart';

class EllipseButton extends StatelessWidget {
  final double height;
  final double width;
  final Widget content;
  final bool isContentUsed;
  final bool isTextUsed;
  final String text;
  final bool isBorderless;
  final Color colour;
  final Color textColour;
  final Function function;
  final double fontSize;
  final bool isShadowUsed;

  const EllipseButton({
    Key key,
    this.height,
    this.width,
    this.content,
    this.isBorderless,
    this.colour,
    this.textColour,
    this.function,
    this.isTextUsed,
    this.text,
    this.isContentUsed,
    this.fontSize = 14.5,
    this.isShadowUsed = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: colour,
          border: Border.all(
            width: 1.5,
            color:
                isBorderless ? Colors.transparent : Colors.black.withOpacity(1),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(isShadowUsed ? 0.35 : 0.1),
              spreadRadius: 0.1,
              blurRadius: 10,
              offset: Offset(0, 3.5),
            ),
          ],
        ),
        child: Center(
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isContentUsed ? content : Container(),
              (isContentUsed && isTextUsed != false)
                  ? SizedBox(width: 8)
                  : Container(),
              isTextUsed
                  ? Text(
                      text,
                      style: TextStyle(
                          color: textColour,
                          fontSize: fontSize,
                          fontWeight: FontWeight.w600),
                    )
                  : Container(),
            ],
          )),
        ),
      ),
    );
  }
}
