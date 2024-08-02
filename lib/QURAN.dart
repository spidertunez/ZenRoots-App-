import 'package:flutter/material.dart';
import 'package:untitled20/sleep2.dart';
import 'custom_page_route.dart';
import 'sleep.dart';


class Quran extends StatefulWidget {
  const Quran({super.key});
  static String route = '/Quran' ;

  @override
  State<Quran> createState() => _QuranState();

}

class _QuranState extends State<Quran> {

  Widget _buildQuranCard({
    required String title,
    required String description,
    required String time,
    required String imagePath,
    required String routeName,
  }) {
    return Stack(
      children: [

        Positioned.fill(
          child: ClipRRect(    borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Overlay content
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          width: 380,
          height: 130,
          decoration: BoxDecoration(
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
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
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
                              color: Colors
                                  .white,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbf5fb),
      body: SafeArea(
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
            Container( margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/mosque.png',
                    height: 180, // Adjust the height as needed
                    width: 350, // Adjust the width as needed
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search, color: Color(
                            0xff948E8B)),
                        suffixIcon: Icon(Icons.mic, color: Color(0xff948E8B)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey[400]!,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.black87,
                            width: 2,
                          ),
                        ),
                        hintText: 'Search your favorite surah',
                        hintStyle: TextStyle(color: Color(0xff948E8B)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: ListView( padding: EdgeInsets.only(left: 10, right: 10),

                children: [
                  _buildQuranCard(
                    title: 'Al-Fatiha',
                    description: 'Meccan',
                    time: '3 min',
                    imagePath: 'assets/images/Quran-4.png',
                    routeName: '/sleep2',
                  ),
                  const SizedBox(height: 5),
                  _buildQuranCard(
                    title: 'Al-Baqarah',
                    description: 'Medinan',
                    time: '2h 25 min',
                    imagePath: 'assets/images/Quran-3.png',
                    routeName: '/sleep2',
                  ),
                  const SizedBox(height: 5),
                  _buildQuranCard(
                    title: 'Al-Imran',
                    description: 'Medinan',
                    time: '1h 20 min',
                    imagePath: 'assets/images/Quran-4.png',
                    routeName: '/sleep2',
                  ),
                  const SizedBox(height: 5),
                  _buildQuranCard(
                    title: 'An-Nisa',
                    description: 'Medinan',
                    time: '1h 10 min',
                    imagePath: 'assets/images/Quran-3.png',
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