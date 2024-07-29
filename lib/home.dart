import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});
  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCBABD0),
      appBar: AppBar(
        backgroundColor: Color(0xffCBABD0),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Color(0xffCBABD0),
            width: double.infinity,
            height: 150,
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "What is your feeling today?",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Happy tapped');
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/Frame 33860.png'),
                            Text(
                              'Happy',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Sad tapped');
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/Frame 33859.png'),
                            Text(
                              'Sad',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Natural tapped');
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/Frame 33862.png'),
                            Text(
                              'Natural',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Angry tapped');
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/Frame 33861.png'),
                            Text(
                              'Angry',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white,
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
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfffbf5fb),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  topLeft: Radius.circular(80),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Choose your target",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4F4351),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: _buildGestureDetectors(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Color(0xfffbf5fb),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.grey,
            width: 2.2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30, color: Colors.grey),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group, size: 30, color: Colors.grey),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications, size: 30, color: Colors.grey),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite, size: 30, color: Colors.grey),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30, color: Colors.grey),
                label: '',
              ),
            ],
            currentIndex: 0,
            onTap: (index) {

              print('Selected index: $index');
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.purple,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildGestureDetectors() {

    final items = [
      {'text': 'Meditation', 'image': 'assets/images/amico 3.png'},
      {'text': 'Sleep improvement', 'image': 'assets/images/amico 2.png'},
      {'text': 'Track Mood', 'image': 'assets/images/bro.png'},
      {'text': 'Reduce stress', 'image': 'assets/images/bro 2.png'},
    ];

    return items.map((item) {
      return GestureDetector(
        onTap: () {

          print('${item['text']} tapped');
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: EdgeInsets.all(12),
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.purple,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  item['text']!,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xff4F4351)),
                ),
              ),
              SizedBox(width: 16),
              Image.asset(
                item['image']!,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}
