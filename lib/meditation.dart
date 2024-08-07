import 'package:flutter/material.dart';
import 'package:untitled20/self.dart';
import 'custom_page_route.dart';
import 'flower/Flower1.dart';
import 'home.dart';
import 'CustomBottomNavigationBar.dart';
import 'sleep.dart';
import 'track.dart';
import 'reduce.dart';

class meditation extends StatefulWidget {
  const meditation({super.key});
  static const String route = '/meditation';

  @override
  _meditationState createState() => _meditationState();
}

class _meditationState extends State<meditation> {
  int _currentIndex = 0;

  Widget _buildMeditationCard({
    required String title,
    required String description,
    required String imagePath,
    required String routeName,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          SlidePageRoute(page: _getPage(routeName)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: 155,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color(0xffE1BEE7),
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4F4351),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        SlidePageRoute(page: _getPage(routeName)),
                      );
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
                            fontWeight: FontWeight.w500,
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
              child: Image.asset(imagePath),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPage(String routeName) {
    switch (routeName) {
      case '/flower1':
        return Flower1();
      case '/self':
        return self();
      default:
        return meditation();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          SlidePageRoute(page: home()),);

                      },
                      child: Container(
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
                          ], // Background color of the circle
                        ),
                        child: Center(
                          child: Icon(
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
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffCBABD0),
                  borderRadius: BorderRadius.circular(35),
                ),
                height: 220,
                padding: const EdgeInsets.all(20.0),
                width: 396,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Start Meditate',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Regain your inner peace and be calm',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 40),
                              GestureDetector(
                                onTap: () {

                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.play_circle_fill,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '15 Listen',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 1),
                    Image.asset(
                      "assets/images/Frame 33877.png",
                      width: 200,
                      height: 228,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              _buildMeditationCard(
                title: 'Flower Meditation',
                description: 'Outdoor concentration meditation is flower.',
                imagePath: 'assets/images/Frame 33878.png',
                routeName: '/flower1',
              ),
              SizedBox(height: 5),
              _buildMeditationCard(
                title: 'Self Love',
                description: 'Blossoming through mindful practices.',
                imagePath: 'assets/images/Frame 33880.png',
                routeName: '/self',
              ),
              SizedBox(height: 5),
              _buildMeditationCard(
                title: 'In Balance',
                description: 'Harmonizing mind and body for inner peace.',
                imagePath: 'assets/images/pana 2.png',
                routeName: '/balance',
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
