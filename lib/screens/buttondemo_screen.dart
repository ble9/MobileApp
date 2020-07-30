import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  static const routeName = '/buttonDemoscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print ('floating action btn'),
        child: Icon(Icons.add),
        backgroundColor:  Colors.red[200],
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              onPressed: () => print('raised btn1 is pressed'),
              elevation: 10.0,
              padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
              textColor: Colors.white,
              color: Colors.blue[900],
              child: Text('Raised btn1')),
          RaisedButton.icon(
              onPressed: () => print('raised btn2 is pressed'),
              icon: Icon(Icons.book, color: Colors.red,),
              label: Text('Raised btn2'),
            ),
              FlatButton(child: Text('Flat btn'),
                onPressed:  () => print(' flat btn is pressed'),
                color: Colors.teal[900],
                splashColor: Colors.teal[100],
          ),
          IconButton(
              icon: Icon(Icons.broken_image, size: 70.0, color:Colors.blue),
          onPressed: () => print('Icon btn is pressed'),
          ),
         ],
      ),
    );
  }
}