import 'package:flutter/material.dart';

import 'package:rickandmorty_graphql/src/ui/home/home.dart';

const String initialRoute = HomeView.routeName;

class Router {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      
      case HomeView.routeName:
        return MaterialPageRoute(builder: (_) => HomeView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          )
        );
    }
  }
}