import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_ass/pages/home.dart';


class SplashScreen extends StatefulWidget{

  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),

      );
    });
  }

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 148, 194, 232),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Icon(
              Icons.flutter_dash,
              size: 100.0,
              color: Colors.white,
            ),

            SizedBox(height: 24.0,),

            Text("Star-mart",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}