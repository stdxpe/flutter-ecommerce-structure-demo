import 'package:filledstacks_structure_deneme/components/single_text_button.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final String text;
  final String buttonText;
  final Function function;
  final Color textColour;
  final Color buttonColour;

  const AlreadyHaveAccount(
      {Key key,
      this.text,
      this.buttonText,
      this.function,
      this.textColour,
      this.buttonColour})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          text,
          style: TextStyle(
            color: textColour,
            fontSize: 13,
            // shadows: [kBoxShadowText],
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(width: 5),
        SingleTextButton(
          function: function,
          text: buttonText,
          colour: buttonColour,
          paddingHorizontal: 0,
          paddingVertical: 0,
          fontSize: 13,
        ),
      ],
    );
  }
}
