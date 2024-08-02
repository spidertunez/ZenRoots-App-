import 'package:flutter/material.dart';
import 'package:untitled20/QURAN.dart';
import 'package:untitled20/community.dart';
import 'package:untitled20/comu2.dart';
import 'package:untitled20/favorites.dart';
import 'package:untitled20/forget.dart';
import 'package:untitled20/oceanwaves.dart';
import 'flower/Flower1.dart';
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
import 'sleep2.dart';
import 'nature.dart';
import 'notifications.dart';
import 'self.dart';
import 'Login.dart';
import 'sign.dart';
import 'package:untitled20/Login.dart';



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
        Flower1.route:(context)=> const Flower1(),
        self.route:(context)=> const self(),
        favorites.route:(context)=> const favorites(),
        notifications.route:(context)=> const notifications(),
        '/profile': (context) => profile(),
        sleep2.route:(context)=> const sleep2(),
        '/Quran':(context) => Quran(),
        '/nature':(context)=> nature(),
        '/community':(context)=> community(),
        '/comu2': (context ) => comu2(),
        '/login': (context) => Login(),
        '/sign': (context) => sign(),
        '/forget': (context) => forget(),
        '/ocean':  (context) => ocean(),



      },
    );

  }

}
