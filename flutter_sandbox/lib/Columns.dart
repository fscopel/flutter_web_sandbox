import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/backgroudImage.dart';
import 'widgets/featuredImages.dart';
import 'widgets/floating_quick_access_bar.dart';

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChildScrollView(
        child: Container(height: 3000, child: HomePage2()),
      ),
    );
  }
}

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List isHovering = <bool>[false, false, false, false];
  List<Widget> rowElements = [];
  double screenWidth;
  double screenHeight;

  List<String> items = ['Destination', 'Dates', 'People', 'Experience'];
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny
  ];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    print('$screenWidth x $screenHeight');

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenWidth, 60),
        child: Container(
          padding: EdgeInsets.all(15),
          child: headerWidget(),
        ),
      ),
      body: Column(
        children: [
          Stack(children: [
            BackgroundImage(
                screenWidth: screenWidth, screenHeight: screenHeight),
            FloatingQuickBar(
                screenHeight: screenHeight, screenWidth: screenWidth),
          ]),
          FeaturedImages()
        ],
      ),
    );
  }

  Row headerWidget() {
    return Row(
      children: [
        Text('EXPLORE',
            style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextLink('Discover', 0, 22),
              SizedBox(
                width: screenWidth / 20,
              ),
              TextLink('Contact Us', 1, 22),
            ],
          ),
        ),
        TextLink('Sign up', 2, 20),
        SizedBox(
          width: screenWidth / 50,
        ),
        TextLink('Login', 3, 20),
      ],
    );
  }

  InkWell TextLink(String label, int index, double fontSize) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        print(value);
        setState(() {
          isHovering[index] = value;
        });
      },
      child: Text(label,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: isHovering[index] ? Colors.deepOrange : Colors.white)),
    );
  }
}
