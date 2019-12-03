
import 'package:flutter/material.dart';

import 'package:contacts/src/pages/contacts_list_page.dart';

class ContactsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent
      ),
      home: ContactsListPage(),
    );
  }

}