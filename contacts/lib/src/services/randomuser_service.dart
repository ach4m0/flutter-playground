import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:contacts/src/models/contact_model.dart';

class RandomUserService {

  static Future<List<ContactModel>> getContacts() async {
    List<ContactModel> list = [];
    
    final response = await http.get('https://randomuser.me/api?results=20');
    Map dataMap = json.decode(response.body);

    dataMap['results'].forEach( (item) {
      list.add(ContactModel.fromJson(item));
    });

    return list;
  }
  
}