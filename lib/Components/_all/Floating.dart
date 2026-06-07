import 'package:flutter/material.dart';

class Floating extends StatelessWidget {
  String text;
   Floating({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 30,),
        Text('$text', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(80, 80, 80, 0.7)),
        ),
      ],
    );
  }
}
