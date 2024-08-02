import 'package:flutter/material.dart';
import 'package:untitled20/comu2.dart';
import 'CustomBottomNavigationBar.dart';
import 'custom_page_route.dart';

class profile extends StatefulWidget {
  const profile({super.key});
  static const String route = '/profile';

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int _currentIndex = 4;
  final List<Map<String, String>> recent = [
    {"image": "assets/images/9p.png", "title": "Rose Live Meditation", "time": "15 min"},
    {"image": "assets/images/Quran-5 2.png", "title": "Surah Al-Baqarah", "time": "2h 25min"},
    {"image": "assets/images/Ocean Waves Sound-2 2.png", "title": "Ocean Waves", "time": "15 min"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/Ellipse 2-3.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 80,
                  right: 165,
                  child: Image.asset(
                    'assets/images/1.png',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Laila Mohamed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff655568),
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'lm23@gmail.com',
                    style: TextStyle(
                      color: Color(0xff655568),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Not in a community yet',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        SlidePageRoute(page: comu2()),
                      );
                    },
                    child: Text(
                      'Tap here to join our community',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildStatColumn('11', 'followers'),
                      SizedBox(width: 70),
                      _buildStatColumn('20', 'following'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                'Your progress',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff655568),
                ),
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildProgressColumn('Duration', '45 min'),
                SizedBox(width: 24),
                _buildProgressColumn('Sessions', '221'),
                SizedBox(width: 24),
                _buildProgressColumn('Meditating', '6 hr 20 min'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                'Recently played',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff655568),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 270,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemCount: recent.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 1),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            recent[index]['image']!,
                            width: 150,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          recent[index]['title']!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          recent[index]['time']!,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff3F3541),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
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

  Widget _buildStatColumn(String number, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff655568),
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff655568),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildProgressColumn(String title, String value) {
    final valueParts = value.split(' ');

    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff655568),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: valueParts[0] + ' ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff655568),
                ),
              ),
              if (valueParts.length > 1)
                TextSpan(
                  text: valueParts[1],
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff655568),
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
