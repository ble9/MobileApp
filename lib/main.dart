import 'package:Lesson2/screens/counterdemo_screen.dart';
import 'package:Lesson2/screens/formdemo_screen.dart';
import 'package:Lesson2/screens/listdemo_screen.dart';
import 'package:Lesson2/screens/profile_screen.dart';
import 'package:Lesson2/screens/profileedit_screen.dart';
import 'package:Lesson2/screens/start_screens.dart';
import 'package:Lesson2/screens/taponlistdemo_screen.dart';
import 'package:Lesson2/screens/userhome_screen.dart';
import 'package:Lesson2/screens/widgetlifecycle_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Lesson2App());
}

class Lesson2App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        CounterDemoScreen.routeName: (context) => CounterDemoScreen(),
        WidgetLifeCycleScreen.routeName: (context) => WidgetLifeCycleScreen(),
        ListDemoScreen.routeName: (context) => ListDemoScreen(),
        TapOnListScreen.routeName: (context) => TapOnListScreen(),
        //part2
        FormDemoScreen.routeName: (context) => FormDemoScreen(),
        UserHomeScreen.routeName: (context) => UserHomeScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),

      },
    );
  }
}
