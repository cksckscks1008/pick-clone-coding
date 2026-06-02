import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: TabView(),
    ),
  );
}

class TabView extends StatefulWidget {
  @override
  TabViewState createState() => _TabViewState();
  }


@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
body: SafeArea(
child: SingleChildScrollView(
child: Column(
  children: [
    _buildAppBarChildren(),
    const SizedBox(height: 15,),
    _buildText(),
    const SizedBox(height: 30,),
    _buildWeekendFood(),
    const SizedBox(height: 25,),
    _buildClass(),
    const SizedBox(height: 25,),
    _buildOutside(),
    const SizedBox(height: 25,),
    _buildGoingHome(),
  ],
          ),
        ),
      ),
  bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}


Widget _buildAppBarChildren() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          const SizedBox(width: 24),
          Image.asset('assets/pick_logo.jpg', width: 65, height: 65),
        ],
      ),
      const Row(
        children: [
          Icon(Icons.sunny, size: 30),
          const SizedBox(width: 20),
        ],
      ),
    ],
  );
}

Widget _buildText() {
  return Row(
    children: [
      const SizedBox(width: 24,),
      Text('신청', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),)
    ],
  );
}


Widget _buildBottomNavigationBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    selectedItemColor: Color(0xFF7F4DFF),
    unselectedItemColor: Colors.blueGrey,
    currentIndex: 2,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: '홈'),
      BottomNavigationBarItem(icon: Icon(Icons.restaurant, color: Colors.black), label: '급식'),
      BottomNavigationBarItem(icon: Icon(Icons.check_circle, color: Color(0xFF7F4DFF)), label: '신청'),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_month, color: Colors.black), label: '일정'),
      BottomNavigationBarItem(icon: Icon(Icons.menu, color: Colors.black), label: '전체'),
    ],
  );
}

Widget _buildWeekendFood() {
  return
      Container(
    width: 355,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 0.2,
        )
      ],
    ),
    child: Row(
      children: [
        const SizedBox(width: 20,),
        Icon(Icons.restaurant, size: 30, color: Color.fromRGBO(80, 80, 80, 0.8),),
        const SizedBox(width: 20,),
        Text('주말 급식 신청', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), )
      ],
    ),
  );
}

Widget _buildClass() {
  return
    Container(
      width: 355,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 0.2,
          )
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 20,),
          Icon(Icons.people_alt, size: 30, color: Color.fromRGBO(80, 80, 80, 0.8),),
          const SizedBox(width: 20,),
          Text('교실 이동 신청', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), )
        ],
      ),
    );
}

Widget _buildOutside() {
  return
    Container(
      width: 355,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 0.2,
          )
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 20,),
          Icon(Icons.check_circle, size: 30, color: Color.fromRGBO(80, 80, 80, 0.8),),
          const SizedBox(width: 20,),
          Text('외출 신청', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), )
        ],
      ),
    );
}

Widget _buildGoingHome() {
  return
    Container(
      width: 355,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 0.2,
          )
        ],
      ),
      child: Row(
        children: [
          const SizedBox(width: 20,),
          Icon(Icons.motorcycle_outlined, size: 30, color: Color.fromRGBO(80, 80, 80, 0.8),),
          const SizedBox(width: 20,),
          Text('조기 귀가 신청', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), )
        ],
      ),
    );
}