import 'package:flutter/material.dart';

class RolColumnDemoScreen extends StatelessWidget {
  static const routeName = '/fontDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows/Column Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.blue[200],
              padding: EdgeInsets.all(20.0,),
              child: Text('One'),
            ),
            Wrap(
              spacing:15.0,
              runSpacing: 8.0,
              children: <Widget> [
                Container(
                 child: Text('2-1 '),
                  color: Colors.blue[600],
                  padding: EdgeInsets.all(20.0,),
                ),
                Container(
                    child: Text('2-2'),
                    color: Colors.blue[600],
                  padding: EdgeInsets.all(20.0),
                ),
                Container(
                  child: Text('2-3'),
                  color: Colors.blue[600],
                  padding: EdgeInsets.all(20.0),
                ),
                Container(
                  child: Text('2-4'),
                  color: Colors.blue[600],
                  padding: EdgeInsets.all(20.0),
                ),
                Container(
                  child: Text('2-5'),
                  color: Colors.blue[600],
                  padding: EdgeInsets.all(20.0),
                ),
                Container(
                  child: Text('2-6'),
                  color: Colors.blue[600],
                  padding: EdgeInsets.all(20.0),
                ),
              ],
            ),
            Container(
              color: Colors.blue[900],
              padding: EdgeInsets.all(20.0),
              child:Text('Three'),
            ),
            Row(
              children: <Widget>[
                Expanded(child: Image.network('https://i.imgur.com/wY2YGDzl.jpg')),
                Expanded(child:Image.asset('images/star.png')),
            ],
        ),
      ],
      ),
      ),
    );
  }
}
