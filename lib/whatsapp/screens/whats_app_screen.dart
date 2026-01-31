import 'package:first_project/whatsapp/widgets/custom_chat_card.dart';
import 'package:flutter/material.dart';

class WhatsAppScreen extends StatefulWidget {
  const WhatsAppScreen({super.key});

  @override
  State<WhatsAppScreen> createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen> {
  int selectedIndex = 0;
  List<String> categories = [
    "All",
    "Unread",
    "Groups",
    "Friends",
    "Collage",
    "Family",
    "Community",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: Color(0XFF075E54),
        title: Text("WhatsApp", style: TextStyle(color: Colors.black)),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.black),
        ],
      ),
      //
      body: Column(
        children: [
          SizedBox(height: 12),
          // First Category
          SingleChildScrollView(
            scrollDirection: .horizontal,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: .symmetric(horizontal: 10),
              child: Row(
                spacing: 10,
                children: [
                  ...List.generate(
                    categories.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: .all(5),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Color((0XFF075E54))
                              : Colors.white,
                          borderRadius: .circular(10),
                          border: Border.all(
                            color: selectedIndex == index
                                ? Color((0XFF075E54))
                                : Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          SizedBox(height: 12),
          // Chat List
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) => CustomChatCard(),
            ),
          ),
          //
        ],
      ),
    );
  }
}
