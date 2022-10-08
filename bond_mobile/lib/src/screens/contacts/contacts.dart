import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Contacts extends ConsumerStatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactsState();
}

class _ContactsState extends ConsumerState<Contacts> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Contacts"),
    );
  }
}