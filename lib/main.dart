import 'package:day003/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/starterscreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Roboto"
    ),
    home: HomeScreen(),
  ));
}

