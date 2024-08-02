import 'package:flutter/material.dart';
import 'CustomBottomNavigationBar.dart';
import 'custom_page_route.dart';
import 'home.dart';
import 'sleep2.dart';

class sleep extends StatefulWidget {
  const sleep({super.key});
  static const String route = '/sleep';

  @override
  State<sleep> createState() => _sleepState();
}

class _sleepState extends State<sleep> {
  int _currentIndex = 0;

  Widget _buildSleepCard({
    required String title,
    required String description,
    required String imagePath,
    required String routeName,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 184,
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
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4F4351),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      SlidePageRoute(page: sleep2()),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.play_circle_fill,
                        color: Color(0xffB498B9),
                        size: 35,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        ' Listen',
                        style: const TextStyle(
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
          const SizedBox(width: 10),
          SizedBox(
            width: 150,
            height: 150,
            child: Image.asset(imagePath),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [ SizedBox(width: 50,),
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
                        ],// Background color of the circle
                      ),

                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              SlidePageRoute(page: home()),
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
              Container(
                decoration: BoxDecoration(
                  color:  Color(0xffCBABD0),
                  borderRadius: BorderRadius.circular(35),
                ),
                height: 177,
                padding: const EdgeInsets.all(20.0),
                width: 396,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( width: 155,
                          child:  Column(  crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                              'Improve your sleep',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                               color:  Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Limit screens and relax',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color :Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {},
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
                                      color:Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],


                          )
                        )
                      ],
                    ),

                   Image.asset(
                            "assets/images/Frame 33877-2.png",
                            width: 200,
                            height: 208,
                            fit: BoxFit.cover,
                          ),


                  ],
                ),
              ),
              const SizedBox(height: 10),
              _buildSleepCard(
                title: 'Mindfulness Exercise',
                description: 'Preparing for restful sleep..',
                imagePath: 'assets/images/Frame 33878-2.png',
                routeName: '/sleep2',
              ),
              const SizedBox(height: 5),
              _buildSleepCard(
                title: 'Sound Suggestions',
                description: 'Nature sounds with mood monitoring features.',
                imagePath: 'assets/images/pana 3.png',
                routeName: '/sleep2',
              ),
              const SizedBox(height: 5),
              _buildSleepCard(
                title: 'Bedtime Story',
                description: 'Gentle tales to soothe and ease into sleep.',
                imagePath: 'assets/images/amico 4.png',
                routeName: '/sleep2',
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
