import 'package:flutter/material.dart';

class Settingbox extends StatelessWidget {
  IconData icon;
  Color color;
  String text;

  Settingbox({
    super.key,
    required this.icon,
    required this.color,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
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
