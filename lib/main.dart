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
        onboard1.route: (context) => const onboard1(),
        onboard2.route: (context) => const onboard2(),
        onboard3.route: (context) => const onboard3(),
      },
    );
  }
}
