import 'package:flutter/material.dart';
import 'package:sampleexercise/main.dart';
import 'package:sampleexercise/view/home/home_view.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashView extends StatefulWidget {
  SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      routeName: "/",
      seconds: 8,
      backgroundColor: Colors.white,
      image: Image.asset("asset/splash/splash.gif"),
      loaderColor: Colors.black,
      photoSize: 150,
      navigateAfterSeconds: HomeView(),
    );
  }
}
