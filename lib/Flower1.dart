import 'package:flutter/material.dart';
import 'package:untitled20/meditation.dart';
import 'custom_page_route.dart';


class Flower1 extends StatefulWidget {
  const Flower1({super.key});
  static const String route = '/flower1';

  @override
  State<Flower1> createState() => _Flower1State();
}

class _Flower1State extends State<Flower1> {

  final TextEditingController _controller = TextEditingController();


  final List<Map<String, String>> _items = [
    {"image": "assets/images/Frame 33919.png", "title": "Rose Meditation", "rate": "4.5"},
    {"image": "assets/images/Frame 33919-2.png", "title": "Rose Meditation", "rate": "4.4"},
    {"image": "assets/images/Frame 33918.png", "title": "Daisy Meditation", "rate": "4.0"},
    {"image": "assets/images/Frame 33919-3.png", "title": "Lilly Meditation", "rate": "4.4"},
    {"image": "assets/images/Frame 33918.png", "title": "Rose Meditation", "rate": "4.4"},
    {"image": "assets/images/Frame 33919.png", "title": "Daisy Meditation", "rate": "4.4"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row for the back button
           IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    SlidePageRoute(page: meditation()),
                  );
                },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Color(0xffB498B9),
                  size: 60,
                ),
              ),

            // Row for the images
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/hand.png",
                    width: 140,
                    height: 140,
                  ),
                  Image.asset(
                    "assets/images/Rose-2.png",
                    width: 140,
                    height: 140,
                  ),
                ],
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Flower Meditation',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        color: Color(0xff3F3541),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Discover inner peace and relaxation with ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff3F3541),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Flower ',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffB498B9),
                            ),
                          ),
                          TextSpan(
                            text: 'Meditation',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3F3541),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey[400]!, // Border color
                              width: 1, // Border width
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey[400]!, // Border color
                              width: 1, // Border width
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black87,
                              width: 2,
                            ),
                          ),
                          hintText: ' Search your session',
                          hintStyle: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: _items.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    _items[index]['image']!,
                                    width: 150,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  _items[index]['title']!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.access_alarm, color: Colors.black87, size: 20),
                                    SizedBox(width: 5),
                                    Text(
                                      '25 minutes',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff3F3541),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.yellow, size: 20),
                                        Text(
                                          _items[index]['rate']!,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff3F3541),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                TextButton(
                                  onPressed: () {

                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                                    foregroundColor: Colors.white, backgroundColor: Color(0xffB498B9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text('Start'),
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
            ),
          ],
        ),
      ),
    );
  }
}
