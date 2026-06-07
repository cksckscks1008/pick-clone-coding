import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MainBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedItemColor: const Color(0xFF7F4DFF),
      unselectedItemColor: Colors.blueGrey,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: '급식'),
        BottomNavigationBarItem(icon: Icon(Icons.check_circle), label: '신청'),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: '일정'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: '전체'),
      ],
    );
  }
}