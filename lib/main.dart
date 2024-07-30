import 'package:flutter/material.dart';
import 'package:untitled20/favorites.dart';
import 'package:untitled20/flower.dart';
import 'package:untitled20/group.dart';
import 'package:untitled20/home.dart';
import 'package:untitled20/meditation.dart';
import 'package:untitled20/profile.dart';
import 'package:untitled20/reduce.dart';
import 'package:untitled20/sleep.dart';
import 'splash.dart';
import '_b1.dart';
import '_b2.dart';
import '_b3.dart';
import 'track.dart';

import 'notifications.dart';
import 'self.dart';
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
        home.route:(context) => const home(),
        sleep.route:(context)=> const sleep(),
        meditation.route:(context)=> const meditation(),
        track.route:(context)=> const track(),
        reduce.route:(context)=> const reduce(),
        flower.route:(context)=> const flower(),
        self.route:(context)=> const self(),
        group.route:(context)=> const group(),
        favourites.route:(context)=> const favourites(),
        notifications.route:(context)=> const notifications(),
        profile.route:(context)=> const profile(),

      },
    );

  }

}
