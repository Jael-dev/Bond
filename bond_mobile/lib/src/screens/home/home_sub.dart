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
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 5,
                width: context.screenWidth * 0.85,
                decoration: Decorations.transperentButton.copyWith(
                    border: Border.all(color: Palette.orange, width: 1),
                    color: Palette.orange),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: SizedBox(
                width: context.screenWidth,
                height: context.screenHeight / 5.5,
                child: Stack(
                  children: [
                    Positioned(
                      left: context.screenWidth * 0.2,
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            "https://image.shutterstock.com/image-photo/close-portrait-handsome-young-black-260nw-220562620.jpg"),
                      ),
                    ),
                    Positioned(
                      left: context.screenWidth * 0.45,
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            "https://braperucci.africa/wp-content/uploads/2019/03/Jare-braperucci.africa-819x1024.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              width: context.screenWidth / 1.8,
              decoration: Decorations.transperentButton.copyWith(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Palette.orange, width: 1),
                  color: Palette.orange
                  ),
              child: Center(child: Text("Les Tourtereaux", style: Styles.heading1.copyWith(color: Palette.white,fontSize: 20))),
            )
          ],
        ))
      ],
    );
  }
}
