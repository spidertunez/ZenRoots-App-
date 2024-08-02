import 'sleep.dart';

import 'package:flutter/material.dart' ;
import 'package:untitled20/nature.dart';
import 'CustomBottomNavigationBar.dart';
import 'home.dart';
import 'custom_page_route.dart';
import 'QURAN.dart';

class sleep2 extends StatefulWidget {
  const sleep2({super.key});
  static const String route = '/sleep2' ;

  @override
  State<sleep2> createState() => _sleep2State();
}

class _sleep2State extends State<sleep2> {
  int _currentIndex =0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbf5fb),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [ SizedBox(width: 50,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      width: 55, // Smaller width of the circular button
                      height: 55, // Smaller height of the circular button
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Color of the shadow
                            spreadRadius: 5, // Amount by which the shadow spreads
                            blurRadius: 4, // Amount of blur
                            offset: Offset(0, 2), // Offset of the shadow (horizontal, vertical)
                          ),
                        ],// Background color of the circle
                      ),

                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              SlidePageRoute(page: sleep()),
                            );
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            color: Color(0xffB498B9), // Color of the arrow
                            size: 39, // Larger size of the arrow icon
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 150,)
                , Text('Sound Suggestions', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700,color: Color(0XFF4F4351)),)
                ,Text('Choose one to start your relaxing journey', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,color: Color(0XFFAEA2A2)),)
               , SizedBox(height: 30,),
                 Row(mainAxisAlignment: MainAxisAlignment.center,

                   children: [
                     GestureDetector(
                     onTap:() {Navigator.pushReplacement(
                       context,
                       SlidePageRoute(page: Quran()),
                     );;},
                     child: Column(
                       children: [
                         Image.asset('assets/images/Frame 34019.png'),
                         SizedBox(height: 10,),
                         Text('Quran',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff3F3541)),)
                       ],
                     )
                   ),
                     SizedBox(width: 30,),
                     GestureDetector(
                       onTap:() {Navigator.pushReplacement(
                         context,
                         SlidePageRoute(page: nature()),
                       );;},
                       child: Column(
                         children: [
                           Image.asset('assets/images/Frame 34020.png'),
                           SizedBox(height: 10,),
                           Text('Nature Sounds',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff3F3541)),)
                         ],
                       )
                     )



                   ],
                 )
              ],


          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    ),
    );
  }
}

