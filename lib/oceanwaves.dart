import 'package:flutter/material.dart';
import 'custom_page_route.dart';
import 'home.dart';
import 'nature.dart';

class ocean extends StatefulWidget {
  const ocean({super.key});
  static const String route = '/ocean';

  @override
  State<ocean> createState() => _oceanState();
}

class _oceanState extends State<ocean> {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/nm.png',
      'title': 'Title 1',
      'subtitle': 'Subtitle 1',
    },
    {
      'image': 'assets/images/Sound-5 2.png',
      'title': 'Title 2',
      'subtitle': 'Subtitle 2',
    },
    {
      'image': 'assets/images/Sound-7.png',
      'title': 'Title 3',
      'subtitle': 'Subtitle 3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              SlidePageRoute(page: nature()),
                            );
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            color: Color(0xffB498B9),
                            size: 39,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Image.asset('assets/images/nm.png'),
              SizedBox(height: 30),
              Image.asset('assets/images/play sound.png'),
              Text(
                'All sounds',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 430,
                height: 130,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [ SizedBox(width: 20,),
                      Image.asset('assets/images/ss.png'),
                      SizedBox(width: 20,),


                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ SizedBox(height: 20,),
                            Text(
                              'Waterfall',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '10 min',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

              )

             , Container(
                width: 430,
                height: 130,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [ SizedBox(width: 20,),
                      Image.asset('assets/images/ll.png'),
                      SizedBox(width: 20,),
                      // Removed Image.asset

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ SizedBox(height: 20,),
                            Text(
                              'Rain',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '10 min',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

              )

              , Container(
                width: 430,
                height: 130,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [ SizedBox(width: 20,),
                      Image.asset('assets/images/hh.png'),
                      SizedBox(width: 20,),
                      // Removed Image.asset

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ SizedBox(height: 20,),
                            Text(
                              'Rustling Leaves',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '10 min',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

              )


            ],
          ),
        ),
      ),
    );
  }
}
