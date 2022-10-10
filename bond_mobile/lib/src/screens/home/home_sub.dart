import 'package:bond_mobile/src/extensions/extensions.dart';
import 'package:bond_mobile/src/utils/utils.dart';
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
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 100),
        Center(
            child: Column(
          children: [
            Text(
              context.loc.bond,
              style: Styles.heading3.copyWith(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: Container(
                height: 5,
                width: context.screenWidth*0.85,
                decoration: Decorations.transperentButton.copyWith(
                  border: Border.all(color: Palette.orange, width: 1),
                  color: Palette.orange
                ),
              ),
            ),
            
          ],
        ))
      ],
    );
  }
}
