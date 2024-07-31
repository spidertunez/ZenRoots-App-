import 'package:flutter/material.dart';
import 'custom_page_route.dart';
import 'home.dart';
import 'CustomBottomNavigationBar.dart';

class meditation extends StatefulWidget {
  const meditation({super.key});
  static const String route = '/meditation';

  @override
  _MeditationState createState() => _MeditationState();
}

class _MeditationState extends State<meditation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 5,),
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        SlidePageRoute(page: home()),
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Color(0xffB498B9),
                      size: 60,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/Frame 33869.png'),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    height: 155,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade100,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Flower Meditation',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4F4351),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Outdoor concentration meditation is flower.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/flower1');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.play_circle_fill,
                                      color: Color(0xffB498B9),
                                      size: 35,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'See All',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffCBABD0),
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 130,
                          height: 130,
                          child: Image.asset('assets/images/Frame 33878.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    height: 155,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade100,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Self love',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4F4351),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Blossoming through mindful practices.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/self');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.play_circle_fill,
                                      color: Color(0xffB498B9),
                                      size: 35,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'See All',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffCBABD0),
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 130,
                          height: 130,
                          child: Image.asset('assets/images/Frame 33880.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    height: 155,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.purple.shade100,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'In Balance',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4F4351),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Harmonizing mind and body for inner peace.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/balance');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.play_circle_fill,
                                      color: Color(0xffB498B9),
                                      size: 35,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'See All',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffCBABD0),
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 130,
                          height: 130,
                          child: Image.asset('assets/images/pana 2.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
