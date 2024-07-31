import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'favorites.dart';
import 'notifications.dart';
import 'group.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
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
              icon: Icon(
                Icons.home,
                size: 30,
                color: currentIndex == 0 ? Color(0xffCBABD0) : Colors.grey[400],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
                size: 30,
                color: currentIndex == 1 ?Color(0xffCBABD0) : Colors.grey[400],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
                color: currentIndex == 2 ?Color(0xffCBABD0): Colors.grey[400],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: currentIndex == 3 ? Color(0xffCBABD0): Colors.grey[400],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: currentIndex == 4 ? Color(0xffCBABD0): Colors.grey[400],
              ),
              label: '',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
                break;
              case 1:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => group()),
                );
                break;
              case 2:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => notifications()),
                );
                break;
              case 3:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => favourites()),
                );
                break;
              case 4:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
                break;
              default:
                break;
            }
            onTap(index);
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff3F3541),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
