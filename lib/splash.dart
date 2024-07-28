import 'package:flutter/material.dart';
import 'dart:async';
import '_b1.dart';
import 'custom_page_route.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  static const String route = '/splash';

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        SlidePageRoute(page: Onboard1()),
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xfffbf5fb),
      body: Center(
        child: Image.asset(
          'assets/images/Brown Boho Spa and Wellness Logo 2.png',
          width: 500,
          height: 500,
        ),
      ),
    );
  }
}
