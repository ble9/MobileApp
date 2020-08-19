import 'package:flutter/material.dart';
import 'package:map20_Lesson1/screens/buttondemo_screen.dart';
import 'package:map20_Lesson1/screens/expandeddemo_screen.dart';
import 'package:map20_Lesson1/screens/fontdemo_screen.dart';
import 'package:map20_Lesson1/screens/imagedemo_screen.dart';
import 'package:map20_Lesson1/screens/namecardscreen.dart';
import 'package:map20_Lesson1/screens/rolcolumndemo_screen.dart';
import 'package:map20_Lesson1/screens/startscreen.dart';

void main(){
  runApp(Lesson1App());
}

class Lesson1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue[800],
        accentColor:Colors.greenAccent,
        fontFamily: 'Monospace',
//        textTheme: TextTheme(
//          headline1: TextStyle(fontSize: 70.0), title: TextStyle(fontSize: 30.0), body1: TextStyle(fontSize: 18.0), body2:TextStyle(fontSize: 14.0),
//        ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        ImageDemoScreen.routeName: (context) => ImageDemoScreen (),
        ButtonDemoScreen.routeName: (context) => ButtonDemoScreen (),
        FontDemoScreen.routeName: (context) => FontDemoScreen (),
        RolColumnDemoScreen.routeName: (context) => RolColumnDemoScreen (),
        ExpandedDemoScreen.routeName: (context) => ExpandedDemoScreen (),
        NameCardScreen.routeName: (context) => NameCardScreen (),

      },
    );
  }

}