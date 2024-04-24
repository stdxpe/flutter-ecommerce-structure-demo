import 'package:filledstacks_structure_deneme/components/constants.dart';
import 'package:filledstacks_structure_deneme/components/ellipse_button.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/rendering.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // physics: ClampingScrollPhysics(),
        physics: BouncingScrollPhysics(),
        controller: _controller,
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
            floating: false,
            pinned: true,
            // snap: true,
            elevation: 50,
            // automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            actions: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
            // flexibleSpace: Container(color: Colors.red),
            flexibleSpace: _MyAppSpace(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                200,
                (index) => Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('text $index'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      // CustomScrollView(
      //   slivers: <Widget>[
      //     SliverAppBar(
      //       pinned: true,
      //       expandedHeight: 200,
      //       centerTitle: true,
      //       bottom: AppBar(
      //         title: Container(
      //           height: 45,
      //           child: TextField(
      //             decoration: InputDecoration(
      //               contentPadding: EdgeInsets.only(top: 5, left: 15),
      //               suffixIcon: IconButton(
      //                 icon: Icon(Icons.search),
      //                 onPressed: () {
      //                   print('sesarch');
      //                 },
      //               ),
      //               filled: true,
      //               fillColor: Colors.white,
      //               hintText: "What are you looking for ?",
      //               border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(5),
      //               ),
      //             ),
      //           ),
      //         ),
      //         elevation: 20,
      //       ),
      //     ),
      //     // SliverGrid(
      //     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     //     crossAxisCount: 4,
      //     //   ),
      //     //   delegate: SliverChildBuilderDelegate(
      //     //     (BuildContext context, int index) {
      //     //       return Container(
      //     //         height: 100,
      //     //         child: Center(
      //     //           child: Text('eee'),
      //     //         ),
      //     //       );
      //     //     },
      //     //   ),
      //     // ),
      //   ],
      // ),
    );
  }
}

class _MyAppSpace extends StatelessWidget {
  const _MyAppSpace({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaExtent = settings.maxExtent - settings.minExtent;
        final t =
            (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                .clamp(0.0, 1.0) as double;
        final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

        return Opacity(
          opacity: opacity,
          child: Column(
            children: [
              Flexible(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/bg_girl.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     'Title',
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 26.0,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}

class TopContentBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      fit: StackFit.passthrough,
      children: [
        Image.asset(
          'assets/images/bg_girl.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          margin: const EdgeInsets.all(25.0),
          // color: Colors.red.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SPRING COLLECTION',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  shadows: [kBoxShadowText],
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.7,
                ),
                textAlign: TextAlign.center,
              ),
              Divider(
                thickness: 1,
                height: 20,
                endIndent: 200,
                color: Colors.white54,
              ),
              SizedBox(height: 10),
              Flexible(
                flex: 15,
                child: Text(
                  '20% OFF',
                  style: TextStyle(
                    shadows: [kBoxShadowText],
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Flexible(
                flex: 1,
                child: Text(
                  'For Selected Spring Style',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    shadows: [kBoxShadowText],
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.7,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: EllipseButton(
            colour: Colors.black,
            isBorderless: true,
            isContentUsed: false,
            isTextUsed: true,
            text: 'Shop Now',
            height: 50,
            width: 100,
            textColour: Colors.white,
          ),
        ),
      ],
    );
  }
}
