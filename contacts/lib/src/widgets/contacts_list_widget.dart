import 'package:flutter/material.dart';

import 'package:contacts/src/models/user_model.dart';
import 'package:contacts/src/services/randomuser_service.dart';

class ContactsListWidget extends StatefulWidget {
  @override
  _ContactsListWidgetState createState() => _ContactsListWidgetState();
}

class _ContactsListWidgetState extends State<ContactsListWidget> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserModel>>(
      future: RandomUserService.getUsers(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(snapshot.hasData) {
          return _getListViewUsers(snapshot.data);
        }else{
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _getListViewUsers(data) {
    List<Widget> listTiles = [];

    data.forEach( (item) {
      listTiles.add(
        ListTile(
          title: Text('${item.firstName} ${item.lastName}'),
          subtitle: Text(item.phone),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.network(item.picUrl),
          ),
          onTap: () {},
        )
      );
      listTiles.add(Divider());
    });

    return ListView(children: listTiles);

  }
}