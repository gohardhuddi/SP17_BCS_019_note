import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tizeno/screens/main_page.dart';
import 'package:flutter/rendering.dart';
import 'splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: "Roboto",
        iconTheme: IconThemeData(color: Colors.blue),
        textTheme: GoogleFonts.montserratTextTheme(),
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.black),
        ),
        primarySwatch: Colors.blue,
      ),
      home: ScrollConfiguration(
        behavior: MyBehavior(),
        child:splashscreen(),
        //MainPage(),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
