import 'package:flutter/material.dart';

class ImageDemoScreen extends StatelessWidget {
  static const routeName = '/imageDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Demo'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              color: Colors.blue,
              height: 200.0,
              child: Image.network('https://m.media-amazon.com/images/I/71zD5Jc2+lL._AC_UY545_FMwebp_QL65_.jpg')),
          Icon(Icons.battery_alert, color: Colors.red),
          Container(
            height: 250.0,
            child: Image.network(
                'https://m.media-amazon.com/images/I/81WTA57HzhL._AC_UY545_FMwebp_QL65_.jpg'),
          ),
          Container(
            height: 200.0,
            color: Colors.teal,
            child: Image.asset('images/star.png'),
          )
        ],
      ),
    );
  }
}
