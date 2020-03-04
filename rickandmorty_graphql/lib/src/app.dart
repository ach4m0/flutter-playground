import 'package:flutter/material.dart';

import 'package:rickandmorty_graphql/src/router.dart';
import 'package:rickandmorty_graphql/src/ui/shared/theme.dart';
 
class RickAndMortyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: initialRoute,
      theme: themeData,
      darkTheme: themeDarkData,
      onGenerateRoute: Router.generateRoute,
    );
  }
}