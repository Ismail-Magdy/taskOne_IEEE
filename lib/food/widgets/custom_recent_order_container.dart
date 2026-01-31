import 'package:flutter/material.dart';

class CustomRecentOrderContainer extends StatelessWidget {
  const CustomRecentOrderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 10),

      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: .center,
        children: [
          // Icon
          Icon(Icons.history, color: Colors.orange, size: 30),
          //
          SizedBox(width: 12),
          // Text content
          Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .center,
            children: [
              Text(
                "Margherita",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Pizza",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Text(
                "Delivered",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                "yesterday",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          //
          SizedBox(width: 40),
          // Re-order
          Text(
            "Re-order",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
    //
  }
}
