import 'package:flutter/material.dart';

class Heart extends StatelessWidget {
  const Heart(
      {Key? key,
      required this.onClick,
      required this.onDoubleClick,
      required this.onLongClick,
      required this.image})
      : super(key: key);
  final VoidCallback onClick;
  final VoidCallback onDoubleClick;
  final VoidCallback onLongClick;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      curve: Curves.easeInOutCirc,
      height: 20,
      width: 20,
      decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(500)),
      child: Image.asset(image),
    );
  }
}
