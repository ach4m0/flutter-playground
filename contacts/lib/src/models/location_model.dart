class LocationModel {

  String name;
  int number;
  String city;
  String state;
  String country;
  String postCode;

  LocationModel.fromJson(Map<String, dynamic> locationMap) {
    name = locationMap['street']['name'];
    number = locationMap['street']['number'];
    city = locationMap['city'];
    state = locationMap['state'];
    country = locationMap['country'];
    postCode = locationMap['postCode'];
  }

  LocationModel({
    this.name,
    this.number,
    this.city,
    this.state,
    this.country,
    this.postCode
  });

}