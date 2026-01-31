import 'package:flutter/material.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({
    super.key,
    required this.circleColor,
    required this.iconColor,
    required this.icon,
  });

  final Color circleColor;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(color: circleColor, shape: .circle),
      child: Icon(icon, color: iconColor),
    );
  }
}
