import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:contacts/src/models/user_model.dart';

class RandomUserService {

  static Future<List<UserModel>> getUsers() async {
    List<UserModel> list = [];
    
    final response = await http.get('https://randomuser.me/api?results=10');
    Map dataMap = json.decode(response.body);

    dataMap['results'].forEach( (item) {
      list.add(UserModel.fromJson(item));
    });

    return list;
  }
  
}