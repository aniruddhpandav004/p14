import 'dart:async';

import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  double i = 0;
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, 'second')
    );
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState((){
        i = i +  1/3.5;
      });
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              FlutterLogo(
                size: 150,
              ),
              CircularProgressIndicator(
                color: Colors.blue,
                backgroundColor: Colors.blue.shade100,
                value: i,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
