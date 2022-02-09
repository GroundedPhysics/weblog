import 'package:flutter/material.dart';
import 'package:weblog/constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kIconColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        titleTextStyle: const TextStyle(fontFamily: 'inconsolata', fontSize: 28),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[

          ],
        ),
      ),
    );
  }
}
