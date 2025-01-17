import 'package:flutter/material.dart';
import 'package:front_end/pages/user_authentication.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lojinha',
      theme: ThemeData(
        primaryColor: Color(0xff170337),
        primaryColorLight: Color(0xff821E64),
        accentColor: Color(0xffDC2B50),
        highlightColor: Color(0xffFA5A0A),
        backgroundColor: Color(0xffF5F5F5),
        textSelectionColor: Color(0xFF000000), // Nao esta na paleta
      ),
      home: Scaffold(
        body: AnimatedSplashScreen(
          splash: Image(
            image: AssetImage(
              "images/ratinho.png",
            ),
            color: Color(0xff170337),
          ),
          splashIconSize: 250,
          pageTransitionType: PageTransitionType.fade,
          duration: 1000,
          splashTransition: SplashTransition.fadeTransition,
          animationDuration: Duration(milliseconds: 1500),
          backgroundColor: Color(0xffDC2B50),
          nextScreen: UserAuthentication(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
