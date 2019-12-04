
import 'package:flutter/material.dart';

import 'package:contacts/src/models/contact_model.dart';

class ContactDetailsPage extends StatelessWidget {

  final ContactModel contact;

  const ContactDetailsPage({Key key, @required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_arrow_left),
        ),
      ),
      body:  Container(
        child: Hero(
            tag: contact.uuid,
            child: ClipRRect(
              child: Image.network(contact.picUrl),
            ),
        ),
      )
    );
  }
}