import 'package:flutter/material.dart';

import 'package:contacts/src/models/contact_model.dart';
import 'package:contacts/src/services/randomuser_service.dart';

class ContactsListWidget extends StatefulWidget {
  @override
  _ContactsListWidgetState createState() => _ContactsListWidgetState();
}

class _ContactsListWidgetState extends State<ContactsListWidget> {
  List<ContactModel> contacts = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ContactModel>>(
      future: _getContactsList(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data.length > 0) {
          return _getListViewUsers(snapshot.data);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _getListViewUsers(data) {
    List<Widget> listTiles = [];

    data.forEach((contact) {
      listTiles.add(ListTile(
        title: Text('${contact.firstName} ${contact.lastName}'),
        subtitle: Text(contact.phone),
        leading: Hero(
            tag: contact.uuid,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(contact.picUrl),
            )),
        onTap: () {
          Navigator.pushNamed(context, '/contact',
              arguments: {'contact': contact});
        },
      ));
      listTiles.add(Divider());
    });

    return ListView(children: listTiles);
  }

  Future<List<ContactModel>> _getContactsList() async {
    if (this.contacts.length == 0) {
      this.contacts = await RandomUserService.getContacts();
    }
    return this.contacts;
  }
}
