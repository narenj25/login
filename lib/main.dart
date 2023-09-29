import 'package:flutter/material.dart';
import 'package:fm/constants.dart';
import 'package:fm/loginscreen.dart';

void main() {
  runApp(initalscreen());
}

class initalscreen extends StatelessWidget {
  const initalscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginscreen(),
      title: appName,
      debugShowCheckedModeBanner: false,
    );
  }
}
