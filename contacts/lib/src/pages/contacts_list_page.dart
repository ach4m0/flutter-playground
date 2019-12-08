import 'package:flutter/material.dart';

import 'package:contacts/src/widgets/contacts_list_widget.dart';

class ContactsListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        centerTitle: true,
      ),
      body: ContactsListWidget()
    );
  }
}