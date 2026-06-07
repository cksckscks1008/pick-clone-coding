import 'package:flutter/material.dart';

class Texted extends StatelessWidget {
  const Texted({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 24),
        Text('신청', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
      ],
    );
  }
}
