import 'package:flutter/material.dart';

import 'package:contacts/src/pages/contacts_list_page.dart';
import 'package:contacts/src/pages/contact_details_page.dart';

class ContactsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent
      ),
      routes: {
        '/': (context) => ContactsListPage(),
        '/contact': (context) => ContactDetailsPage()
      }
    );
  }

}