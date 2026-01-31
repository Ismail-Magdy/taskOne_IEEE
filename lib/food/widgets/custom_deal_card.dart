import 'package:flutter/material.dart';

class CustomDealCard extends StatelessWidget {
  const CustomDealCard({super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 210,
        height: 260,
        color: Colors.black,
        child: Stack(
          children: [
            // Image
            Positioned.fill(child: Image.asset(image, fit: BoxFit.cover)),
            // Black Shadow
            Positioned.fill(
              child: Container(color: Colors.black.withOpacity(0.4)),
            ),
            // Text
            Positioned(
              left: 12,
              bottom: 12,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
