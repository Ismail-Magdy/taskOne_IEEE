import 'package:first_project/card/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profile Card Challenge"),
        centerTitle: true,
      ),
      //
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: .circular(10),
                boxShadow: [BoxShadow(blurRadius: 4)],
              ),
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  // Profile Picture
                  Stack(
                    alignment: .bottomRight,
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: .circle,
                        ),
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: .circle,
                        ),
                      ),
                    ],
                  ),
                  //
                  SizedBox(height: 20),
                  //
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: .bold,
                    ),
                  ),
                  //
                  Text(
                    "Write Coding & Building Apps",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  //
                  SizedBox(height: 50),
                  //
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      CustomIconContainer(
                        circleColor: Colors.blue.shade50,
                        iconColor: Colors.blue,
                        icon: Icons.facebook,
                      ),
                      CustomIconContainer(
                        circleColor: Colors.green.shade50,
                        iconColor: Colors.green,
                        icon: Icons.phone,
                      ),
                      CustomIconContainer(
                        circleColor: Colors.red.shade50,
                        iconColor: Colors.red,
                        icon: Icons.mail,
                      ),
                    ],
                  ),
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
