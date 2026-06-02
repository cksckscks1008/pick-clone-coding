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

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBarChildren(),
              const SizedBox(height: 30),
              _buildProfile("대덕소프트웨어마이스터고", "1학년 2반 16번", "홍성찬"),
              const SizedBox(height: 30),
              _buildFood(),
              const SizedBox(height: 60),
              _buildFoodList("조식", <String>["누룽지탕", "볶은김치", "수제핫도그", "월요구르트", "황금향"], 656.9),
              const SizedBox(height: 30),
              _buildFoodList("중식", <String>["녹두밥", "잔치국수", "진미채고추장조림", "닭장각오븐구이", "배추겉절이"], 1117.0),
              const SizedBox(height: 30),
              _buildFoodList("석식", <String>["찹쌀밥", "소고기무국", "불향오징어볶음", "콘치즈오븐구이", "백김치", "청귤주스"], 728.5),
              const SizedBox(height: 30),
              _buildTeacherBox(),
              const SizedBox(height: 30),
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
          const SizedBox(width: 10),
        ],
      ),
    ],
  );
}

Widget _buildProfile(String school, String gradeClass, String name) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(width: 24),
      const CircleAvatar(
        radius: 42,
        backgroundColor: Color(0xFFB493FF),
        child: Icon(
          Icons.person,
          size: 55,
          color: Colors.white,
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Text(
              school,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 6),
            Text(
              "$gradeClass $name",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildFood() {
  return const Row(
    children: [
      SizedBox(width: 24),
      Text(
        "오늘의 급식",
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget _buildFoodList(String time, List<String> foods, double cal) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 70,
          child: Text(
            time,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color(0xFF7F4DFF),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: foods.map((food) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Text(
                food,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            );
          }).toList(),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Color(0xFF7F4DFF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "$cal Kcal",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
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
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0xFF7F4DFF)), label: '홈'),
      BottomNavigationBarItem(icon: Icon(Icons.restaurant, color: Colors.black), activeIcon: Icon(Icons.restaurant, color: Colors.purpleAccent), label: '급식'),
      BottomNavigationBarItem(icon: Icon(Icons.check_circle, color: Colors.black), label: '신청'),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_month, color: Colors.black), label: '일정'),
      BottomNavigationBarItem(icon: Icon(Icons.menu, color: Colors.black), label: '전체'),
    ],
  );
}

Widget _buildTeacherBox() {
  return Center(
    child: Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(
        top: 30.0,
        left: 25.0,
        right: 16.0,
        bottom: 20.0,
      ),
      width: 350,
      height: 170,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(242, 242, 242, 1),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Positioned(
                child: Text(
                  '오늘의 자습 감독 선생님 입니다',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(60, 60, 60, 0.6),
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                top: 60,
                child: Text(
                  '2층',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const Positioned(
                left: 32,
                top: 60,
                child: Text(
                  '김진희 선생님',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 10,
                child: Image.asset(
                  'assets/calender.jpg',
                  scale: 2.5,
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}