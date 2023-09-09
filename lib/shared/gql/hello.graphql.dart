import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$SayHello {
  Query$SayHello({
    required this.sayHello,
    this.$__typename = 'Query',
  });

  factory Query$SayHello.fromJson(Map<String, dynamic> json) {
    final l$sayHello = json['sayHello'];
    final l$$__typename = json['__typename'];
    return Query$SayHello(
      sayHello: Query$SayHello$sayHello.fromJson(
          (l$sayHello as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SayHello$sayHello sayHello;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sayHello = sayHello;
    _resultData['sayHello'] = l$sayHello.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sayHello = sayHello;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sayHello,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SayHello) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sayHello = sayHello;
    final lOther$sayHello = other.sayHello;
    if (l$sayHello != lOther$sayHello) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SayHello on Query$SayHello {
  CopyWith$Query$SayHello<Query$SayHello> get copyWith =>
      CopyWith$Query$SayHello(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SayHello<TRes> {
  factory CopyWith$Query$SayHello(
    Query$SayHello instance,
    TRes Function(Query$SayHello) then,
  ) = _CopyWithImpl$Query$SayHello;

  factory CopyWith$Query$SayHello.stub(TRes res) =
      _CopyWithStubImpl$Query$SayHello;

  TRes call({
    Query$SayHello$sayHello? sayHello,
    String? $__typename,
  });
  CopyWith$Query$SayHello$sayHello<TRes> get sayHello;
}

class _CopyWithImpl$Query$SayHello<TRes>
    implements CopyWith$Query$SayHello<TRes> {
  _CopyWithImpl$Query$SayHello(
    this._instance,
    this._then,
  );

  final Query$SayHello _instance;

  final TRes Function(Query$SayHello) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sayHello = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SayHello(
        sayHello: sayHello == _undefined || sayHello == null
            ? _instance.sayHello
            : (sayHello as Query$SayHello$sayHello),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$SayHello$sayHello<TRes> get sayHello {
    final local$sayHello = _instance.sayHello;
    return CopyWith$Query$SayHello$sayHello(
        local$sayHello, (e) => call(sayHello: e));
  }
}

class _CopyWithStubImpl$Query$SayHello<TRes>
    implements CopyWith$Query$SayHello<TRes> {
  _CopyWithStubImpl$Query$SayHello(this._res);

  TRes _res;

  call({
    Query$SayHello$sayHello? sayHello,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$SayHello$sayHello<TRes> get sayHello =>
      CopyWith$Query$SayHello$sayHello.stub(_res);
}

const documentNodeQuerySayHello = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SayHello'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sayHello'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$SayHello _parserFn$Query$SayHello(Map<String, dynamic> data) =>
    Query$SayHello.fromJson(data);
typedef OnQueryComplete$Query$SayHello = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SayHello?,
);

class Options$Query$SayHello extends graphql.QueryOptions<Query$SayHello> {
  Options$Query$SayHello({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SayHello? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SayHello? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$SayHello(data),
                  ),
          onError: onError,
          document: documentNodeQuerySayHello,
          parserFn: _parserFn$Query$SayHello,
        );

  final OnQueryComplete$Query$SayHello? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SayHello
    extends graphql.WatchQueryOptions<Query$SayHello> {
  WatchOptions$Query$SayHello({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SayHello? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySayHello,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SayHello,
        );
}

class FetchMoreOptions$Query$SayHello extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SayHello({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerySayHello,
        );
}

extension ClientExtension$Query$SayHello on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SayHello>> query$SayHello(
          [Options$Query$SayHello? options]) async =>
      await this.query(options ?? Options$Query$SayHello());
  graphql.ObservableQuery<Query$SayHello> watchQuery$SayHello(
          [WatchOptions$Query$SayHello? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SayHello());
  void writeQuery$SayHello({
    required Query$SayHello data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQuerySayHello)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SayHello? readQuery$SayHello({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySayHello)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SayHello.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SayHello> useQuery$SayHello(
        [Options$Query$SayHello? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SayHello());
graphql.ObservableQuery<Query$SayHello> useWatchQuery$SayHello(
        [WatchOptions$Query$SayHello? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$SayHello());

class Query$SayHello$Widget extends graphql_flutter.Query<Query$SayHello> {
  Query$SayHello$Widget({
    widgets.Key? key,
    Options$Query$SayHello? options,
    required graphql_flutter.QueryBuilder<Query$SayHello> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SayHello(),
          builder: builder,
        );
}

class Query$SayHello$sayHello {
  Query$SayHello$sayHello({
    required this.message,
    this.$__typename = 'GMessage',
  });

  factory Query$SayHello$sayHello.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Query$SayHello$sayHello(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SayHello$sayHello) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SayHello$sayHello on Query$SayHello$sayHello {
  CopyWith$Query$SayHello$sayHello<Query$SayHello$sayHello> get copyWith =>
      CopyWith$Query$SayHello$sayHello(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SayHello$sayHello<TRes> {
  factory CopyWith$Query$SayHello$sayHello(
    Query$SayHello$sayHello instance,
    TRes Function(Query$SayHello$sayHello) then,
  ) = _CopyWithImpl$Query$SayHello$sayHello;

  factory CopyWith$Query$SayHello$sayHello.stub(TRes res) =
      _CopyWithStubImpl$Query$SayHello$sayHello;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SayHello$sayHello<TRes>
    implements CopyWith$Query$SayHello$sayHello<TRes> {
  _CopyWithImpl$Query$SayHello$sayHello(
    this._instance,
    this._then,
  );

  final Query$SayHello$sayHello _instance;

  final TRes Function(Query$SayHello$sayHello) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SayHello$sayHello(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SayHello$sayHello<TRes>
    implements CopyWith$Query$SayHello$sayHello<TRes> {
  _CopyWithStubImpl$Query$SayHello$sayHello(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}
