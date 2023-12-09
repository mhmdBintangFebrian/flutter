import 'package:flutter/material.dart';
import 'package:flutter_ass/pages/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SplashScreen(),
      
    );
  }
}
