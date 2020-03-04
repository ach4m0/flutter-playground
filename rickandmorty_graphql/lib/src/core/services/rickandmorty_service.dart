import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RickAndMortyService {

  static Link httpLink = HttpLink(uri: 'https://rickandmortyapi.com/graphql');

  ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
    GraphQLClient(
        cache: OptimisticCache(
          dataIdFromObject: typenameDataIdFromObject,
        ),
        link: httpLink,
      ),
  );
  

}