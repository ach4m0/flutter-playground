
import 'package:flutter/material.dart';

import 'package:contacts/src/models/contact_model.dart';

class ContactDetailsPage extends StatefulWidget {

  final contact;

  ContactDetailsPage({this.contact});

  @override
  _ContactDetailsPageState createState() => _ContactDetailsPageState(contact: contact);
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {

  ContactModel contact;

  _ContactDetailsPageState({this.contact});

  @override
  Widget build(BuildContext context) {

    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    this.contact = arguments['contact'];

    return Scaffold(
      body:  NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Text(contact.firstName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Hero(
                    tag: contact.uuid,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.network(
                            contact.picUrl,
                            fit: BoxFit.cover,
                      )
                    )
                  ),
              )
            ),
          ];
        },
        body: Center(
          child: Text("Sample Text"),
        )
      )
    );
  }
}