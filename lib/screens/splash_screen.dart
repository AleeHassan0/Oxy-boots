import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oxy_boots/onboarding%20screen/onboarding_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => OnBoarding1())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height * 1,
      width: size.width * 1,
      child: Image.asset(
        '/Users/apple/oxy_boots/.dart_tool/assets/pexels-joaquin-carfagna-3131171-20252246.png',
        fit: BoxFit.fill,
      ),
    ));
  }
}
