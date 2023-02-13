import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: const Color(0xFFB7B7B7),
      selectedItemColor: const Color(0xFFFE8C68),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'Destination',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notificafion',
        ),
      ],
    );
  }
}
