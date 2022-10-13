import 'package:bond_mobile/src/utils/utils.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key?key, required this.profile, required this.name, required this.message}):super(key:key);
  final String profile;
  final String name;
  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
           CircleAvatar(
                radius: 20,
                child: Image.asset(profile),
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name, style: Styles.heading1,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 2.0),
                child: Text(message),
              )
            ],
          ),
        ],
      ),
    );
  }
}