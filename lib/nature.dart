import 'package:flutter/material.dart';
import 'package:untitled20/oceanwaves.dart';
import 'package:untitled20/sleep2.dart';
import 'comu2.dart';
import 'custom_page_route.dart';
import 'sleep.dart';

class nature extends StatefulWidget {
  const nature({super.key});
  static String route = '/nature';

  @override
  State<nature> createState() => _natureState();
}

class _natureState extends State<nature> {

  Widget _buildQuranCard({
    required String title,
    required String time,
    required String imagePath,
    required String routeName,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          SlidePageRoute(page: _getPageForRoute(routeName)),
        );
      },
      child: Stack(
        children: [
          // Background image with circular border
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay content
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 380,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

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
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.play_circle_fill,
                            color: Color(0xffB498B9),
                            size: 35,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            time,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Color(0xffB498B9),
                            size: 35,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getPageForRoute(String routeName) {
    switch (routeName) {
      case '/ocean':
        return ocean();
      case '/nature':
        return nature();

      default:
        return nature();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbf5fb),
      body: SafeArea(
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
                            SlidePageRoute(page: comu2()),
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
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/Man searching music with phone.png',
                        height: 190,
                        width: 230,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Container(
                    width: 380,
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search, color: Color(0xff948E8B)),
                        suffixIcon: Icon(Icons.mic, color: Color(0xff948E8B)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        hintText: 'Search sounds you relax with',
                        hintStyle: TextStyle(color: Color(0xff948E8B)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 10, right: 10),
                children: [
                  _buildQuranCard(
                    title: 'Ocean Waves',
                    time: '15 min',
                    imagePath: 'assets/images/Ocean Waves Sound.png',
                    routeName: '/ocean',
                  ),
                  const SizedBox(height: 10),
                  _buildQuranCard(
                    title: 'Waterfall',
                    time: '10 min',
                    imagePath: 'assets/images/Sound.png',
                    routeName: '/sleep2',
                  ),
                  const SizedBox(height: 10),
                  _buildQuranCard(
                    title: 'Wind',
                    time: '12 min',
                    imagePath: 'assets/images/Sound-2.png',
                    routeName: '/sleep2',
                  ),
                  const SizedBox(height: 10),
                  _buildQuranCard(
                    title: 'Birdsong',
                    time: '15 min',
                    imagePath: 'assets/images/Sound-3.png',
                    routeName: '/sleep2',
                  ),
                  const SizedBox(height: 10),
                  _buildQuranCard(
                    title: 'Rain',
                    time: '18 min',
                    imagePath: 'assets/images/Sound-4.png',
                    routeName: '/sleep2',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
