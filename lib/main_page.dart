import 'package:flutter/material.dart';
import 'package:pick_clone/Components/_mainpage/Food.dart';
import 'package:pick_clone/Components/_mainpage/Foodlist.dart';
import 'package:pick_clone/Components/_mainpage/Profile.dart';
import 'package:pick_clone/Components/_mainpage/TeacherBox.dart';

class HomePagescreen extends StatelessWidget {
  const HomePagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              MainProfile(
                  school: "대덕소프트웨어마이스터고",
                  gradeClass: "1학년 2반 16번",
                  name: "홍성찬"),
              const SizedBox(height: 30),
              Food(),
              const SizedBox(height: 60),
              Foodlist(
                  time: "조식",
                  foods: ["누룽지탕", "볶은김치", "수제핫도그", "월요구르트", "황금향"],
                  cal: 656.9),
              const SizedBox(height: 30),
              Foodlist(
                  time: "중식",
                  foods: ["녹두밥", "잔치국수", "진미채고추장조림", "닭장각오븐구이", "배추겉절이"],
                  cal: 1117.0),
              const SizedBox(height: 30),
              Foodlist(
                  time: "석식",
                  foods: ["찹쌀밥", "소고기무국", "불향오징어볶음", "콘치즈오븐구이", "백김치", "청귤주스"],
                  cal: 728.5),
              const SizedBox(height: 30),
              Teacherbox(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}