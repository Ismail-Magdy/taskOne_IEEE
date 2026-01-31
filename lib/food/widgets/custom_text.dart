import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: .centerLeft,
      child: Text(text, style: TextStyle(fontSize: 22, fontWeight: .bold)),
    );
  }
}
