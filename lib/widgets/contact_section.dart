import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Me',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const ContactLinks(socialMediaName: 'Email:', socialLink: 'victorzion1@gmail.com'),
          const ContactLinks(socialMediaName: 'LinkedIn:', socialLink: 'linkedin.com/in/victor-zion'),
          const ContactLinks(socialMediaName: 'Facebook:', socialLink: '@Victor Zion'),
          const ContactLinks(socialMediaName: 'X:', socialLink: 'x.com/@VictorZion10'),
          const ContactLinks(socialMediaName: 'WhatsApp:', socialLink: '+234-810-5123-142'),
        ],
      ),
    );
  }
}

class ContactLinks extends StatelessWidget {
  final String socialMediaName;
  final String socialLink;

  const ContactLinks({
    super.key,
    required this.socialMediaName,
    required this.socialLink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.double_arrow_rounded),
        Text(
          socialMediaName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5,),
        Text(socialLink),
      ],
    );
  }
}