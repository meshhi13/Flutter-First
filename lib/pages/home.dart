import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: appBar(),
      body: body(),
    );
  }

  // The search bar is now a "Find Lesson" input
  Widget body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withValues(alpha: 0.11),
                  blurRadius: 20,
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.blueAccent),
                hintText: "Find Lesson",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                lessonCard("Memory Boost", "assets/icons/brain.svg", Colors.orangeAccent),
                lessonCard("Word Match", "assets/icons/book.svg", Colors.greenAccent),
                lessonCard("Daily Phrase", "assets/icons/microphone.svg", Colors.purpleAccent),
                lessonCard("Numbers Fun", "assets/icons/calculator.svg", Colors.redAccent),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget lessonCard(String title, String iconPath, Color color) {
    return GestureDetector(
      onTap: () {
        // Navigate to lesson page
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withValues(alpha: 0.11),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 60,
              width: 60,
            ),
            SizedBox(height: 15),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.blueAccent,
      centerTitle: true,
      title: Text(
        "Memory Duolingo",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        width: 40,
        child: SvgPicture.asset(
          'assets/icons/Arrow - Left 2.svg',
          height: 24,
          width: 24,
          fit: BoxFit.contain,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 40,
          alignment: Alignment.center,

          child: Icon(Icons.settings, color: Colors.blueAccent, size: 24),
        ),
      ],
    );
  }
}
