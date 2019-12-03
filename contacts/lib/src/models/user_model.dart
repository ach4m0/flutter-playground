class UserModel {

  String uuid;
  String firstName;
  String lastName;
  String phone;
  String picUrl;
  String email;
  Object location;

  UserModel.fromJson(Map<String, dynamic> parsedJson) {
    uuid = parsedJson['login']['uuid'];
    firstName = parsedJson['name']['first'];
    lastName = parsedJson['name']['last'];
    phone = parsedJson['phone'];
    picUrl = parsedJson['picture']['large'];
    email = parsedJson['email'];
    location = parsedJson['location'];
  }

  UserModel({
    this.uuid,
    this.firstName,
    this.lastName,
    this.phone,
    this.picUrl,
    this.email,
    this.location
  });

}