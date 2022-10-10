import 'package:bond_mobile/src/utils/utils.dart';
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
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Palette.orange,
        borderRadius: BorderRadius.circular(500),
        boxShadow: const [
          BoxShadow(
            color: Palette.orange,
            blurRadius: 20.0, 
            spreadRadius: 2.0, 
            offset: Offset(
              0.0, 
              0.0, 
            ),
          )
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Palette.white,
        child: Image.asset(image),
      ),
    );
  }
}
