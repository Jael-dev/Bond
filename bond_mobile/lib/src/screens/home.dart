import 'package:auto_route/auto_route.dart';
import 'package:bond_mobile/src/router/router.gr.dart';
import 'package:bond_mobile/src/screens/screens.dart';
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
      routes: [],
      builder: (context, child, animation) => ScaleTransition(
        scale: animation,
        child: child,
      ),
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
          icon: Icon(Icons.contact_page_outlined),
          label: 'Contacts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Account',
        ),
      ],
      currentIndex: router.activeIndex,
      selectedItemColor: Palette.black,
      backgroundColor: Colors.white,
      onTap: (index) => router.setActiveIndex(index),
    );
  }
}
