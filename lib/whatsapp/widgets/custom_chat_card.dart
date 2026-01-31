import 'package:flutter/material.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/profile_image.jpeg"),
        radius: 25,
      ),
      title: Text(
        "Ismail Magdy",
        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: .bold),
      ),
      subtitle: Text("السلام عليكم , إزيك يهندسة؟"),
      trailing: Text(
        "10:30 PM",
        style: TextStyle(fontSize: 11, fontWeight: .bold),
      ),
    );
  }
}
