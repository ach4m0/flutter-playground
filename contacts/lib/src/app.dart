import 'package:flutter/material.dart';

import 'package:contacts/src/pages/contacts_list_page.dart';
import 'package:contacts/src/pages/contact_details_page.dart';

class ContactsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.purpleAccent
      ),
      routes: {
        '/': (context) => ContactsListPage(),
        '/contact': (context) => ContactDetailsPage()
      }
    );
  }

}