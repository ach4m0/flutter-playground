import 'package:contacts/src/models/location_model.dart';

class ContactModel {

  String uuid;
  String firstName;
  String lastName;
  String phone;
  String picUrl;
  String email;
  LocationModel location;

  ContactModel.fromJson(Map<String, dynamic> parsedJson) {
    uuid = parsedJson['login']['uuid'];
    firstName = parsedJson['name']['first'];
    lastName = parsedJson['name']['last'];
    phone = parsedJson['phone'];
    picUrl = parsedJson['picture']['large'];
    email = parsedJson['email'];
    location = LocationModel.fromJson(parsedJson['location']);
  }

  ContactModel({
    this.uuid,
    this.firstName,
    this.lastName,
    this.phone,
    this.picUrl,
    this.email,
    this.location
  });

}