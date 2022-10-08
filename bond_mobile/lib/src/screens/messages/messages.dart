import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Messages extends ConsumerStatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MessagesState();
}

class _MessagesState extends ConsumerState<Messages> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Messages Page"),
    );
  }
}