class GraphQLApiEndPoint {
  GraphQLApiEndPoint._();
  static final GraphQLApiEndPoint _instance = GraphQLApiEndPoint._();
  static GraphQLApiEndPoint get instance => _instance;

  static const String backendHttpLink = "http://localhost:5000/graphql";
}
