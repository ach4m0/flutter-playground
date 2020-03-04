import 'package:get_it/get_it.dart';

import 'package:rickandmorty_graphql/src/core/services/rickandmorty_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => RickAndMortyService());
}