import 'package:flutter/material.dart';
import 'splash.dart';
import '_b1.dart';
import '_b2.dart';
import '_b3.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner:  false,
      initialRoute: Splash.route,
      routes: {
        Splash.route: (context) => const Splash(),
        Onboard1.route: (context) => const Onboard1(),
        Onboard2.route: (context) => const Onboard2(),
        onboard3.route: (context) => const onboard3(),
      },
    );
  }
}
