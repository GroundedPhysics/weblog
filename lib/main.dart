import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weblog/constant.dart';
import 'pages/bottom_navbar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    // take statusbar styling 
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        fontFamily: 'appFont',
        primaryColor: kHomeBGColor,
      ),
      debugShowCheckedModeBanner: false,
      home:  BottomNavBar(title: 'ButtonNavBar',),
    );
  }
}
