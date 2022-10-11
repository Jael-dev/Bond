import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key?key, required this.profile, required this.name, required this.message}):super(key:key);
  final String profile;
  final String name;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
           CircleAvatar(
                radius: 30,
                child: Image.asset(profile),
              ),
          Column(
            children: [
              Text(name),
              Text(message)
            ],
          ),
        ],
      ),
    );
  }
}