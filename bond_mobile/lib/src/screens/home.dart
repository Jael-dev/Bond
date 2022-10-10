import 'package:auto_route/auto_route.dart';
import 'package:bond_mobile/src/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/palette.dart';

final _key = GlobalKey<ScaffoldState>();

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      scaffoldKey: _key,
      routes: const [HomeSub(), Messages(), Songs(), Messages(), Contacts()],
      bottomNavigationBuilder: (context, router) {
        return NavbarBuilder(context: context, router: router);
      },
    );
  }
}

class NavbarBuilder extends StatelessWidget {
  const NavbarBuilder({Key? key, required this.router, required this.context})
      : super(key: key);
  final TabsRouter router;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.import_contacts_outlined),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message_outlined),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note_sharp),
          label: 'Songs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Settings',
        ),
      ],
      currentIndex: router.activeIndex,
      selectedItemColor: Palette.orange,
      backgroundColor: Colors.white,
      onTap: (index) => router.setActiveIndex(index),
    );
  }
}
