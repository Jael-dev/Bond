import 'dart:html';

import 'package:bond_mobile/src/widgets/heart.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key?key, required this.profile, required this.name, required this.message, required this.heart}):super(key:key);
  final String profile;
  final String name;
  final String message;
  final Heart heart;

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
          heart
        ],
      ),
    );
  }
}