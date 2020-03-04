import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rickandmorty_graphql/src/core/utils/utils.dart';

import 'package:rickandmorty_graphql/src/locator.dart';
import 'package:rickandmorty_graphql/src/ui/shared/text_styles.dart';
import 'package:rickandmorty_graphql/src/core/services/rickandmorty_service.dart';

class HomeView extends StatelessWidget {

  static const String routeName = '/';

  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RickAndMortyService service = locator<RickAndMortyService>();

    return Scaffold(
      body: GraphQLProvider(
        client: service.client,
        child: CacheProvider(
          child: ListView(
            children: <Widget>[
              Text(
                'Characters',
                style: textTheme.headline4,
              ),
              Query(
                options: QueryOptions(
                  documentNode: gql(queryCharactersAndEpisodes)
                ),
                builder: (QueryResult result, { VoidCallback refetch, FetchMore fetchMore }) {
                  print(result.data['characters']['results'][0]['name']);
                  if(result.loading) {
                    return Text('Loading');
                  }else{
                    return Text('Dummy');
                  }
                },
              ),
              SizedBox(height: 100,),
              Text(
                'Episodes',
                style: textTheme.headline4,
              ),
            ],
          ),
        ),
      )
    );
  }
}