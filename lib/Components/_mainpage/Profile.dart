import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pick_clone/main.dart';

class MainProfile extends StatelessWidget {
  final String school;
  final String gradeClass;
  final String name;


  const MainProfile({
    super.key,
    required this.school,
    required this.gradeClass,
    required this.name,
});

  @override
  Widget build(BuildContext context) {
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
}
