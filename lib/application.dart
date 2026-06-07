import 'package:flutter/material.dart';
import 'package:pick_clone/Components/_application/Text.dart';

class ApplicationScreen extends StatefulWidget {
  const ApplicationScreen({super.key});

  @override
  State<ApplicationScreen> createState() => _ApplicationScreenState();
}

class _ApplicationScreenState extends State<ApplicationScreen> {
  int? _openedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Texted(),
              const SizedBox(height: 30),
              _buildCard(0, Icons.restaurant, '주말 급식 신청'),
              const SizedBox(height: 25),
              _buildCard(1, Icons.people_alt, '교실 이동 신청'),
              const SizedBox(height: 25),
              _buildCard(2, Icons.check_circle, '외출 신청'),
              const SizedBox(height: 25),
              _buildCard(3, Icons.motorcycle_outlined, '조기 귀가 신청'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(int index, IconData icon, String text) {
    final bool isOpen = _openedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _openedIndex = isOpen ? null : index;
        });
      },
      child: Container(
        width: 355,
        height: isOpen ? 140 : 55,
        decoration: BoxDecoration(
          border: isOpen ? Border.all(color: const Color(0xFF7F4DFF)) : null,
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: isOpen
                  ? const Color(0xFF7F4DFF).withOpacity(0.3)
                  : Colors.grey.withOpacity(0.3),
              spreadRadius: isOpen ? 0.7 : 1,
              blurRadius: 0.2,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 13),
                  child: Icon(
                    icon,
                    size: isOpen ? 35 : 30,
                    color: const Color.fromRGBO(80, 80, 80, 0.8),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: isOpen ? 18 : 13, left: 20),
                  child: Text(
                    text,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ],
            ),
            if (isOpen) ...[
              const SizedBox(height: 5),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    '선생님께 미리 수락을 받은 뒤 신청합니다.',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    width: 315,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '신청하기',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}