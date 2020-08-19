import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:map20_Lesson1/screens/expandeddemo_screen.dart';
import 'package:map20_Lesson1/screens/fontdemo_screen.dart';
import 'package:map20_Lesson1/screens/imagedemo_screen.dart';
import 'package:map20_Lesson1/screens/namecardscreen.dart';
import 'package:map20_Lesson1/screens/rolcolumndemo_screen.dart';
import 'buttondemo_screen.dart';

class StartScreen extends StatelessWidget {

  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
//    this.context = context;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lesson1 App'),
      ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         RaisedButton(
           //style: Theme.of(context).texttheme.title
          child: Text('Image Demo'),
           onPressed: () => Navigator.pushNamed(context, ImageDemoScreen.routeName),
      ),
          RaisedButton.icon(
           onPressed: () => Navigator.pushNamed(context, ButtonDemoScreen.routeName),
            icon: Icon(Icons.ac_unit, color: Colors.red[900],),
            label: Text('Button demo'),
      ),
          RaisedButton.icon(
          onPressed: () => Navigator.pushNamed(context, FontDemoScreen.routeName),
            icon: Icon(Icons.font_download, color: Colors.red[900],),
            label: Text('Font demo'),
          ),
          RaisedButton.icon(
            onPressed: () => Navigator.pushNamed(context, RolColumnDemoScreen.routeName),
            icon: Icon(Icons.router, color: Colors.red[900],),
            label: Text('Rows/Col demo'),
          ),
            RaisedButton.icon(
              onPressed: () => Navigator.pushNamed(context, ExpandedDemoScreen.routeName),
              icon: Icon(Icons.router, color: Colors.red[900],),
              label: Text('Expanded demo'),
            ),
            RaisedButton.icon(
              onPressed: () => Navigator.pushNamed(context, NameCardScreen.routeName),
              icon: Icon(Icons.router, color: Colors.red[900],),
              label: Text('NameCard Screen'),
            ),
        ],
       ),
    );
  }
}