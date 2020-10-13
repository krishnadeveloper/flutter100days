import 'package:flutter/material.dart';

import 'day001.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 001',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto"
      ),
      home: Day001(),
    );
  }
}
