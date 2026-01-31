import 'package:flutter/material.dart';

class CustomRestaurantCard extends StatelessWidget {
  const CustomRestaurantCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.rate,
  });
  final String image;
  final String title;
  final String subTitle;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(image, width: 100, height: 100, fit: .cover),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: .bold,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Text(
                      rate,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 5),
        Divider(),
        SizedBox(height: 5),
      ],
    );
  }
}
