import 'package:flutter/material.dart';
import '_b2.dart'; // Ensure you import onboard2
import '_b3.dart'; // Ensure you import onboard3
import 'custom_page_route.dart'; // Import the custom page route

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});
  static const String route = '/onboard1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                SlidePageRoute(page: onboard3()),
              );
            },
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xfffbf5fb),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: 20, right: 22),
            child: Column(
              children: [
                Image.asset("assets/images/amico.png"),
                Text(
                  "Welcome to ZenRoots!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Here, you find peace of mind and tranquility through gardening and healthy habits",
                  style: TextStyle(
                    fontSize: 17.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 210,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    SizedBox(width: 130,),
                    Container(
                      width: 40,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xffE1BEE7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xffE1BEE7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 90,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      SlidePageRoute(page: Onboard2()),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
