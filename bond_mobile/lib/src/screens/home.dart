import 'package:auto_route/auto_route.dart';
import 'package:bond_mobile/src/providers/providers.dart';
import 'package:bond_mobile/src/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/palette.dart';

final _key = GlobalKey<ScaffoldState>();

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(contactList.notifier).state = getContacts();
    getContacts().then((value){
      ref.read(contactList.notifier).state = value;
    });
    return AutoTabsScaffold(
      scaffoldKey: _key,
      routes: const [HomeSub(), Contacts(), Songs(), Messages(), Contacts()],
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

 Future<List<Contact>>getContacts() async {
      
  await FlutterContacts.requestPermission() ;
   return await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true); 

   
  }