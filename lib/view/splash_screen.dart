import 'package:flutter/material.dart';
import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:splashscreen/splashscreen.dart';

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 1,
      navigateAfterSeconds: MyHomePage(),
      image: new Image.asset('src/image/welcomeScreen.png'),
      backgroundColor: Colors.orange[50],
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 250,
      loaderColor: Colors.white,
    );
  }
}
