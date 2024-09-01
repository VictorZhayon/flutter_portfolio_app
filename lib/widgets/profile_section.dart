import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            // backgroundColor: Colors.tealAccent,
            radius: 100,
            child: null,
            backgroundImage: AssetImage('assets/images/Victor.jpg',),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zion, Victor',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text('Flutter Developer/Web3 Enthusiast'),
            ],
          ),
        ],
      ),
    );
  }
}

