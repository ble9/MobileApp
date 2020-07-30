import 'package:flutter/material.dart';

class ExpandedDemoScreen extends StatelessWidget {
  static const routeName = '/expandedDemoScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget Demo'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red[200],
              child: Text('A'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('images/star.png'),
          ),
          Expanded(
            flex: 2,
            child: Text('B'),
          ),
            ],
          ),
          Expanded(
          flex: 2,
          child: Container(
          color: Colors.red[300],
          child: Text('AA'),
        ),
      ),
      Expanded(
      child: Container(
        color: Colors.teal[300],
        child: Text('BB'),
      ),
      ),
    ],
    ),
    );
  }
}