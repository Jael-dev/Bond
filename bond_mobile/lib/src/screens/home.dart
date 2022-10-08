import 'package:auto_route/auto_route.dart';
import 'package:bond_mobile/src/screens/home/home_page.dart';
import 'package:bond_mobile/src/screens/messages/messages.dart';
import 'package:bond_mobile/src/screens/songs/songs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/contact.dart';


final _key = GlobalKey<ScaffoldState>();


class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
