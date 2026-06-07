import 'package:flutter/material.dart';
import 'package:pick_clone/main.dart';

class Foodlist extends StatelessWidget {
  String time;
  List<String> foods;
  double cal;

  Foodlist({
    super.key,
    required this.time,
    required this.foods,
    required this.cal
  });

  @override
  Widget build(BuildContext context) {
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
}
