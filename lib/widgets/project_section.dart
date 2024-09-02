import 'package:crash_course/project_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 16, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Projects',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          const SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.start,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProjectCard(title: 'Project 1', description: 'Description of project 1.', time: 'July 2024', cardColor: Colors.teal,),
                ProjectCard(title: 'Project 2', description: 'Description of project 2.', time: 'March 2024', cardColor: Colors.tealAccent,),
                ProjectCard(title: 'Project 3', description: 'Description of project 3.', time: 'December 2023', cardColor: Colors.teal,),
                ProjectCard(title: 'Project 4', description: 'Description of project 4.', time: 'August 2023', cardColor: Colors.tealAccent,),
                ProjectCard(title: 'Project 5', description: 'Description of project 5.', time: 'June 2023', cardColor: Colors.teal,),
                ProjectCard(title: 'Project 6', description: 'Description of project 6.', time: 'March 2023', cardColor: Colors.tealAccent,),
                ProjectCard(title: 'Project 7', description: 'Description of project 7.', time: 'October 2022', cardColor: Colors.teal,),
                ProjectCard(title: 'Project 8', description: 'Description of project 8.', time: 'July 2022', cardColor: Colors.tealAccent,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String time;
  final Color cardColor;
  
  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const ProjectDisplay();
        }));
      },
      child: Card(
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Hero(
                    tag: 'projectCard',
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Victor.jpg'),
                        child: null,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(description),
              Row(
                children: [
                  const SizedBox(width: 150,),
                  Text(
                    time,
                    style: const TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
