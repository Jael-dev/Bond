import 'package:bond_mobile/src/extensions/extensions.dart';
import 'package:bond_mobile/src/providers/providers.dart';
import 'package:bond_mobile/src/widgets/contact.dart';
import 'package:bond_mobile/src/widgets/heart.dart';
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
        body: ListView.separated(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left:12.0, right: 16.0, top:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContactView(
                      profile: "assets/images/logo.png",
                      name: contacts[index].displayName,
                      message: "🤍🖤💜💚🧡💛🤍🤍🤍🤍🤍"),
                  SizedBox(
                      height: 30,
                      width: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Heart(
                            onClick: () {},
                            onDoubleClick: () {},
                            onLongClick: () {},
                            image: "assets/images/logo.png"),
                      ))
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
             const Padding(
                padding: EdgeInsets.symmetric(horizontal:16.0),
                child: Divider(),
              ),
        ));
  }
}
