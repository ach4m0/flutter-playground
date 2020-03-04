import 'dart:convert';

import 'package:rickandmorty_graphql/src/core/utils/utils.dart';

Character characterFromJson(String str) => Character.fromJson(json.decode(str));

String characterToJson(Character data) => json.encode(data.toJson());

class Character {
    String name;
    Status status;
    String image;

    Character({
        this.name,
        this.status,
        this.image,
    });

    factory Character.fromJson(Map<String, dynamic> json) => Character(
        name: json["name"],
        status: statusValues.map[json["status"]],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "status": statusValues.reverse[status],
        "image": image,
    };
}

enum Status { ALIVE, UNKNOWN, DEAD }

final statusValues = EnumValues({
    "Alive": Status.ALIVE,
    "Dead": Status.DEAD,
    "unknown": Status.UNKNOWN
});

