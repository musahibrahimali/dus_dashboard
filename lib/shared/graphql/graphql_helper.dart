import 'package:dus_dashboard/shared/graphql/graphql_endpoint.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;

class GraphQLHelper {
  GraphQLHelper._();

  static final GraphQLHelper _instance = GraphQLHelper._();
  static GraphQLHelper get instance => _instance;

  /// Create a custom [http.Client]
  static final myClient = http.Client();

  ValueNotifier<GraphQLClient> getClient() {
    final HttpLink httpLink = HttpLink(
      GraphQLApiEndPoint.backendHttpLink,
      httpClient: myClient,
    );

    // Enable withCredentials for the HttpLink
    final Link link = httpLink.concat(
      AuthLink(
        getToken: () async {
          // Implement your logic to retrieve authentication token here
          // You can use packages like shared_preferences or get_it to manage tokens
          // final token = await myTokenManager.getToken();
          return "Bearer "; // $token
        },
      ),
    );

    // final Link link = httpLink;

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(
          store: HiveStore(),
        ),
        defaultPolicies: DefaultPolicies(
          watchQuery: Policies(fetch: FetchPolicy.networkOnly),
          query: Policies(fetch: FetchPolicy.networkOnly),
          mutate: Policies(fetch: FetchPolicy.networkOnly),
        ),
        link: link,
      ),
    );

    return client;
  }
}

// import 'package:dus_dashboard/index.dart';
// import 'package:graphql/client.dart';
// import 'package:http/http.dart' as http;
//
// class GraphQLHelper {
//   GraphQLHelper._();
//
//   static final GraphQLHelper _instance = GraphQLHelper._();
//   static GraphQLHelper get instance => _instance;
//
//   /// [getClient] is used to get a client
//   static final myClient = http.Client();
//
//   GraphQLClient getClient() {
//     final HttpLink httpLink = HttpLink(
//       ProjectConstants.backendHttpLink,
//       httpClient: myClient,
//     );
//     final Link link = httpLink;
//
//     return GraphQLClient(
//       cache: GraphQLCache(),
//       defaultPolicies: DefaultPolicies(
//         watchQuery: Policies(fetch: FetchPolicy.networkOnly),
//         query: Policies(fetch: FetchPolicy.networkOnly),
//         mutate: Policies(fetch: FetchPolicy.networkOnly),
//       ),
//       link: link,
//     );
//   }
// }
