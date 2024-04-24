import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WishListBoardGrid extends StatelessWidget {
  final String title;
  final List list;

  const WishListBoardGrid({Key key, this.title, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.5),
          child: Container(
            width: size.width,
            // height: size.height,
            height: size.height * 0.216,
            // color: Colors.red.withOpacity(0.5),
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 6,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) => Container(
                child: Image.asset(
                  list[list.length - (1 + index)],
                  fit: BoxFit.cover,
                ),
              ),
              staggeredTileBuilder: (int index) => StaggeredTile.count(
                index > 1 ? 1 : 2,
                index > 1 ? (index % 2 == 1 ? 1.25 : 1.75) : 3,
                // (index == 3) || (index == 5)
              ),
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
            ),
          ),
        ),
        SizedBox(height: 13),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          '${list.length} Items',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
