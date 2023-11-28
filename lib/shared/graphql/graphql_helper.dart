import 'package:dus_dashboard/index.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;

class GraphQLHelper {
  GraphQLHelper._();

  static final GraphQLHelper _instance = GraphQLHelper._();
  static GraphQLHelper get instance => _instance;

  // static final myClient = BrowserClient();
  static final myClient = http.Client();
  // var myClient = BrowserClient()..withCredentials = true;

  ValueNotifier<GraphQLClient> getClient() {
    final HttpLink httpLink = HttpLink(
      GraphQLApiEndPoint.backendHttpLink,
      httpClient: myClient,
      defaultHeaders: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "GET, POST, PUT, PATCH, OPTIONS, DELETE, HEAD",
        "Access-Control-Allow-Headers": "Origin, Content-Type, Accept, Authorization, X-Request-With",
        "x-apollo-operation-name": "_dynasty_urban_style_request",
        "Access-Control-Allow-Credentials": "true",
        "apollo-require-preflight": "true",
      },
    );

    // Enable withCredentials for the HttpLink
    final Link link = httpLink.concat(
      AuthLink(
        getToken: () async {
          final token = await helperFunctions.readValue(key: appStrings.accessTokenKey);
          return "Bearer $token";
        },
      ),
    );

    // final Link link = httpLink;

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(
          store: HiveStore(),
        ),
        link: link,
      ),
    );

    return client;
  }
}
