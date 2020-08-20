import 'package:Lesson2/screens/formdemo_screen.dart';
import 'package:Lesson2/screens/listdemo_screen.dart';
import 'package:Lesson2/screens/profile_screen.dart';
import 'package:Lesson2/screens/taponlistdemo_screen.dart';
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
              ),
              RaisedButton(
                onPressed: ()=> Navigator.pushNamed(context, ListDemoScreen.routeName),
                child:Text('List Demo'),
              ),
              RaisedButton(
                onPressed: ()=> Navigator.pushNamed(context, TapOnListScreen.routeName),
                child:Text('Tap On List Demo'),
              ),
              //part2
              RaisedButton(
                onPressed: ()=> Navigator.pushNamed(context, FormDemoScreen.routeName),
                child:Text('Form  Demo'),
              ),
              RaisedButton(
                onPressed: ()=> Navigator.pushNamed(context, ProfileScreen.routeName),
                child:Text('Profile Edit Demo'),
              )
            ]
          )
        ),
      );
  }
}