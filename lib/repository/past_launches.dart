import 'package:graphql_demo/repository/graphql/graphql_api.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class PastLaunchesRepository {
  static GraphQLClient getGithubGraphQLClient() {
    final Link _link = HttpLink(
      'https://swapi-graphql.netlify.app/.netlify/functions/index',
    );

    return GraphQLClient(
      link: _link,
      cache: GraphQLCache(
        store: HiveStore(),
      ),
    );
  }

  static Future<PastLaunches$Root$FilmsConnection?> getPastLaunches() async {
    final GraphQLClient gql = getGithubGraphQLClient();

    final result = await gql.query(
      QueryOptions(
        document: PastLaunchesQuery().document,
        fetchPolicy: FetchPolicy.cacheAndNetwork,
      ),
    );

    if (result.hasException) {
      throw result.exception!;
    }

    if (result.data == null) {
      throw Exception("Data is null");
    }

    return PastLaunches$Root.fromJson(result.data!).allFilms;
  }
}
