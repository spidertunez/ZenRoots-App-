import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xfffbf5fb),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.purple.shade100,
          width: 2.2,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30, color: currentIndex == 0 ? Colors.purple : Colors.grey[400]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group, size: 30, color: currentIndex == 1 ? Colors.purple : Colors.grey[400]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 30, color: currentIndex == 2 ? Colors.purple : Colors.grey[400]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 30, color: currentIndex == 3 ? Colors.purple : Colors.grey[400]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30, color: currentIndex == 4 ? Colors.purple : Colors.grey[400]),
              label: '',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) {

            onTap(index);
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
