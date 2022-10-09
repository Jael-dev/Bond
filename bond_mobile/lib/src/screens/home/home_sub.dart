import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeSub extends ConsumerStatefulWidget {
  const HomeSub({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeSubState();
}

class _HomeSubState extends ConsumerState<HomeSub> {

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text("HomePage page"),
    );
  }

}