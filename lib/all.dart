import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class allscreen extends StatelessWidget {
  const allscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                _buildProfile('대덕소프트웨어마이스터고', '1학년 2반 16번', '홍성찬'),
                const SizedBox(height: 30,),
                _floatingText('도움말'),
                const SizedBox(height: 20,),
                _settingBox(CupertinoIcons.smiley_fill, '자습 감독 선생님 확인', Colors.deepPurpleAccent),
                const SizedBox(height: 30,),
                _settingBox(CupertinoIcons.speaker_2_fill, '공지사항', Colors.deepPurpleAccent),
                const SizedBox(height: 30,),
                _settingBox(Icons.bug_report, '버그 제보', Colors.deepPurpleAccent),
                const SizedBox(height: 50,),
                _floatingText('설정'),
                const SizedBox(height: 20,),
                _settingBox(CupertinoIcons.slider_horizontal_3, '커스텀', Colors.deepPurpleAccent),
                const SizedBox(height: 50,),
                _floatingText('계정'),
                const SizedBox(height: 20,),
                _settingBox(Icons.person, '마이 페이지', Colors.deepPurpleAccent),
                const SizedBox(height: 30,),
                _settingBox(CupertinoIcons.lock_rotation, '비밀번호 변경', Colors.deepPurpleAccent),
                const SizedBox(height: 30,),
                _settingBox(Icons.logout_rounded, '로그아웃', Colors.red),
                const SizedBox(height: 40,),
              ],
            ),
          ),
      ),
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

  Widget _floatingText(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 30,),
        Text('$text', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(80, 80, 80, 0.7)),
        ),
        ],
    );
  }

  Widget _settingBox(IconData icon, String text, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 35,),
        Icon(icon, size: 33, color: color,),
        const SizedBox(width: 20,),
        Text('$text', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),)
      ],
    );
  }

}
