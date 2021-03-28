import 'package:flutter/material.dart';

class FeaturedImages extends StatelessWidget {
  const FeaturedImages({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 1500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                'Unique wildlife tours & destinations',
                style: TextStyle(fontSize: 22),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Wrap(
              spacing: 150,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'lib/images/animals.jpg',
                        fit: BoxFit.cover,
                        height: 320,
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text('Animal Encounters',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'lib/images/photography.jpg',
                        fit: BoxFit.cover,
                        height: 320,
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text('Photography Tours',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'lib/images/trekking.jpg',
                        fit: BoxFit.cover,
                        height: 320,
                        width: 400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text('Amazing Views',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
