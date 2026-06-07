import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pick_clone/Components/_all/Floating.dart';
import 'package:pick_clone/Components/_all/Settingbox.dart';
import 'package:pick_clone/Components/_mainpage/Profile.dart';

class allscreen extends StatelessWidget {
  const allscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                MainProfile(
                    school: '대덕소프트웨어마이스터고',
                    gradeClass: '1학년 2반 16번',
                    name: '홍성찬'),
                const SizedBox(height: 30,),
                Floating(text: '도움말'),
                const SizedBox(height: 20,),
                Settingbox(
                    icon: CupertinoIcons.smiley_fill,
                    text: '자습 감독 선생님 확인',
                    color: Colors.deepPurpleAccent),
                const SizedBox(height: 30,),
                Settingbox(
                    icon: CupertinoIcons.speaker_2_fill,
                    text: '공지사항',
                    color: Colors.deepPurpleAccent),
                const SizedBox(height: 30,),
                Settingbox(
                    icon: Icons.bug_report,
                    text: '버그 제보',
                    color: Colors.deepPurpleAccent),
                const SizedBox(height: 50,),
                Floating(text: '설정'),
                const SizedBox(height: 20,),
                Settingbox(
                    icon: CupertinoIcons.slider_horizontal_3,
                    text: '커스텀',
                    color: Colors.deepPurpleAccent),
                const SizedBox(height: 50,),
                Floating(text: '계정'),
                const SizedBox(height: 20,),
                Settingbox(
                    icon: Icons.person,
                    text: '마이 페이지',
                    color: Colors.deepPurpleAccent),
                const SizedBox(height: 30,),
                Settingbox(
                    icon: CupertinoIcons.lock_rotation,
                    text: '비밀번호 변경',
                    color: Colors.deepPurpleAccent),
                const SizedBox(height: 30,),
                Settingbox(
                    icon: Icons.logout_rounded,
                    text: '로그아웃',
                    color: Colors.red),
                const SizedBox(height: 40,),
              ],
            ),
          ),
      ),
    );
  }
}
