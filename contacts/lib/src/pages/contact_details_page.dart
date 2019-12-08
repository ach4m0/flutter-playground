
import 'package:flutter/material.dart';

import 'package:contacts/src/models/contact_model.dart';

class ContactDetailsPage extends StatefulWidget {

  @override
  _ContactDetailsPageState createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {

  ContactModel contact;

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
                  title: Text(
                    '${contact.firstName} ${contact.lastName}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )
                  ),
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
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          children: <Widget>[
            ListTile(
              title: Text(contact.phone),
              subtitle: Text('Mobile'),
              leading: Icon(Icons.phone),
            ),
            Divider(),
            ListTile(
              title: Text(contact.email),
              subtitle: Text('Email'),
              leading: Icon(Icons.email)
            ),
            Divider(),
            Column(
              children: <Widget>[
                ListTile(
                  title: Text('${contact.location.name} ${contact.location.number}'),
                  subtitle: Text('Address'),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text(contact.location.city),
                  subtitle: Text('City'),
                  leading: SizedBox(),
                ),
                ListTile(
                  title: Text(contact.location.state),
                  subtitle: Text('State'),
                  leading: SizedBox(),
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}