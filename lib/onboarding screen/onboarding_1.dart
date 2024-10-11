// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:oxy_boots/constants/constants.dart';
import 'package:oxy_boots/onboarding%20screen/onboarding_2.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: 80, left: 20, child: Image.asset('lib/assets/NIKE.png')),
          Positioned(
              top: 3, left: 15, child: Image.asset('lib/assets/Group 284.png')),
          Positioned(
              top: 20,
              right: 10,
              child: Image.asset('lib/assets/Group 285.png')),
          const Positioned(
              top: 400,
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  textAlign: TextAlign.start,
                  'Start Journey \nWith Nike',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
              )),
          const Positioned(
              bottom: 200,
              child: Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  textAlign: TextAlign.start,
                  'Smart, Gorgeous & Fashionable \n Collection',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              )),
          Positioned(
              bottom: 50,
              right: 36,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Onboarding2()));
                },
                child: Container(
                  height: 53,
                  width: 164,
                  decoration: BoxDecoration(
                      color: Constants().kColor,
                      borderRadius: BorderRadius.circular(39)),
                  child: const Center(
                    child: Text(
                      'Get started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
