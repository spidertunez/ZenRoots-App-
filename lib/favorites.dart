import 'package:flutter/material.dart';
import 'CustomBottomNavigationBar.dart'; // Make sure this import path is correct

class favourites extends StatefulWidget {
  const favourites({Key? key}) : super(key: key);
  static const String route = '/favourites';

  @override
  _favouritesState createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
  int _currentIndex = 0; // Initialize the current index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        children: [
          // Your widgets go here
        ],
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
