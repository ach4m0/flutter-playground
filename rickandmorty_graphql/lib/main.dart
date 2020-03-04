import 'package:flutter/material.dart';

import 'package:rickandmorty_graphql/src/locator.dart';
import 'package:rickandmorty_graphql/src/app.dart';

void main() {
  setupLocator();
  runApp(RickAndMortyApp()); 
}
