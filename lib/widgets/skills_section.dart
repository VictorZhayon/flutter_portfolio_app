import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Skills',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 30,
                child: Center(child: Icon(Icons.flutter_dash_rounded, size: 30,)),
              ),
              CircleAvatar(
                backgroundColor: Colors.tealAccent,
                radius: 40,
                child: Center(child: Icon(Icons.javascript_rounded, size: 80,)),
              ),
              CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 50,
                child: Center(child: Icon(Icons.html_rounded, size: 60,)),
              ),
              CircleAvatar(
                backgroundColor: Colors.tealAccent,
                radius: 60,
                child: Center(child: Icon(Icons.css_rounded, size: 80,)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
