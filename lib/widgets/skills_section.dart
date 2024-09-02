import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatefulWidget {
  const SkillsSection({super.key});

  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            FaIcon(FontAwesomeIcons.android, size: 45, color: Colors.teal,),
            SizedBox(width: 30,),
            FaIcon(FontAwesomeIcons.appStoreIos, size: 45, color: Colors.teal),
            SizedBox(width: 30,),
            FaIcon(FontAwesomeIcons.html5, size: 45, color: Colors.teal),
            SizedBox(width: 30,),
            FaIcon(FontAwesomeIcons.css3, size: 45, color: Colors.teal),
            SizedBox(width: 30,),
            FaIcon(FontAwesomeIcons.googlePlay, size: 45, color: Colors.teal),
            SizedBox(width: 30,),
            FaIcon(FontAwesomeIcons.mobile, size: 45, color: Colors.teal),
            SizedBox(width: 30,),
            FaIcon(FontAwesomeIcons.golang, size: 45, color: Colors.teal),
            SizedBox(width: 30,),
            FaIcon(FontAwesomeIcons.link, size: 45, color: Colors.teal),
          ],
        ),
      ),
    );
  }
}
