import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox/Columns.dart';

void main() => runApp(WebPage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var lorenIpsum =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec felis efficitur, pellentesque erat in, blandit turpis. Nulla tristique elit vitae libero condimentum vestibulum. Sed nec felis ligula. Nam ultrices accumsan libero, vitae semper ex interdum non. Mauris vestibulum nisl vitae odio bibendum scelerisque. Nunc a viverra eros, sit amet vehicula massa. Phasellus pretium ornare vestibulum. Duis tellus dolor, ultricies in felis in, vulputate fringilla velit.';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing sand box',
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: 850,
              child: Column(
                children: [
                  Text(
                    'Some text goes here',
                    style: TextStyle(fontSize: 35),
                  ),
                  Column(
                    children: [
                      Text('Title goes here'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Text(
                            lorenIpsum,
                          )),
                          Expanded(
                              child: Text(
                            lorenIpsum,
                          )),
                          Expanded(
                              child: Text(
                            lorenIpsum,
                          )),
                        ],
                      ),
                      Container(
                        height: 200,
                        width: 300,
                        child: ListView(
                          children: [
                            Text(lorenIpsum),
                            Divider(),
                            Text(lorenIpsum),
                            Divider(),
                            Text(lorenIpsum),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        color: Colors.blueGrey,
                        child: Container(
                            height: 20,
                            color: Colors.red,
                            alignment: Alignment.bottomCenter,
                            child: Text('Bottom center aligned widget'))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
