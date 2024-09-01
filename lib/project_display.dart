import 'package:flutter/material.dart';

class ProjectDisplay extends StatelessWidget {
  const ProjectDisplay({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                  child: const Icon(Icons.arrow_back_ios_new_rounded))
            ],
          ),
          const SizedBox(width: 20,),
          const Hero(
              tag: 'projectCard',
              child: Icon(Icons.ac_unit_rounded)
          ),
        ],
      ),
    );
  }
}
