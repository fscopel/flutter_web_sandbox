import 'package:flutter/material.dart';

class FloatingQuickBar extends StatelessWidget {
  const FloatingQuickBar({
    Key key,
    @required this.screenHeight,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.42,
            left: screenWidth / 5,
            right: screenWidth / 5),
        child: Card(
          shadowColor: Colors.black,
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
              top: screenHeight / 50,
              bottom: screenHeight / 50,
            ),
            child: SizedBox(
              height: 25,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Destination'),
                    VerticalDivider(
                      thickness: 3,
                    ),
                    Text('Cities'),
                    VerticalDivider(
                      thickness: 3,
                    ),
                    Text('Restaurants'),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
