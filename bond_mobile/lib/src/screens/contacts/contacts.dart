import 'package:bond_mobile/src/extensions/extensions.dart';
import 'package:bond_mobile/src/providers/providers.dart';
import 'package:bond_mobile/src/widgets/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Contacts extends ConsumerStatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ContactsState();
}

class _ContactsState extends ConsumerState<Contacts> {

  @override
  Widget build(BuildContext context) {
    final contacts = ref.watch(contactList); 
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.contact),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index){
          return ContactView(profile: "(${contacts![index].photo})? ${contacts![index].photo} : assets/images/logo.png", name: "${contacts![index].displayName}", message: "message");
        },
      )
    );
    
  }
}
