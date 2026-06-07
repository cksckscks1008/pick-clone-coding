import 'package:flutter/material.dart';
import 'package:pick_clone/main.dart';

class Teacherbox extends StatelessWidget {
  const Teacherbox({super.key});

  @override
  Widget build(BuildContext context) {
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
                  top: 0,
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
}
