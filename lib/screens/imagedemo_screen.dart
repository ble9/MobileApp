import 'package:flutter/material.dart';

class ImageDemoScreen extends StatelessWidget {

  static const routeName = '/imageDemoScreen';
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title : Text('Image Demo'),
        ),
        body: ListView(
        children: <Widget>[
          Container(
              color: Colors.blue,
              height: 200.0,
              child: Image.network('https://www.lafilm.edu/wp-content/uploads/2017/08/Dance-Show.jpg')),
              Icon(Icons.battery_alert, color : Colors.red),
            Container(
                height: 200.0,
                child: Image.network('https://www.edmsauce.com/wp-content/uploads/2017/09/edm-2.jpg'),
            ),
          Container(
              height: 200.0,
              color: Colors.teal,
              child: Image.asset('images/star.png'),
          ),
        ],

        ),
      );
  }

}