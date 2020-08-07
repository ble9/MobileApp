import 'package:Lesson2/screens/widgetlifecycle_screen.dart';
import 'package:flutter/material.dart';

import 'counterdemo_screen.dart';


class StartScreen extends StatelessWidget {

static const routeName= '/startScreen';

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: Text ('Start Menu'),
      ),
        body: SingleChildScrollView(
          child:  Column(
            children:<Widget>[
              RaisedButton(
                onPressed: ()=> Navigator.pushNamed(context, CounterDemoScreen.routeName),
              child:Text('Counter Demo'),
              ),
              RaisedButton(
                onPressed: ()=> Navigator.pushNamed(context, WidgetLifeCycleScreen.routeName),
                child:Text('widgetlifecycle Demo'),
              )
            ]
          )
        ),
      );
  }
}