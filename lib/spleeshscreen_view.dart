import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/screens/inro_view.dart';
import 'home/home_view.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = const Duration(seconds: 2);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_){
            return IntroPage();
          }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: Image.asset("images/splash.png",
        width: 230.0,
        height: 130.0,
        ),
      ),
    );
  }
}