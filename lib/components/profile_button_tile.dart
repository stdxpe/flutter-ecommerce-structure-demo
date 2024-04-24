import 'package:flutter/material.dart';

class ProfileButtonTile extends StatelessWidget {
  final String title;
  final Icon leadingIcon;
  final Icon trailingIcon;
  final Function function;

  const ProfileButtonTile(
      {Key key, this.title, this.leadingIcon, this.trailingIcon, this.function})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 17.5),
        child: Stack(
          children: [
            Row(
              children: [
                leadingIcon,
                SizedBox(width: 12.5),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    // letterSpacing: 1,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: trailingIcon,
            ),
          ],
        ),
      ),
    );
  }
}
