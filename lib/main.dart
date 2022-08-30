
import 'package:flutter/material.dart';
import 'package:p14/myclass.dart';
import 'package:p14/speshScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => SpleshScreen(),
        'second' : (context) => Myclass(),
      },
    ),
  );
}
