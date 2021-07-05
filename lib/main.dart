import 'package:flutter/material.dart';
import 'package:kph_school/constants.dart';
import 'package:kph_school/screens/splash/spash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' KPH',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
       fontFamily:'Muli',
       textTheme: TextTheme(
         bodyText1: TextStyle(color: GtextColor),
         bodyText2: TextStyle(color: GtextColor)
         ),
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:SplahScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}
