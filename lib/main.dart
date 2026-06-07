import 'package:flutter/material.dart';
import 'package:pick_clone/all.dart';
import 'package:pick_clone/application.dart';
import 'package:pick_clone/main_page.dart';
import 'package:pick_clone/Components/_main/BottomNavigationBar.dart';

void main() {
  runApp(
    const MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int _index = 0;
  late TabController _tabController;
  List<Widget> screens = [
    HomePagescreen(),
    Placeholder(),
    ApplicationScreen(),
    Placeholder(),
    allscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      appBar: _buildAppBarChildren(),
      bottomNavigationBar: MainBottomNavigationBar(
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
            _tabController.animateTo(index);
            }
          )
    );
  }

  PreferredSizeWidget _buildAppBarChildren() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(width: 35),
              Image.asset('assets/pick_logo.jpg', width: 65, height: 65),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.sunny, size: 30),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }

}
