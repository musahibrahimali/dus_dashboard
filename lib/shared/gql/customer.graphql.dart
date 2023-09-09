import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$CreateCustomer {
  factory Variables$Mutation$CreateCustomer(
          {required Input$CreateCustomerInput createCustomerInput}) =>
      Variables$Mutation$CreateCustomer._({
        r'createCustomerInput': createCustomerInput,
      });

  Variables$Mutation$CreateCustomer._(this._$data);

  factory Variables$Mutation$CreateCustomer.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$createCustomerInput = data['createCustomerInput'];
    result$data['createCustomerInput'] = Input$CreateCustomerInput.fromJson(
        (l$createCustomerInput as Map<String, dynamic>));
    return Variables$Mutation$CreateCustomer._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateCustomerInput get createCustomerInput =>
      (_$data['createCustomerInput'] as Input$CreateCustomerInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$createCustomerInput = createCustomerInput;
    result$data['createCustomerInput'] = l$createCustomerInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateCustomer<Variables$Mutation$CreateCustomer>
      get copyWith => CopyWith$Variables$Mutation$CreateCustomer(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createCustomerInput = createCustomerInput;
    final lOther$createCustomerInput = other.createCustomerInput;
    if (l$createCustomerInput != lOther$createCustomerInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createCustomerInput = createCustomerInput;
    return Object.hashAll([l$createCustomerInput]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateCustomer<TRes> {
  factory CopyWith$Variables$Mutation$CreateCustomer(
    Variables$Mutation$CreateCustomer instance,
    TRes Function(Variables$Mutation$CreateCustomer) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateCustomer;

  factory CopyWith$Variables$Mutation$CreateCustomer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateCustomer;

  TRes call({Input$CreateCustomerInput? createCustomerInput});
}

class _CopyWithImpl$Variables$Mutation$CreateCustomer<TRes>
    implements CopyWith$Variables$Mutation$CreateCustomer<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateCustomer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateCustomer _instance;

  final TRes Function(Variables$Mutation$CreateCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createCustomerInput = _undefined}) =>
      _then(Variables$Mutation$CreateCustomer._({
        ..._instance._$data,
        if (createCustomerInput != _undefined && createCustomerInput != null)
          'createCustomerInput':
              (createCustomerInput as Input$CreateCustomerInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateCustomer<TRes>
    implements CopyWith$Variables$Mutation$CreateCustomer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateCustomer(this._res);

  TRes _res;

  call({Input$CreateCustomerInput? createCustomerInput}) => _res;
}

class Mutation$CreateCustomer {
  Mutation$CreateCustomer({
    required this.createCustomer,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateCustomer.fromJson(Map<String, dynamic> json) {
    final l$createCustomer = json['createCustomer'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateCustomer(
      createCustomer: Mutation$CreateCustomer$createCustomer.fromJson(
          (l$createCustomer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateCustomer$createCustomer createCustomer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createCustomer = createCustomer;
    _resultData['createCustomer'] = l$createCustomer.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createCustomer = createCustomer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createCustomer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createCustomer = createCustomer;
    final lOther$createCustomer = other.createCustomer;
    if (l$createCustomer != lOther$createCustomer) {
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

extension UtilityExtension$Mutation$CreateCustomer on Mutation$CreateCustomer {
  CopyWith$Mutation$CreateCustomer<Mutation$CreateCustomer> get copyWith =>
      CopyWith$Mutation$CreateCustomer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateCustomer<TRes> {
  factory CopyWith$Mutation$CreateCustomer(
    Mutation$CreateCustomer instance,
    TRes Function(Mutation$CreateCustomer) then,
  ) = _CopyWithImpl$Mutation$CreateCustomer;

  factory CopyWith$Mutation$CreateCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateCustomer;

  TRes call({
    Mutation$CreateCustomer$createCustomer? createCustomer,
    String? $__typename,
  });
  CopyWith$Mutation$CreateCustomer$createCustomer<TRes> get createCustomer;
}

class _CopyWithImpl$Mutation$CreateCustomer<TRes>
    implements CopyWith$Mutation$CreateCustomer<TRes> {
  _CopyWithImpl$Mutation$CreateCustomer(
    this._instance,
    this._then,
  );

  final Mutation$CreateCustomer _instance;

  final TRes Function(Mutation$CreateCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createCustomer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateCustomer(
        createCustomer: createCustomer == _undefined || createCustomer == null
            ? _instance.createCustomer
            : (createCustomer as Mutation$CreateCustomer$createCustomer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateCustomer$createCustomer<TRes> get createCustomer {
    final local$createCustomer = _instance.createCustomer;
    return CopyWith$Mutation$CreateCustomer$createCustomer(
        local$createCustomer, (e) => call(createCustomer: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateCustomer<TRes>
    implements CopyWith$Mutation$CreateCustomer<TRes> {
  _CopyWithStubImpl$Mutation$CreateCustomer(this._res);

  TRes _res;

  call({
    Mutation$CreateCustomer$createCustomer? createCustomer,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateCustomer$createCustomer<TRes> get createCustomer =>
      CopyWith$Mutation$CreateCustomer$createCustomer.stub(_res);
}

const documentNodeMutationCreateCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateCustomer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createCustomerInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateCustomerInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createCustomer'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'createCustomerInput'),
            value: VariableNode(name: NameNode(value: 'createCustomerInput')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'social'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdmin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
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
Mutation$CreateCustomer _parserFn$Mutation$CreateCustomer(
        Map<String, dynamic> data) =>
    Mutation$CreateCustomer.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateCustomer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateCustomer?,
);

class Options$Mutation$CreateCustomer
    extends graphql.MutationOptions<Mutation$CreateCustomer> {
  Options$Mutation$CreateCustomer({
    String? operationName,
    required Variables$Mutation$CreateCustomer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateCustomer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateCustomer? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateCustomer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateCustomer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateCustomer,
          parserFn: _parserFn$Mutation$CreateCustomer,
        );

  final OnMutationCompleted$Mutation$CreateCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateCustomer
    extends graphql.WatchQueryOptions<Mutation$CreateCustomer> {
  WatchOptions$Mutation$CreateCustomer({
    String? operationName,
    required Variables$Mutation$CreateCustomer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateCustomer? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationCreateCustomer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateCustomer,
        );
}

extension ClientExtension$Mutation$CreateCustomer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateCustomer>> mutate$CreateCustomer(
          Options$Mutation$CreateCustomer options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateCustomer> watchMutation$CreateCustomer(
          WatchOptions$Mutation$CreateCustomer options) =>
      this.watchMutation(options);
}

class Mutation$CreateCustomer$HookResult {
  Mutation$CreateCustomer$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateCustomer runMutation;

  final graphql.QueryResult<Mutation$CreateCustomer> result;
}

Mutation$CreateCustomer$HookResult useMutation$CreateCustomer(
    [WidgetOptions$Mutation$CreateCustomer? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateCustomer());
  return Mutation$CreateCustomer$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateCustomer>
    useWatchMutation$CreateCustomer(
            WatchOptions$Mutation$CreateCustomer options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateCustomer
    extends graphql.MutationOptions<Mutation$CreateCustomer> {
  WidgetOptions$Mutation$CreateCustomer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateCustomer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateCustomer? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateCustomer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateCustomer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateCustomer,
          parserFn: _parserFn$Mutation$CreateCustomer,
        );

  final OnMutationCompleted$Mutation$CreateCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateCustomer
    = graphql.MultiSourceResult<Mutation$CreateCustomer> Function(
  Variables$Mutation$CreateCustomer, {
  Object? optimisticResult,
  Mutation$CreateCustomer? typedOptimisticResult,
});
typedef Builder$Mutation$CreateCustomer = widgets.Widget Function(
  RunMutation$Mutation$CreateCustomer,
  graphql.QueryResult<Mutation$CreateCustomer>?,
);

class Mutation$CreateCustomer$Widget
    extends graphql_flutter.Mutation<Mutation$CreateCustomer> {
  Mutation$CreateCustomer$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateCustomer? options,
    required Builder$Mutation$CreateCustomer builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateCustomer(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreateCustomer$createCustomer {
  Mutation$CreateCustomer$createCustomer({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.social,
    this.avatar,
    this.isAdmin,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'GCustomer',
  });

  factory Mutation$CreateCustomer$createCustomer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$social = json['social'];
    final l$avatar = json['avatar'];
    final l$isAdmin = json['isAdmin'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateCustomer$createCustomer(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      social: (l$social as String?),
      avatar: (l$avatar as String?),
      isAdmin: (l$isAdmin as bool?),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String firstName;

  final String lastName;

  final String? social;

  final String? avatar;

  final bool? isAdmin;

  final String? createdAt;

  final String? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$social = social;
    _resultData['social'] = l$social;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$isAdmin = isAdmin;
    _resultData['isAdmin'] = l$isAdmin;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$social = social;
    final l$avatar = avatar;
    final l$isAdmin = isAdmin;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$social,
      l$avatar,
      l$isAdmin,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateCustomer$createCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$social = social;
    final lOther$social = other.social;
    if (l$social != lOther$social) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Mutation$CreateCustomer$createCustomer
    on Mutation$CreateCustomer$createCustomer {
  CopyWith$Mutation$CreateCustomer$createCustomer<
          Mutation$CreateCustomer$createCustomer>
      get copyWith => CopyWith$Mutation$CreateCustomer$createCustomer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateCustomer$createCustomer<TRes> {
  factory CopyWith$Mutation$CreateCustomer$createCustomer(
    Mutation$CreateCustomer$createCustomer instance,
    TRes Function(Mutation$CreateCustomer$createCustomer) then,
  ) = _CopyWithImpl$Mutation$CreateCustomer$createCustomer;

  factory CopyWith$Mutation$CreateCustomer$createCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateCustomer$createCustomer;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? social,
    String? avatar,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateCustomer$createCustomer<TRes>
    implements CopyWith$Mutation$CreateCustomer$createCustomer<TRes> {
  _CopyWithImpl$Mutation$CreateCustomer$createCustomer(
    this._instance,
    this._then,
  );

  final Mutation$CreateCustomer$createCustomer _instance;

  final TRes Function(Mutation$CreateCustomer$createCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? social = _undefined,
    Object? avatar = _undefined,
    Object? isAdmin = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateCustomer$createCustomer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        social: social == _undefined ? _instance.social : (social as String?),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        isAdmin: isAdmin == _undefined ? _instance.isAdmin : (isAdmin as bool?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateCustomer$createCustomer<TRes>
    implements CopyWith$Mutation$CreateCustomer$createCustomer<TRes> {
  _CopyWithStubImpl$Mutation$CreateCustomer$createCustomer(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? social,
    String? avatar,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$LoginCustomer {
  factory Variables$Mutation$LoginCustomer(
          {required Input$LoginCustomerInput loginCustomerInput}) =>
      Variables$Mutation$LoginCustomer._({
        r'loginCustomerInput': loginCustomerInput,
      });

  Variables$Mutation$LoginCustomer._(this._$data);

  factory Variables$Mutation$LoginCustomer.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$loginCustomerInput = data['loginCustomerInput'];
    result$data['loginCustomerInput'] = Input$LoginCustomerInput.fromJson(
        (l$loginCustomerInput as Map<String, dynamic>));
    return Variables$Mutation$LoginCustomer._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LoginCustomerInput get loginCustomerInput =>
      (_$data['loginCustomerInput'] as Input$LoginCustomerInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$loginCustomerInput = loginCustomerInput;
    result$data['loginCustomerInput'] = l$loginCustomerInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$LoginCustomer<Variables$Mutation$LoginCustomer>
      get copyWith => CopyWith$Variables$Mutation$LoginCustomer(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$LoginCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$loginCustomerInput = loginCustomerInput;
    final lOther$loginCustomerInput = other.loginCustomerInput;
    if (l$loginCustomerInput != lOther$loginCustomerInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$loginCustomerInput = loginCustomerInput;
    return Object.hashAll([l$loginCustomerInput]);
  }
}

abstract class CopyWith$Variables$Mutation$LoginCustomer<TRes> {
  factory CopyWith$Variables$Mutation$LoginCustomer(
    Variables$Mutation$LoginCustomer instance,
    TRes Function(Variables$Mutation$LoginCustomer) then,
  ) = _CopyWithImpl$Variables$Mutation$LoginCustomer;

  factory CopyWith$Variables$Mutation$LoginCustomer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$LoginCustomer;

  TRes call({Input$LoginCustomerInput? loginCustomerInput});
}

class _CopyWithImpl$Variables$Mutation$LoginCustomer<TRes>
    implements CopyWith$Variables$Mutation$LoginCustomer<TRes> {
  _CopyWithImpl$Variables$Mutation$LoginCustomer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$LoginCustomer _instance;

  final TRes Function(Variables$Mutation$LoginCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? loginCustomerInput = _undefined}) =>
      _then(Variables$Mutation$LoginCustomer._({
        ..._instance._$data,
        if (loginCustomerInput != _undefined && loginCustomerInput != null)
          'loginCustomerInput':
              (loginCustomerInput as Input$LoginCustomerInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$LoginCustomer<TRes>
    implements CopyWith$Variables$Mutation$LoginCustomer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$LoginCustomer(this._res);

  TRes _res;

  call({Input$LoginCustomerInput? loginCustomerInput}) => _res;
}

class Mutation$LoginCustomer {
  Mutation$LoginCustomer({
    required this.loginCustomer,
    this.$__typename = 'Mutation',
  });

  factory Mutation$LoginCustomer.fromJson(Map<String, dynamic> json) {
    final l$loginCustomer = json['loginCustomer'];
    final l$$__typename = json['__typename'];
    return Mutation$LoginCustomer(
      loginCustomer: Mutation$LoginCustomer$loginCustomer.fromJson(
          (l$loginCustomer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LoginCustomer$loginCustomer loginCustomer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loginCustomer = loginCustomer;
    _resultData['loginCustomer'] = l$loginCustomer.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loginCustomer = loginCustomer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$loginCustomer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LoginCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$loginCustomer = loginCustomer;
    final lOther$loginCustomer = other.loginCustomer;
    if (l$loginCustomer != lOther$loginCustomer) {
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

extension UtilityExtension$Mutation$LoginCustomer on Mutation$LoginCustomer {
  CopyWith$Mutation$LoginCustomer<Mutation$LoginCustomer> get copyWith =>
      CopyWith$Mutation$LoginCustomer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LoginCustomer<TRes> {
  factory CopyWith$Mutation$LoginCustomer(
    Mutation$LoginCustomer instance,
    TRes Function(Mutation$LoginCustomer) then,
  ) = _CopyWithImpl$Mutation$LoginCustomer;

  factory CopyWith$Mutation$LoginCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LoginCustomer;

  TRes call({
    Mutation$LoginCustomer$loginCustomer? loginCustomer,
    String? $__typename,
  });
  CopyWith$Mutation$LoginCustomer$loginCustomer<TRes> get loginCustomer;
}

class _CopyWithImpl$Mutation$LoginCustomer<TRes>
    implements CopyWith$Mutation$LoginCustomer<TRes> {
  _CopyWithImpl$Mutation$LoginCustomer(
    this._instance,
    this._then,
  );

  final Mutation$LoginCustomer _instance;

  final TRes Function(Mutation$LoginCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loginCustomer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LoginCustomer(
        loginCustomer: loginCustomer == _undefined || loginCustomer == null
            ? _instance.loginCustomer
            : (loginCustomer as Mutation$LoginCustomer$loginCustomer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$LoginCustomer$loginCustomer<TRes> get loginCustomer {
    final local$loginCustomer = _instance.loginCustomer;
    return CopyWith$Mutation$LoginCustomer$loginCustomer(
        local$loginCustomer, (e) => call(loginCustomer: e));
  }
}

class _CopyWithStubImpl$Mutation$LoginCustomer<TRes>
    implements CopyWith$Mutation$LoginCustomer<TRes> {
  _CopyWithStubImpl$Mutation$LoginCustomer(this._res);

  TRes _res;

  call({
    Mutation$LoginCustomer$loginCustomer? loginCustomer,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$LoginCustomer$loginCustomer<TRes> get loginCustomer =>
      CopyWith$Mutation$LoginCustomer$loginCustomer.stub(_res);
}

const documentNodeMutationLoginCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'LoginCustomer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'loginCustomerInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'LoginCustomerInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'loginCustomer'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'loginCustomerInput'),
            value: VariableNode(name: NameNode(value: 'loginCustomerInput')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'social'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'cart'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'quantity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
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
            name: NameNode(value: 'isAdmin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
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
Mutation$LoginCustomer _parserFn$Mutation$LoginCustomer(
        Map<String, dynamic> data) =>
    Mutation$LoginCustomer.fromJson(data);
typedef OnMutationCompleted$Mutation$LoginCustomer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$LoginCustomer?,
);

class Options$Mutation$LoginCustomer
    extends graphql.MutationOptions<Mutation$LoginCustomer> {
  Options$Mutation$LoginCustomer({
    String? operationName,
    required Variables$Mutation$LoginCustomer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginCustomer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LoginCustomer? onCompleted,
    graphql.OnMutationUpdate<Mutation$LoginCustomer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$LoginCustomer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLoginCustomer,
          parserFn: _parserFn$Mutation$LoginCustomer,
        );

  final OnMutationCompleted$Mutation$LoginCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$LoginCustomer
    extends graphql.WatchQueryOptions<Mutation$LoginCustomer> {
  WatchOptions$Mutation$LoginCustomer({
    String? operationName,
    required Variables$Mutation$LoginCustomer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginCustomer? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationLoginCustomer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$LoginCustomer,
        );
}

extension ClientExtension$Mutation$LoginCustomer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$LoginCustomer>> mutate$LoginCustomer(
          Options$Mutation$LoginCustomer options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$LoginCustomer> watchMutation$LoginCustomer(
          WatchOptions$Mutation$LoginCustomer options) =>
      this.watchMutation(options);
}

class Mutation$LoginCustomer$HookResult {
  Mutation$LoginCustomer$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$LoginCustomer runMutation;

  final graphql.QueryResult<Mutation$LoginCustomer> result;
}

Mutation$LoginCustomer$HookResult useMutation$LoginCustomer(
    [WidgetOptions$Mutation$LoginCustomer? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$LoginCustomer());
  return Mutation$LoginCustomer$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$LoginCustomer> useWatchMutation$LoginCustomer(
        WatchOptions$Mutation$LoginCustomer options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$LoginCustomer
    extends graphql.MutationOptions<Mutation$LoginCustomer> {
  WidgetOptions$Mutation$LoginCustomer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginCustomer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LoginCustomer? onCompleted,
    graphql.OnMutationUpdate<Mutation$LoginCustomer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$LoginCustomer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLoginCustomer,
          parserFn: _parserFn$Mutation$LoginCustomer,
        );

  final OnMutationCompleted$Mutation$LoginCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$LoginCustomer
    = graphql.MultiSourceResult<Mutation$LoginCustomer> Function(
  Variables$Mutation$LoginCustomer, {
  Object? optimisticResult,
  Mutation$LoginCustomer? typedOptimisticResult,
});
typedef Builder$Mutation$LoginCustomer = widgets.Widget Function(
  RunMutation$Mutation$LoginCustomer,
  graphql.QueryResult<Mutation$LoginCustomer>?,
);

class Mutation$LoginCustomer$Widget
    extends graphql_flutter.Mutation<Mutation$LoginCustomer> {
  Mutation$LoginCustomer$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$LoginCustomer? options,
    required Builder$Mutation$LoginCustomer builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$LoginCustomer(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$LoginCustomer$loginCustomer {
  Mutation$LoginCustomer$loginCustomer({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.phone,
    this.role,
    this.social,
    this.userName,
    this.avatar,
    this.cart,
    this.isAdmin,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'GCustomer',
  });

  factory Mutation$LoginCustomer$loginCustomer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$social = json['social'];
    final l$userName = json['userName'];
    final l$avatar = json['avatar'];
    final l$cart = json['cart'];
    final l$isAdmin = json['isAdmin'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$LoginCustomer$loginCustomer(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      phone: (l$phone as String?),
      role: (l$role as String?),
      social: (l$social as String?),
      userName: (l$userName as String?),
      avatar: (l$avatar as String?),
      cart: (l$cart as List<dynamic>?)
          ?.map((e) => Mutation$LoginCustomer$loginCustomer$cart.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isAdmin: (l$isAdmin as bool?),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String firstName;

  final String lastName;

  final String? phone;

  final String? role;

  final String? social;

  final String? userName;

  final String? avatar;

  final List<Mutation$LoginCustomer$loginCustomer$cart>? cart;

  final bool? isAdmin;

  final String? createdAt;

  final String? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$role = role;
    _resultData['role'] = l$role;
    final l$social = social;
    _resultData['social'] = l$social;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$cart = cart;
    _resultData['cart'] = l$cart?.map((e) => e.toJson()).toList();
    final l$isAdmin = isAdmin;
    _resultData['isAdmin'] = l$isAdmin;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phone = phone;
    final l$role = role;
    final l$social = social;
    final l$userName = userName;
    final l$avatar = avatar;
    final l$cart = cart;
    final l$isAdmin = isAdmin;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$phone,
      l$role,
      l$social,
      l$userName,
      l$avatar,
      l$cart == null ? null : Object.hashAll(l$cart.map((v) => v)),
      l$isAdmin,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LoginCustomer$loginCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$social = social;
    final lOther$social = other.social;
    if (l$social != lOther$social) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$cart = cart;
    final lOther$cart = other.cart;
    if (l$cart != null && lOther$cart != null) {
      if (l$cart.length != lOther$cart.length) {
        return false;
      }
      for (int i = 0; i < l$cart.length; i++) {
        final l$cart$entry = l$cart[i];
        final lOther$cart$entry = lOther$cart[i];
        if (l$cart$entry != lOther$cart$entry) {
          return false;
        }
      }
    } else if (l$cart != lOther$cart) {
      return false;
    }
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Mutation$LoginCustomer$loginCustomer
    on Mutation$LoginCustomer$loginCustomer {
  CopyWith$Mutation$LoginCustomer$loginCustomer<
          Mutation$LoginCustomer$loginCustomer>
      get copyWith => CopyWith$Mutation$LoginCustomer$loginCustomer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$LoginCustomer$loginCustomer<TRes> {
  factory CopyWith$Mutation$LoginCustomer$loginCustomer(
    Mutation$LoginCustomer$loginCustomer instance,
    TRes Function(Mutation$LoginCustomer$loginCustomer) then,
  ) = _CopyWithImpl$Mutation$LoginCustomer$loginCustomer;

  factory CopyWith$Mutation$LoginCustomer$loginCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LoginCustomer$loginCustomer;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? role,
    String? social,
    String? userName,
    String? avatar,
    List<Mutation$LoginCustomer$loginCustomer$cart>? cart,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
  TRes cart(
      Iterable<Mutation$LoginCustomer$loginCustomer$cart>? Function(
              Iterable<
                  CopyWith$Mutation$LoginCustomer$loginCustomer$cart<
                      Mutation$LoginCustomer$loginCustomer$cart>>?)
          _fn);
}

class _CopyWithImpl$Mutation$LoginCustomer$loginCustomer<TRes>
    implements CopyWith$Mutation$LoginCustomer$loginCustomer<TRes> {
  _CopyWithImpl$Mutation$LoginCustomer$loginCustomer(
    this._instance,
    this._then,
  );

  final Mutation$LoginCustomer$loginCustomer _instance;

  final TRes Function(Mutation$LoginCustomer$loginCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? social = _undefined,
    Object? userName = _undefined,
    Object? avatar = _undefined,
    Object? cart = _undefined,
    Object? isAdmin = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LoginCustomer$loginCustomer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        role: role == _undefined ? _instance.role : (role as String?),
        social: social == _undefined ? _instance.social : (social as String?),
        userName:
            userName == _undefined ? _instance.userName : (userName as String?),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        cart: cart == _undefined
            ? _instance.cart
            : (cart as List<Mutation$LoginCustomer$loginCustomer$cart>?),
        isAdmin: isAdmin == _undefined ? _instance.isAdmin : (isAdmin as bool?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes cart(
          Iterable<Mutation$LoginCustomer$loginCustomer$cart>? Function(
                  Iterable<
                      CopyWith$Mutation$LoginCustomer$loginCustomer$cart<
                          Mutation$LoginCustomer$loginCustomer$cart>>?)
              _fn) =>
      call(
          cart: _fn(_instance.cart
              ?.map((e) => CopyWith$Mutation$LoginCustomer$loginCustomer$cart(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Mutation$LoginCustomer$loginCustomer<TRes>
    implements CopyWith$Mutation$LoginCustomer$loginCustomer<TRes> {
  _CopyWithStubImpl$Mutation$LoginCustomer$loginCustomer(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? role,
    String? social,
    String? userName,
    String? avatar,
    List<Mutation$LoginCustomer$loginCustomer$cart>? cart,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
  cart(_fn) => _res;
}

class Mutation$LoginCustomer$loginCustomer$cart {
  Mutation$LoginCustomer$loginCustomer$cart({
    required this.id,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'GCart',
  });

  factory Mutation$LoginCustomer$loginCustomer$cart.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$quantity = json['quantity'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$LoginCustomer$loginCustomer$cart(
      id: (l$id as String),
      quantity: (l$quantity as int),
      createdAt: (l$createdAt as String),
      updatedAt: (l$updatedAt as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int quantity;

  final String createdAt;

  final String updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$quantity = quantity;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$quantity,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LoginCustomer$loginCustomer$cart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Mutation$LoginCustomer$loginCustomer$cart
    on Mutation$LoginCustomer$loginCustomer$cart {
  CopyWith$Mutation$LoginCustomer$loginCustomer$cart<
          Mutation$LoginCustomer$loginCustomer$cart>
      get copyWith => CopyWith$Mutation$LoginCustomer$loginCustomer$cart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$LoginCustomer$loginCustomer$cart<TRes> {
  factory CopyWith$Mutation$LoginCustomer$loginCustomer$cart(
    Mutation$LoginCustomer$loginCustomer$cart instance,
    TRes Function(Mutation$LoginCustomer$loginCustomer$cart) then,
  ) = _CopyWithImpl$Mutation$LoginCustomer$loginCustomer$cart;

  factory CopyWith$Mutation$LoginCustomer$loginCustomer$cart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LoginCustomer$loginCustomer$cart;

  TRes call({
    String? id,
    int? quantity,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$LoginCustomer$loginCustomer$cart<TRes>
    implements CopyWith$Mutation$LoginCustomer$loginCustomer$cart<TRes> {
  _CopyWithImpl$Mutation$LoginCustomer$loginCustomer$cart(
    this._instance,
    this._then,
  );

  final Mutation$LoginCustomer$loginCustomer$cart _instance;

  final TRes Function(Mutation$LoginCustomer$loginCustomer$cart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? quantity = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LoginCustomer$loginCustomer$cart(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as String),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$LoginCustomer$loginCustomer$cart<TRes>
    implements CopyWith$Mutation$LoginCustomer$loginCustomer$cart<TRes> {
  _CopyWithStubImpl$Mutation$LoginCustomer$loginCustomer$cart(this._res);

  TRes _res;

  call({
    String? id,
    int? quantity,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCustomerProfile {
  Query$GetCustomerProfile({
    required this.getCustomerProfile,
    this.$__typename = 'Query',
  });

  factory Query$GetCustomerProfile.fromJson(Map<String, dynamic> json) {
    final l$getCustomerProfile = json['getCustomerProfile'];
    final l$$__typename = json['__typename'];
    return Query$GetCustomerProfile(
      getCustomerProfile: Query$GetCustomerProfile$getCustomerProfile.fromJson(
          (l$getCustomerProfile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCustomerProfile$getCustomerProfile getCustomerProfile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getCustomerProfile = getCustomerProfile;
    _resultData['getCustomerProfile'] = l$getCustomerProfile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getCustomerProfile = getCustomerProfile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getCustomerProfile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCustomerProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getCustomerProfile = getCustomerProfile;
    final lOther$getCustomerProfile = other.getCustomerProfile;
    if (l$getCustomerProfile != lOther$getCustomerProfile) {
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

extension UtilityExtension$Query$GetCustomerProfile
    on Query$GetCustomerProfile {
  CopyWith$Query$GetCustomerProfile<Query$GetCustomerProfile> get copyWith =>
      CopyWith$Query$GetCustomerProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCustomerProfile<TRes> {
  factory CopyWith$Query$GetCustomerProfile(
    Query$GetCustomerProfile instance,
    TRes Function(Query$GetCustomerProfile) then,
  ) = _CopyWithImpl$Query$GetCustomerProfile;

  factory CopyWith$Query$GetCustomerProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCustomerProfile;

  TRes call({
    Query$GetCustomerProfile$getCustomerProfile? getCustomerProfile,
    String? $__typename,
  });
  CopyWith$Query$GetCustomerProfile$getCustomerProfile<TRes>
      get getCustomerProfile;
}

class _CopyWithImpl$Query$GetCustomerProfile<TRes>
    implements CopyWith$Query$GetCustomerProfile<TRes> {
  _CopyWithImpl$Query$GetCustomerProfile(
    this._instance,
    this._then,
  );

  final Query$GetCustomerProfile _instance;

  final TRes Function(Query$GetCustomerProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getCustomerProfile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCustomerProfile(
        getCustomerProfile:
            getCustomerProfile == _undefined || getCustomerProfile == null
                ? _instance.getCustomerProfile
                : (getCustomerProfile
                    as Query$GetCustomerProfile$getCustomerProfile),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCustomerProfile$getCustomerProfile<TRes>
      get getCustomerProfile {
    final local$getCustomerProfile = _instance.getCustomerProfile;
    return CopyWith$Query$GetCustomerProfile$getCustomerProfile(
        local$getCustomerProfile, (e) => call(getCustomerProfile: e));
  }
}

class _CopyWithStubImpl$Query$GetCustomerProfile<TRes>
    implements CopyWith$Query$GetCustomerProfile<TRes> {
  _CopyWithStubImpl$Query$GetCustomerProfile(this._res);

  TRes _res;

  call({
    Query$GetCustomerProfile$getCustomerProfile? getCustomerProfile,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCustomerProfile$getCustomerProfile<TRes>
      get getCustomerProfile =>
          CopyWith$Query$GetCustomerProfile$getCustomerProfile.stub(_res);
}

const documentNodeQueryGetCustomerProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCustomerProfile'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getCustomerProfile'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdmin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
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
Query$GetCustomerProfile _parserFn$Query$GetCustomerProfile(
        Map<String, dynamic> data) =>
    Query$GetCustomerProfile.fromJson(data);
typedef OnQueryComplete$Query$GetCustomerProfile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCustomerProfile?,
);

class Options$Query$GetCustomerProfile
    extends graphql.QueryOptions<Query$GetCustomerProfile> {
  Options$Query$GetCustomerProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCustomerProfile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCustomerProfile? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$GetCustomerProfile(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCustomerProfile,
          parserFn: _parserFn$Query$GetCustomerProfile,
        );

  final OnQueryComplete$Query$GetCustomerProfile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCustomerProfile
    extends graphql.WatchQueryOptions<Query$GetCustomerProfile> {
  WatchOptions$Query$GetCustomerProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCustomerProfile? typedOptimisticResult,
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
          document: documentNodeQueryGetCustomerProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCustomerProfile,
        );
}

class FetchMoreOptions$Query$GetCustomerProfile
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCustomerProfile(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetCustomerProfile,
        );
}

extension ClientExtension$Query$GetCustomerProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCustomerProfile>>
      query$GetCustomerProfile(
              [Options$Query$GetCustomerProfile? options]) async =>
          await this.query(options ?? Options$Query$GetCustomerProfile());
  graphql.ObservableQuery<Query$GetCustomerProfile>
      watchQuery$GetCustomerProfile(
              [WatchOptions$Query$GetCustomerProfile? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetCustomerProfile());
  void writeQuery$GetCustomerProfile({
    required Query$GetCustomerProfile data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetCustomerProfile)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCustomerProfile? readQuery$GetCustomerProfile(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCustomerProfile)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCustomerProfile.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCustomerProfile>
    useQuery$GetCustomerProfile([Options$Query$GetCustomerProfile? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetCustomerProfile());
graphql.ObservableQuery<Query$GetCustomerProfile>
    useWatchQuery$GetCustomerProfile(
            [WatchOptions$Query$GetCustomerProfile? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetCustomerProfile());

class Query$GetCustomerProfile$Widget
    extends graphql_flutter.Query<Query$GetCustomerProfile> {
  Query$GetCustomerProfile$Widget({
    widgets.Key? key,
    Options$Query$GetCustomerProfile? options,
    required graphql_flutter.QueryBuilder<Query$GetCustomerProfile> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetCustomerProfile(),
          builder: builder,
        );
}

class Query$GetCustomerProfile$getCustomerProfile {
  Query$GetCustomerProfile$getCustomerProfile({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.userName,
    this.avatar,
    this.phone,
    this.role,
    this.isAdmin,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'GCustomer',
  });

  factory Query$GetCustomerProfile$getCustomerProfile.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$userName = json['userName'];
    final l$avatar = json['avatar'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$isAdmin = json['isAdmin'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$GetCustomerProfile$getCustomerProfile(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      userName: (l$userName as String?),
      avatar: (l$avatar as String?),
      phone: (l$phone as String?),
      role: (l$role as String?),
      isAdmin: (l$isAdmin as bool?),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String firstName;

  final String lastName;

  final String? userName;

  final String? avatar;

  final String? phone;

  final String? role;

  final bool? isAdmin;

  final String? createdAt;

  final String? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$role = role;
    _resultData['role'] = l$role;
    final l$isAdmin = isAdmin;
    _resultData['isAdmin'] = l$isAdmin;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$userName = userName;
    final l$avatar = avatar;
    final l$phone = phone;
    final l$role = role;
    final l$isAdmin = isAdmin;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$userName,
      l$avatar,
      l$phone,
      l$role,
      l$isAdmin,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCustomerProfile$getCustomerProfile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Query$GetCustomerProfile$getCustomerProfile
    on Query$GetCustomerProfile$getCustomerProfile {
  CopyWith$Query$GetCustomerProfile$getCustomerProfile<
          Query$GetCustomerProfile$getCustomerProfile>
      get copyWith => CopyWith$Query$GetCustomerProfile$getCustomerProfile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCustomerProfile$getCustomerProfile<TRes> {
  factory CopyWith$Query$GetCustomerProfile$getCustomerProfile(
    Query$GetCustomerProfile$getCustomerProfile instance,
    TRes Function(Query$GetCustomerProfile$getCustomerProfile) then,
  ) = _CopyWithImpl$Query$GetCustomerProfile$getCustomerProfile;

  factory CopyWith$Query$GetCustomerProfile$getCustomerProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCustomerProfile$getCustomerProfile;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? userName,
    String? avatar,
    String? phone,
    String? role,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCustomerProfile$getCustomerProfile<TRes>
    implements CopyWith$Query$GetCustomerProfile$getCustomerProfile<TRes> {
  _CopyWithImpl$Query$GetCustomerProfile$getCustomerProfile(
    this._instance,
    this._then,
  );

  final Query$GetCustomerProfile$getCustomerProfile _instance;

  final TRes Function(Query$GetCustomerProfile$getCustomerProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? userName = _undefined,
    Object? avatar = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? isAdmin = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCustomerProfile$getCustomerProfile(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        userName:
            userName == _undefined ? _instance.userName : (userName as String?),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        role: role == _undefined ? _instance.role : (role as String?),
        isAdmin: isAdmin == _undefined ? _instance.isAdmin : (isAdmin as bool?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCustomerProfile$getCustomerProfile<TRes>
    implements CopyWith$Query$GetCustomerProfile$getCustomerProfile<TRes> {
  _CopyWithStubImpl$Query$GetCustomerProfile$getCustomerProfile(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? userName,
    String? avatar,
    String? phone,
    String? role,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCustomers {
  Query$GetCustomers({
    required this.getCustomers,
    this.$__typename = 'Query',
  });

  factory Query$GetCustomers.fromJson(Map<String, dynamic> json) {
    final l$getCustomers = json['getCustomers'];
    final l$$__typename = json['__typename'];
    return Query$GetCustomers(
      getCustomers: (l$getCustomers as List<dynamic>)
          .map((e) => Query$GetCustomers$getCustomers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetCustomers$getCustomers> getCustomers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getCustomers = getCustomers;
    _resultData['getCustomers'] =
        l$getCustomers.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getCustomers = getCustomers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$getCustomers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCustomers) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getCustomers = getCustomers;
    final lOther$getCustomers = other.getCustomers;
    if (l$getCustomers.length != lOther$getCustomers.length) {
      return false;
    }
    for (int i = 0; i < l$getCustomers.length; i++) {
      final l$getCustomers$entry = l$getCustomers[i];
      final lOther$getCustomers$entry = lOther$getCustomers[i];
      if (l$getCustomers$entry != lOther$getCustomers$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCustomers on Query$GetCustomers {
  CopyWith$Query$GetCustomers<Query$GetCustomers> get copyWith =>
      CopyWith$Query$GetCustomers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCustomers<TRes> {
  factory CopyWith$Query$GetCustomers(
    Query$GetCustomers instance,
    TRes Function(Query$GetCustomers) then,
  ) = _CopyWithImpl$Query$GetCustomers;

  factory CopyWith$Query$GetCustomers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCustomers;

  TRes call({
    List<Query$GetCustomers$getCustomers>? getCustomers,
    String? $__typename,
  });
  TRes getCustomers(
      Iterable<Query$GetCustomers$getCustomers> Function(
              Iterable<
                  CopyWith$Query$GetCustomers$getCustomers<
                      Query$GetCustomers$getCustomers>>)
          _fn);
}

class _CopyWithImpl$Query$GetCustomers<TRes>
    implements CopyWith$Query$GetCustomers<TRes> {
  _CopyWithImpl$Query$GetCustomers(
    this._instance,
    this._then,
  );

  final Query$GetCustomers _instance;

  final TRes Function(Query$GetCustomers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getCustomers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCustomers(
        getCustomers: getCustomers == _undefined || getCustomers == null
            ? _instance.getCustomers
            : (getCustomers as List<Query$GetCustomers$getCustomers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes getCustomers(
          Iterable<Query$GetCustomers$getCustomers> Function(
                  Iterable<
                      CopyWith$Query$GetCustomers$getCustomers<
                          Query$GetCustomers$getCustomers>>)
              _fn) =>
      call(
          getCustomers: _fn(_instance.getCustomers
              .map((e) => CopyWith$Query$GetCustomers$getCustomers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCustomers<TRes>
    implements CopyWith$Query$GetCustomers<TRes> {
  _CopyWithStubImpl$Query$GetCustomers(this._res);

  TRes _res;

  call({
    List<Query$GetCustomers$getCustomers>? getCustomers,
    String? $__typename,
  }) =>
      _res;
  getCustomers(_fn) => _res;
}

const documentNodeQueryGetCustomers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCustomers'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getCustomers'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'social'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdmin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
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
Query$GetCustomers _parserFn$Query$GetCustomers(Map<String, dynamic> data) =>
    Query$GetCustomers.fromJson(data);
typedef OnQueryComplete$Query$GetCustomers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCustomers?,
);

class Options$Query$GetCustomers
    extends graphql.QueryOptions<Query$GetCustomers> {
  Options$Query$GetCustomers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCustomers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCustomers? onComplete,
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
                    data == null ? null : _parserFn$Query$GetCustomers(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCustomers,
          parserFn: _parserFn$Query$GetCustomers,
        );

  final OnQueryComplete$Query$GetCustomers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCustomers
    extends graphql.WatchQueryOptions<Query$GetCustomers> {
  WatchOptions$Query$GetCustomers({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCustomers? typedOptimisticResult,
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
          document: documentNodeQueryGetCustomers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCustomers,
        );
}

class FetchMoreOptions$Query$GetCustomers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCustomers(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetCustomers,
        );
}

extension ClientExtension$Query$GetCustomers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCustomers>> query$GetCustomers(
          [Options$Query$GetCustomers? options]) async =>
      await this.query(options ?? Options$Query$GetCustomers());
  graphql.ObservableQuery<Query$GetCustomers> watchQuery$GetCustomers(
          [WatchOptions$Query$GetCustomers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetCustomers());
  void writeQuery$GetCustomers({
    required Query$GetCustomers data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetCustomers)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCustomers? readQuery$GetCustomers({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCustomers)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCustomers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCustomers> useQuery$GetCustomers(
        [Options$Query$GetCustomers? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetCustomers());
graphql.ObservableQuery<Query$GetCustomers> useWatchQuery$GetCustomers(
        [WatchOptions$Query$GetCustomers? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetCustomers());

class Query$GetCustomers$Widget
    extends graphql_flutter.Query<Query$GetCustomers> {
  Query$GetCustomers$Widget({
    widgets.Key? key,
    Options$Query$GetCustomers? options,
    required graphql_flutter.QueryBuilder<Query$GetCustomers> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetCustomers(),
          builder: builder,
        );
}

class Query$GetCustomers$getCustomers {
  Query$GetCustomers$getCustomers({
    required this.id,
    required this.email,
    this.social,
    required this.firstName,
    required this.lastName,
    this.phone,
    this.userName,
    this.avatar,
    this.role,
    this.isAdmin,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'GCustomer',
  });

  factory Query$GetCustomers$getCustomers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$social = json['social'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phone = json['phone'];
    final l$userName = json['userName'];
    final l$avatar = json['avatar'];
    final l$role = json['role'];
    final l$isAdmin = json['isAdmin'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$GetCustomers$getCustomers(
      id: (l$id as String),
      email: (l$email as String),
      social: (l$social as String?),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      phone: (l$phone as String?),
      userName: (l$userName as String?),
      avatar: (l$avatar as String?),
      role: (l$role as String?),
      isAdmin: (l$isAdmin as bool?),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String? social;

  final String firstName;

  final String lastName;

  final String? phone;

  final String? userName;

  final String? avatar;

  final String? role;

  final bool? isAdmin;

  final String? createdAt;

  final String? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$social = social;
    _resultData['social'] = l$social;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$role = role;
    _resultData['role'] = l$role;
    final l$isAdmin = isAdmin;
    _resultData['isAdmin'] = l$isAdmin;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$social = social;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phone = phone;
    final l$userName = userName;
    final l$avatar = avatar;
    final l$role = role;
    final l$isAdmin = isAdmin;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$social,
      l$firstName,
      l$lastName,
      l$phone,
      l$userName,
      l$avatar,
      l$role,
      l$isAdmin,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCustomers$getCustomers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$social = social;
    final lOther$social = other.social;
    if (l$social != lOther$social) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Query$GetCustomers$getCustomers
    on Query$GetCustomers$getCustomers {
  CopyWith$Query$GetCustomers$getCustomers<Query$GetCustomers$getCustomers>
      get copyWith => CopyWith$Query$GetCustomers$getCustomers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCustomers$getCustomers<TRes> {
  factory CopyWith$Query$GetCustomers$getCustomers(
    Query$GetCustomers$getCustomers instance,
    TRes Function(Query$GetCustomers$getCustomers) then,
  ) = _CopyWithImpl$Query$GetCustomers$getCustomers;

  factory CopyWith$Query$GetCustomers$getCustomers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCustomers$getCustomers;

  TRes call({
    String? id,
    String? email,
    String? social,
    String? firstName,
    String? lastName,
    String? phone,
    String? userName,
    String? avatar,
    String? role,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCustomers$getCustomers<TRes>
    implements CopyWith$Query$GetCustomers$getCustomers<TRes> {
  _CopyWithImpl$Query$GetCustomers$getCustomers(
    this._instance,
    this._then,
  );

  final Query$GetCustomers$getCustomers _instance;

  final TRes Function(Query$GetCustomers$getCustomers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? social = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phone = _undefined,
    Object? userName = _undefined,
    Object? avatar = _undefined,
    Object? role = _undefined,
    Object? isAdmin = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCustomers$getCustomers(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        social: social == _undefined ? _instance.social : (social as String?),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        userName:
            userName == _undefined ? _instance.userName : (userName as String?),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        role: role == _undefined ? _instance.role : (role as String?),
        isAdmin: isAdmin == _undefined ? _instance.isAdmin : (isAdmin as bool?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCustomers$getCustomers<TRes>
    implements CopyWith$Query$GetCustomers$getCustomers<TRes> {
  _CopyWithStubImpl$Query$GetCustomers$getCustomers(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? social,
    String? firstName,
    String? lastName,
    String? phone,
    String? userName,
    String? avatar,
    String? role,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetCustomerById {
  factory Variables$Query$GetCustomerById(
          {required String getCustomerByIdId}) =>
      Variables$Query$GetCustomerById._({
        r'getCustomerByIdId': getCustomerByIdId,
      });

  Variables$Query$GetCustomerById._(this._$data);

  factory Variables$Query$GetCustomerById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$getCustomerByIdId = data['getCustomerByIdId'];
    result$data['getCustomerByIdId'] = (l$getCustomerByIdId as String);
    return Variables$Query$GetCustomerById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get getCustomerByIdId => (_$data['getCustomerByIdId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$getCustomerByIdId = getCustomerByIdId;
    result$data['getCustomerByIdId'] = l$getCustomerByIdId;
    return result$data;
  }

  CopyWith$Variables$Query$GetCustomerById<Variables$Query$GetCustomerById>
      get copyWith => CopyWith$Variables$Query$GetCustomerById(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCustomerById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getCustomerByIdId = getCustomerByIdId;
    final lOther$getCustomerByIdId = other.getCustomerByIdId;
    if (l$getCustomerByIdId != lOther$getCustomerByIdId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$getCustomerByIdId = getCustomerByIdId;
    return Object.hashAll([l$getCustomerByIdId]);
  }
}

abstract class CopyWith$Variables$Query$GetCustomerById<TRes> {
  factory CopyWith$Variables$Query$GetCustomerById(
    Variables$Query$GetCustomerById instance,
    TRes Function(Variables$Query$GetCustomerById) then,
  ) = _CopyWithImpl$Variables$Query$GetCustomerById;

  factory CopyWith$Variables$Query$GetCustomerById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCustomerById;

  TRes call({String? getCustomerByIdId});
}

class _CopyWithImpl$Variables$Query$GetCustomerById<TRes>
    implements CopyWith$Variables$Query$GetCustomerById<TRes> {
  _CopyWithImpl$Variables$Query$GetCustomerById(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCustomerById _instance;

  final TRes Function(Variables$Query$GetCustomerById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getCustomerByIdId = _undefined}) =>
      _then(Variables$Query$GetCustomerById._({
        ..._instance._$data,
        if (getCustomerByIdId != _undefined && getCustomerByIdId != null)
          'getCustomerByIdId': (getCustomerByIdId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCustomerById<TRes>
    implements CopyWith$Variables$Query$GetCustomerById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCustomerById(this._res);

  TRes _res;

  call({String? getCustomerByIdId}) => _res;
}

class Query$GetCustomerById {
  Query$GetCustomerById({
    required this.getCustomerById,
    this.$__typename = 'Query',
  });

  factory Query$GetCustomerById.fromJson(Map<String, dynamic> json) {
    final l$getCustomerById = json['getCustomerById'];
    final l$$__typename = json['__typename'];
    return Query$GetCustomerById(
      getCustomerById: Query$GetCustomerById$getCustomerById.fromJson(
          (l$getCustomerById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCustomerById$getCustomerById getCustomerById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getCustomerById = getCustomerById;
    _resultData['getCustomerById'] = l$getCustomerById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getCustomerById = getCustomerById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getCustomerById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCustomerById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getCustomerById = getCustomerById;
    final lOther$getCustomerById = other.getCustomerById;
    if (l$getCustomerById != lOther$getCustomerById) {
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

extension UtilityExtension$Query$GetCustomerById on Query$GetCustomerById {
  CopyWith$Query$GetCustomerById<Query$GetCustomerById> get copyWith =>
      CopyWith$Query$GetCustomerById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCustomerById<TRes> {
  factory CopyWith$Query$GetCustomerById(
    Query$GetCustomerById instance,
    TRes Function(Query$GetCustomerById) then,
  ) = _CopyWithImpl$Query$GetCustomerById;

  factory CopyWith$Query$GetCustomerById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCustomerById;

  TRes call({
    Query$GetCustomerById$getCustomerById? getCustomerById,
    String? $__typename,
  });
  CopyWith$Query$GetCustomerById$getCustomerById<TRes> get getCustomerById;
}

class _CopyWithImpl$Query$GetCustomerById<TRes>
    implements CopyWith$Query$GetCustomerById<TRes> {
  _CopyWithImpl$Query$GetCustomerById(
    this._instance,
    this._then,
  );

  final Query$GetCustomerById _instance;

  final TRes Function(Query$GetCustomerById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getCustomerById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCustomerById(
        getCustomerById:
            getCustomerById == _undefined || getCustomerById == null
                ? _instance.getCustomerById
                : (getCustomerById as Query$GetCustomerById$getCustomerById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCustomerById$getCustomerById<TRes> get getCustomerById {
    final local$getCustomerById = _instance.getCustomerById;
    return CopyWith$Query$GetCustomerById$getCustomerById(
        local$getCustomerById, (e) => call(getCustomerById: e));
  }
}

class _CopyWithStubImpl$Query$GetCustomerById<TRes>
    implements CopyWith$Query$GetCustomerById<TRes> {
  _CopyWithStubImpl$Query$GetCustomerById(this._res);

  TRes _res;

  call({
    Query$GetCustomerById$getCustomerById? getCustomerById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCustomerById$getCustomerById<TRes> get getCustomerById =>
      CopyWith$Query$GetCustomerById$getCustomerById.stub(_res);
}

const documentNodeQueryGetCustomerById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCustomerById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getCustomerByIdId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getCustomerById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'getCustomerByIdId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'social'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdmin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'cart'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'quantity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'updatedAt'),
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
Query$GetCustomerById _parserFn$Query$GetCustomerById(
        Map<String, dynamic> data) =>
    Query$GetCustomerById.fromJson(data);
typedef OnQueryComplete$Query$GetCustomerById = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCustomerById?,
);

class Options$Query$GetCustomerById
    extends graphql.QueryOptions<Query$GetCustomerById> {
  Options$Query$GetCustomerById({
    String? operationName,
    required Variables$Query$GetCustomerById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCustomerById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCustomerById? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$GetCustomerById(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCustomerById,
          parserFn: _parserFn$Query$GetCustomerById,
        );

  final OnQueryComplete$Query$GetCustomerById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCustomerById
    extends graphql.WatchQueryOptions<Query$GetCustomerById> {
  WatchOptions$Query$GetCustomerById({
    String? operationName,
    required Variables$Query$GetCustomerById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCustomerById? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetCustomerById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCustomerById,
        );
}

class FetchMoreOptions$Query$GetCustomerById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCustomerById({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetCustomerById variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetCustomerById,
        );
}

extension ClientExtension$Query$GetCustomerById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCustomerById>> query$GetCustomerById(
          Options$Query$GetCustomerById options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetCustomerById> watchQuery$GetCustomerById(
          WatchOptions$Query$GetCustomerById options) =>
      this.watchQuery(options);
  void writeQuery$GetCustomerById({
    required Query$GetCustomerById data,
    required Variables$Query$GetCustomerById variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCustomerById),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCustomerById? readQuery$GetCustomerById({
    required Variables$Query$GetCustomerById variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetCustomerById),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCustomerById.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCustomerById> useQuery$GetCustomerById(
        Options$Query$GetCustomerById options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetCustomerById> useWatchQuery$GetCustomerById(
        WatchOptions$Query$GetCustomerById options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetCustomerById$Widget
    extends graphql_flutter.Query<Query$GetCustomerById> {
  Query$GetCustomerById$Widget({
    widgets.Key? key,
    required Options$Query$GetCustomerById options,
    required graphql_flutter.QueryBuilder<Query$GetCustomerById> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetCustomerById$getCustomerById {
  Query$GetCustomerById$getCustomerById({
    required this.id,
    required this.email,
    this.social,
    required this.firstName,
    required this.lastName,
    this.userName,
    this.avatar,
    this.phone,
    this.role,
    this.isAdmin,
    this.createdAt,
    this.updatedAt,
    this.cart,
    this.$__typename = 'GCustomer',
  });

  factory Query$GetCustomerById$getCustomerById.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$social = json['social'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$userName = json['userName'];
    final l$avatar = json['avatar'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$isAdmin = json['isAdmin'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$cart = json['cart'];
    final l$$__typename = json['__typename'];
    return Query$GetCustomerById$getCustomerById(
      id: (l$id as String),
      email: (l$email as String),
      social: (l$social as String?),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      userName: (l$userName as String?),
      avatar: (l$avatar as String?),
      phone: (l$phone as String?),
      role: (l$role as String?),
      isAdmin: (l$isAdmin as bool?),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      cart: (l$cart as List<dynamic>?)
          ?.map((e) => Query$GetCustomerById$getCustomerById$cart.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String? social;

  final String firstName;

  final String lastName;

  final String? userName;

  final String? avatar;

  final String? phone;

  final String? role;

  final bool? isAdmin;

  final String? createdAt;

  final String? updatedAt;

  final List<Query$GetCustomerById$getCustomerById$cart>? cart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$social = social;
    _resultData['social'] = l$social;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$role = role;
    _resultData['role'] = l$role;
    final l$isAdmin = isAdmin;
    _resultData['isAdmin'] = l$isAdmin;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$cart = cart;
    _resultData['cart'] = l$cart?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$social = social;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$userName = userName;
    final l$avatar = avatar;
    final l$phone = phone;
    final l$role = role;
    final l$isAdmin = isAdmin;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$cart = cart;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$social,
      l$firstName,
      l$lastName,
      l$userName,
      l$avatar,
      l$phone,
      l$role,
      l$isAdmin,
      l$createdAt,
      l$updatedAt,
      l$cart == null ? null : Object.hashAll(l$cart.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCustomerById$getCustomerById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$social = social;
    final lOther$social = other.social;
    if (l$social != lOther$social) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$cart = cart;
    final lOther$cart = other.cart;
    if (l$cart != null && lOther$cart != null) {
      if (l$cart.length != lOther$cart.length) {
        return false;
      }
      for (int i = 0; i < l$cart.length; i++) {
        final l$cart$entry = l$cart[i];
        final lOther$cart$entry = lOther$cart[i];
        if (l$cart$entry != lOther$cart$entry) {
          return false;
        }
      }
    } else if (l$cart != lOther$cart) {
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

extension UtilityExtension$Query$GetCustomerById$getCustomerById
    on Query$GetCustomerById$getCustomerById {
  CopyWith$Query$GetCustomerById$getCustomerById<
          Query$GetCustomerById$getCustomerById>
      get copyWith => CopyWith$Query$GetCustomerById$getCustomerById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCustomerById$getCustomerById<TRes> {
  factory CopyWith$Query$GetCustomerById$getCustomerById(
    Query$GetCustomerById$getCustomerById instance,
    TRes Function(Query$GetCustomerById$getCustomerById) then,
  ) = _CopyWithImpl$Query$GetCustomerById$getCustomerById;

  factory CopyWith$Query$GetCustomerById$getCustomerById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCustomerById$getCustomerById;

  TRes call({
    String? id,
    String? email,
    String? social,
    String? firstName,
    String? lastName,
    String? userName,
    String? avatar,
    String? phone,
    String? role,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    List<Query$GetCustomerById$getCustomerById$cart>? cart,
    String? $__typename,
  });
  TRes cart(
      Iterable<Query$GetCustomerById$getCustomerById$cart>? Function(
              Iterable<
                  CopyWith$Query$GetCustomerById$getCustomerById$cart<
                      Query$GetCustomerById$getCustomerById$cart>>?)
          _fn);
}

class _CopyWithImpl$Query$GetCustomerById$getCustomerById<TRes>
    implements CopyWith$Query$GetCustomerById$getCustomerById<TRes> {
  _CopyWithImpl$Query$GetCustomerById$getCustomerById(
    this._instance,
    this._then,
  );

  final Query$GetCustomerById$getCustomerById _instance;

  final TRes Function(Query$GetCustomerById$getCustomerById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? social = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? userName = _undefined,
    Object? avatar = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? isAdmin = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? cart = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCustomerById$getCustomerById(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        social: social == _undefined ? _instance.social : (social as String?),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        userName:
            userName == _undefined ? _instance.userName : (userName as String?),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        role: role == _undefined ? _instance.role : (role as String?),
        isAdmin: isAdmin == _undefined ? _instance.isAdmin : (isAdmin as bool?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        cart: cart == _undefined
            ? _instance.cart
            : (cart as List<Query$GetCustomerById$getCustomerById$cart>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes cart(
          Iterable<Query$GetCustomerById$getCustomerById$cart>? Function(
                  Iterable<
                      CopyWith$Query$GetCustomerById$getCustomerById$cart<
                          Query$GetCustomerById$getCustomerById$cart>>?)
              _fn) =>
      call(
          cart: _fn(_instance.cart
              ?.map((e) => CopyWith$Query$GetCustomerById$getCustomerById$cart(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetCustomerById$getCustomerById<TRes>
    implements CopyWith$Query$GetCustomerById$getCustomerById<TRes> {
  _CopyWithStubImpl$Query$GetCustomerById$getCustomerById(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? social,
    String? firstName,
    String? lastName,
    String? userName,
    String? avatar,
    String? phone,
    String? role,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    List<Query$GetCustomerById$getCustomerById$cart>? cart,
    String? $__typename,
  }) =>
      _res;
  cart(_fn) => _res;
}

class Query$GetCustomerById$getCustomerById$cart {
  Query$GetCustomerById$getCustomerById$cart({
    required this.id,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'GCart',
  });

  factory Query$GetCustomerById$getCustomerById$cart.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$quantity = json['quantity'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$GetCustomerById$getCustomerById$cart(
      id: (l$id as String),
      quantity: (l$quantity as int),
      createdAt: (l$createdAt as String),
      updatedAt: (l$updatedAt as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int quantity;

  final String createdAt;

  final String updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$quantity = quantity;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$quantity,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCustomerById$getCustomerById$cart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Query$GetCustomerById$getCustomerById$cart
    on Query$GetCustomerById$getCustomerById$cart {
  CopyWith$Query$GetCustomerById$getCustomerById$cart<
          Query$GetCustomerById$getCustomerById$cart>
      get copyWith => CopyWith$Query$GetCustomerById$getCustomerById$cart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCustomerById$getCustomerById$cart<TRes> {
  factory CopyWith$Query$GetCustomerById$getCustomerById$cart(
    Query$GetCustomerById$getCustomerById$cart instance,
    TRes Function(Query$GetCustomerById$getCustomerById$cart) then,
  ) = _CopyWithImpl$Query$GetCustomerById$getCustomerById$cart;

  factory CopyWith$Query$GetCustomerById$getCustomerById$cart.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCustomerById$getCustomerById$cart;

  TRes call({
    String? id,
    int? quantity,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCustomerById$getCustomerById$cart<TRes>
    implements CopyWith$Query$GetCustomerById$getCustomerById$cart<TRes> {
  _CopyWithImpl$Query$GetCustomerById$getCustomerById$cart(
    this._instance,
    this._then,
  );

  final Query$GetCustomerById$getCustomerById$cart _instance;

  final TRes Function(Query$GetCustomerById$getCustomerById$cart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? quantity = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCustomerById$getCustomerById$cart(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as String),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCustomerById$getCustomerById$cart<TRes>
    implements CopyWith$Query$GetCustomerById$getCustomerById$cart<TRes> {
  _CopyWithStubImpl$Query$GetCustomerById$getCustomerById$cart(this._res);

  TRes _res;

  call({
    String? id,
    int? quantity,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateCustomer {
  factory Variables$Mutation$UpdateCustomer({
    required String updateCustomerId,
    required Input$UpdateCustomerInput updateCustomerInput,
  }) =>
      Variables$Mutation$UpdateCustomer._({
        r'updateCustomerId': updateCustomerId,
        r'updateCustomerInput': updateCustomerInput,
      });

  Variables$Mutation$UpdateCustomer._(this._$data);

  factory Variables$Mutation$UpdateCustomer.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$updateCustomerId = data['updateCustomerId'];
    result$data['updateCustomerId'] = (l$updateCustomerId as String);
    final l$updateCustomerInput = data['updateCustomerInput'];
    result$data['updateCustomerInput'] = Input$UpdateCustomerInput.fromJson(
        (l$updateCustomerInput as Map<String, dynamic>));
    return Variables$Mutation$UpdateCustomer._(result$data);
  }

  Map<String, dynamic> _$data;

  String get updateCustomerId => (_$data['updateCustomerId'] as String);
  Input$UpdateCustomerInput get updateCustomerInput =>
      (_$data['updateCustomerInput'] as Input$UpdateCustomerInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$updateCustomerId = updateCustomerId;
    result$data['updateCustomerId'] = l$updateCustomerId;
    final l$updateCustomerInput = updateCustomerInput;
    result$data['updateCustomerInput'] = l$updateCustomerInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateCustomer<Variables$Mutation$UpdateCustomer>
      get copyWith => CopyWith$Variables$Mutation$UpdateCustomer(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCustomerId = updateCustomerId;
    final lOther$updateCustomerId = other.updateCustomerId;
    if (l$updateCustomerId != lOther$updateCustomerId) {
      return false;
    }
    final l$updateCustomerInput = updateCustomerInput;
    final lOther$updateCustomerInput = other.updateCustomerInput;
    if (l$updateCustomerInput != lOther$updateCustomerInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$updateCustomerId = updateCustomerId;
    final l$updateCustomerInput = updateCustomerInput;
    return Object.hashAll([
      l$updateCustomerId,
      l$updateCustomerInput,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateCustomer<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCustomer(
    Variables$Mutation$UpdateCustomer instance,
    TRes Function(Variables$Mutation$UpdateCustomer) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCustomer;

  factory CopyWith$Variables$Mutation$UpdateCustomer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCustomer;

  TRes call({
    String? updateCustomerId,
    Input$UpdateCustomerInput? updateCustomerInput,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateCustomer<TRes>
    implements CopyWith$Variables$Mutation$UpdateCustomer<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCustomer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateCustomer _instance;

  final TRes Function(Variables$Mutation$UpdateCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateCustomerId = _undefined,
    Object? updateCustomerInput = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateCustomer._({
        ..._instance._$data,
        if (updateCustomerId != _undefined && updateCustomerId != null)
          'updateCustomerId': (updateCustomerId as String),
        if (updateCustomerInput != _undefined && updateCustomerInput != null)
          'updateCustomerInput':
              (updateCustomerInput as Input$UpdateCustomerInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCustomer<TRes>
    implements CopyWith$Variables$Mutation$UpdateCustomer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCustomer(this._res);

  TRes _res;

  call({
    String? updateCustomerId,
    Input$UpdateCustomerInput? updateCustomerInput,
  }) =>
      _res;
}

class Mutation$UpdateCustomer {
  Mutation$UpdateCustomer({
    required this.updateCustomer,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateCustomer.fromJson(Map<String, dynamic> json) {
    final l$updateCustomer = json['updateCustomer'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCustomer(
      updateCustomer: Mutation$UpdateCustomer$updateCustomer.fromJson(
          (l$updateCustomer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateCustomer$updateCustomer updateCustomer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateCustomer = updateCustomer;
    _resultData['updateCustomer'] = l$updateCustomer.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateCustomer = updateCustomer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateCustomer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCustomer = updateCustomer;
    final lOther$updateCustomer = other.updateCustomer;
    if (l$updateCustomer != lOther$updateCustomer) {
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

extension UtilityExtension$Mutation$UpdateCustomer on Mutation$UpdateCustomer {
  CopyWith$Mutation$UpdateCustomer<Mutation$UpdateCustomer> get copyWith =>
      CopyWith$Mutation$UpdateCustomer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCustomer<TRes> {
  factory CopyWith$Mutation$UpdateCustomer(
    Mutation$UpdateCustomer instance,
    TRes Function(Mutation$UpdateCustomer) then,
  ) = _CopyWithImpl$Mutation$UpdateCustomer;

  factory CopyWith$Mutation$UpdateCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomer;

  TRes call({
    Mutation$UpdateCustomer$updateCustomer? updateCustomer,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> get updateCustomer;
}

class _CopyWithImpl$Mutation$UpdateCustomer<TRes>
    implements CopyWith$Mutation$UpdateCustomer<TRes> {
  _CopyWithImpl$Mutation$UpdateCustomer(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCustomer _instance;

  final TRes Function(Mutation$UpdateCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateCustomer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateCustomer(
        updateCustomer: updateCustomer == _undefined || updateCustomer == null
            ? _instance.updateCustomer
            : (updateCustomer as Mutation$UpdateCustomer$updateCustomer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> get updateCustomer {
    final local$updateCustomer = _instance.updateCustomer;
    return CopyWith$Mutation$UpdateCustomer$updateCustomer(
        local$updateCustomer, (e) => call(updateCustomer: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateCustomer<TRes>
    implements CopyWith$Mutation$UpdateCustomer<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomer(this._res);

  TRes _res;

  call({
    Mutation$UpdateCustomer$updateCustomer? updateCustomer,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> get updateCustomer =>
      CopyWith$Mutation$UpdateCustomer$updateCustomer.stub(_res);
}

const documentNodeMutationUpdateCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateCustomer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateCustomerId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateCustomerInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateCustomerInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateCustomer'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'updateCustomerId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'updateCustomerInput'),
            value: VariableNode(name: NameNode(value: 'updateCustomerInput')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'phone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'social'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatar'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdmin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
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
Mutation$UpdateCustomer _parserFn$Mutation$UpdateCustomer(
        Map<String, dynamic> data) =>
    Mutation$UpdateCustomer.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateCustomer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateCustomer?,
);

class Options$Mutation$UpdateCustomer
    extends graphql.MutationOptions<Mutation$UpdateCustomer> {
  Options$Mutation$UpdateCustomer({
    String? operationName,
    required Variables$Mutation$UpdateCustomer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCustomer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateCustomer? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateCustomer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateCustomer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateCustomer,
          parserFn: _parserFn$Mutation$UpdateCustomer,
        );

  final OnMutationCompleted$Mutation$UpdateCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateCustomer
    extends graphql.WatchQueryOptions<Mutation$UpdateCustomer> {
  WatchOptions$Mutation$UpdateCustomer({
    String? operationName,
    required Variables$Mutation$UpdateCustomer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCustomer? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateCustomer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateCustomer,
        );
}

extension ClientExtension$Mutation$UpdateCustomer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateCustomer>> mutate$UpdateCustomer(
          Options$Mutation$UpdateCustomer options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateCustomer> watchMutation$UpdateCustomer(
          WatchOptions$Mutation$UpdateCustomer options) =>
      this.watchMutation(options);
}

class Mutation$UpdateCustomer$HookResult {
  Mutation$UpdateCustomer$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateCustomer runMutation;

  final graphql.QueryResult<Mutation$UpdateCustomer> result;
}

Mutation$UpdateCustomer$HookResult useMutation$UpdateCustomer(
    [WidgetOptions$Mutation$UpdateCustomer? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateCustomer());
  return Mutation$UpdateCustomer$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateCustomer>
    useWatchMutation$UpdateCustomer(
            WatchOptions$Mutation$UpdateCustomer options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateCustomer
    extends graphql.MutationOptions<Mutation$UpdateCustomer> {
  WidgetOptions$Mutation$UpdateCustomer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCustomer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateCustomer? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateCustomer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateCustomer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateCustomer,
          parserFn: _parserFn$Mutation$UpdateCustomer,
        );

  final OnMutationCompleted$Mutation$UpdateCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateCustomer
    = graphql.MultiSourceResult<Mutation$UpdateCustomer> Function(
  Variables$Mutation$UpdateCustomer, {
  Object? optimisticResult,
  Mutation$UpdateCustomer? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateCustomer = widgets.Widget Function(
  RunMutation$Mutation$UpdateCustomer,
  graphql.QueryResult<Mutation$UpdateCustomer>?,
);

class Mutation$UpdateCustomer$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateCustomer> {
  Mutation$UpdateCustomer$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateCustomer? options,
    required Builder$Mutation$UpdateCustomer builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateCustomer(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateCustomer$updateCustomer {
  Mutation$UpdateCustomer$updateCustomer({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.phone,
    this.role,
    this.social,
    this.userName,
    this.avatar,
    this.isAdmin,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'GCustomer',
  });

  factory Mutation$UpdateCustomer$updateCustomer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$social = json['social'];
    final l$userName = json['userName'];
    final l$avatar = json['avatar'];
    final l$isAdmin = json['isAdmin'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCustomer$updateCustomer(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      phone: (l$phone as String?),
      role: (l$role as String?),
      social: (l$social as String?),
      userName: (l$userName as String?),
      avatar: (l$avatar as String?),
      isAdmin: (l$isAdmin as bool?),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String firstName;

  final String lastName;

  final String? phone;

  final String? role;

  final String? social;

  final String? userName;

  final String? avatar;

  final bool? isAdmin;

  final String? createdAt;

  final String? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$role = role;
    _resultData['role'] = l$role;
    final l$social = social;
    _resultData['social'] = l$social;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$isAdmin = isAdmin;
    _resultData['isAdmin'] = l$isAdmin;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phone = phone;
    final l$role = role;
    final l$social = social;
    final l$userName = userName;
    final l$avatar = avatar;
    final l$isAdmin = isAdmin;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$phone,
      l$role,
      l$social,
      l$userName,
      l$avatar,
      l$isAdmin,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateCustomer$updateCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$social = social;
    final lOther$social = other.social;
    if (l$social != lOther$social) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Mutation$UpdateCustomer$updateCustomer
    on Mutation$UpdateCustomer$updateCustomer {
  CopyWith$Mutation$UpdateCustomer$updateCustomer<
          Mutation$UpdateCustomer$updateCustomer>
      get copyWith => CopyWith$Mutation$UpdateCustomer$updateCustomer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> {
  factory CopyWith$Mutation$UpdateCustomer$updateCustomer(
    Mutation$UpdateCustomer$updateCustomer instance,
    TRes Function(Mutation$UpdateCustomer$updateCustomer) then,
  ) = _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer;

  factory CopyWith$Mutation$UpdateCustomer$updateCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? role,
    String? social,
    String? userName,
    String? avatar,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer<TRes>
    implements CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> {
  _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCustomer$updateCustomer _instance;

  final TRes Function(Mutation$UpdateCustomer$updateCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? social = _undefined,
    Object? userName = _undefined,
    Object? avatar = _undefined,
    Object? isAdmin = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateCustomer$updateCustomer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        role: role == _undefined ? _instance.role : (role as String?),
        social: social == _undefined ? _instance.social : (social as String?),
        userName:
            userName == _undefined ? _instance.userName : (userName as String?),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        isAdmin: isAdmin == _undefined ? _instance.isAdmin : (isAdmin as bool?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer<TRes>
    implements CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? role,
    String? social,
    String? userName,
    String? avatar,
    bool? isAdmin,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteCustomer {
  factory Variables$Mutation$DeleteCustomer(
          {required String deleteCustomerId}) =>
      Variables$Mutation$DeleteCustomer._({
        r'deleteCustomerId': deleteCustomerId,
      });

  Variables$Mutation$DeleteCustomer._(this._$data);

  factory Variables$Mutation$DeleteCustomer.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deleteCustomerId = data['deleteCustomerId'];
    result$data['deleteCustomerId'] = (l$deleteCustomerId as String);
    return Variables$Mutation$DeleteCustomer._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deleteCustomerId => (_$data['deleteCustomerId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteCustomerId = deleteCustomerId;
    result$data['deleteCustomerId'] = l$deleteCustomerId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteCustomer<Variables$Mutation$DeleteCustomer>
      get copyWith => CopyWith$Variables$Mutation$DeleteCustomer(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteCustomerId = deleteCustomerId;
    final lOther$deleteCustomerId = other.deleteCustomerId;
    if (l$deleteCustomerId != lOther$deleteCustomerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteCustomerId = deleteCustomerId;
    return Object.hashAll([l$deleteCustomerId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteCustomer<TRes> {
  factory CopyWith$Variables$Mutation$DeleteCustomer(
    Variables$Mutation$DeleteCustomer instance,
    TRes Function(Variables$Mutation$DeleteCustomer) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteCustomer;

  factory CopyWith$Variables$Mutation$DeleteCustomer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteCustomer;

  TRes call({String? deleteCustomerId});
}

class _CopyWithImpl$Variables$Mutation$DeleteCustomer<TRes>
    implements CopyWith$Variables$Mutation$DeleteCustomer<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteCustomer(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteCustomer _instance;

  final TRes Function(Variables$Mutation$DeleteCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteCustomerId = _undefined}) =>
      _then(Variables$Mutation$DeleteCustomer._({
        ..._instance._$data,
        if (deleteCustomerId != _undefined && deleteCustomerId != null)
          'deleteCustomerId': (deleteCustomerId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteCustomer<TRes>
    implements CopyWith$Variables$Mutation$DeleteCustomer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteCustomer(this._res);

  TRes _res;

  call({String? deleteCustomerId}) => _res;
}

class Mutation$DeleteCustomer {
  Mutation$DeleteCustomer({
    required this.deleteCustomer,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteCustomer.fromJson(Map<String, dynamic> json) {
    final l$deleteCustomer = json['deleteCustomer'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteCustomer(
      deleteCustomer: (l$deleteCustomer as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteCustomer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteCustomer = deleteCustomer;
    _resultData['deleteCustomer'] = l$deleteCustomer;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteCustomer = deleteCustomer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteCustomer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteCustomer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteCustomer = deleteCustomer;
    final lOther$deleteCustomer = other.deleteCustomer;
    if (l$deleteCustomer != lOther$deleteCustomer) {
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

extension UtilityExtension$Mutation$DeleteCustomer on Mutation$DeleteCustomer {
  CopyWith$Mutation$DeleteCustomer<Mutation$DeleteCustomer> get copyWith =>
      CopyWith$Mutation$DeleteCustomer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteCustomer<TRes> {
  factory CopyWith$Mutation$DeleteCustomer(
    Mutation$DeleteCustomer instance,
    TRes Function(Mutation$DeleteCustomer) then,
  ) = _CopyWithImpl$Mutation$DeleteCustomer;

  factory CopyWith$Mutation$DeleteCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteCustomer;

  TRes call({
    bool? deleteCustomer,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteCustomer<TRes>
    implements CopyWith$Mutation$DeleteCustomer<TRes> {
  _CopyWithImpl$Mutation$DeleteCustomer(
    this._instance,
    this._then,
  );

  final Mutation$DeleteCustomer _instance;

  final TRes Function(Mutation$DeleteCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteCustomer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteCustomer(
        deleteCustomer: deleteCustomer == _undefined || deleteCustomer == null
            ? _instance.deleteCustomer
            : (deleteCustomer as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteCustomer<TRes>
    implements CopyWith$Mutation$DeleteCustomer<TRes> {
  _CopyWithStubImpl$Mutation$DeleteCustomer(this._res);

  TRes _res;

  call({
    bool? deleteCustomer,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteCustomer'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteCustomerId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteCustomer'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'deleteCustomerId')),
          )
        ],
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
]);
Mutation$DeleteCustomer _parserFn$Mutation$DeleteCustomer(
        Map<String, dynamic> data) =>
    Mutation$DeleteCustomer.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteCustomer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteCustomer?,
);

class Options$Mutation$DeleteCustomer
    extends graphql.MutationOptions<Mutation$DeleteCustomer> {
  Options$Mutation$DeleteCustomer({
    String? operationName,
    required Variables$Mutation$DeleteCustomer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteCustomer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteCustomer? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteCustomer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteCustomer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteCustomer,
          parserFn: _parserFn$Mutation$DeleteCustomer,
        );

  final OnMutationCompleted$Mutation$DeleteCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteCustomer
    extends graphql.WatchQueryOptions<Mutation$DeleteCustomer> {
  WatchOptions$Mutation$DeleteCustomer({
    String? operationName,
    required Variables$Mutation$DeleteCustomer variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteCustomer? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationDeleteCustomer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteCustomer,
        );
}

extension ClientExtension$Mutation$DeleteCustomer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteCustomer>> mutate$DeleteCustomer(
          Options$Mutation$DeleteCustomer options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteCustomer> watchMutation$DeleteCustomer(
          WatchOptions$Mutation$DeleteCustomer options) =>
      this.watchMutation(options);
}

class Mutation$DeleteCustomer$HookResult {
  Mutation$DeleteCustomer$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteCustomer runMutation;

  final graphql.QueryResult<Mutation$DeleteCustomer> result;
}

Mutation$DeleteCustomer$HookResult useMutation$DeleteCustomer(
    [WidgetOptions$Mutation$DeleteCustomer? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteCustomer());
  return Mutation$DeleteCustomer$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteCustomer>
    useWatchMutation$DeleteCustomer(
            WatchOptions$Mutation$DeleteCustomer options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteCustomer
    extends graphql.MutationOptions<Mutation$DeleteCustomer> {
  WidgetOptions$Mutation$DeleteCustomer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteCustomer? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteCustomer? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteCustomer>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteCustomer(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteCustomer,
          parserFn: _parserFn$Mutation$DeleteCustomer,
        );

  final OnMutationCompleted$Mutation$DeleteCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteCustomer
    = graphql.MultiSourceResult<Mutation$DeleteCustomer> Function(
  Variables$Mutation$DeleteCustomer, {
  Object? optimisticResult,
  Mutation$DeleteCustomer? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteCustomer = widgets.Widget Function(
  RunMutation$Mutation$DeleteCustomer,
  graphql.QueryResult<Mutation$DeleteCustomer>?,
);

class Mutation$DeleteCustomer$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteCustomer> {
  Mutation$DeleteCustomer$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteCustomer? options,
    required Builder$Mutation$DeleteCustomer builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteCustomer(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Query$LogoutCustomer {
  Query$LogoutCustomer({
    required this.logoutCustomer,
    this.$__typename = 'Query',
  });

  factory Query$LogoutCustomer.fromJson(Map<String, dynamic> json) {
    final l$logoutCustomer = json['logoutCustomer'];
    final l$$__typename = json['__typename'];
    return Query$LogoutCustomer(
      logoutCustomer: (l$logoutCustomer as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool logoutCustomer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$logoutCustomer = logoutCustomer;
    _resultData['logoutCustomer'] = l$logoutCustomer;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$logoutCustomer = logoutCustomer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$logoutCustomer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LogoutCustomer) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$logoutCustomer = logoutCustomer;
    final lOther$logoutCustomer = other.logoutCustomer;
    if (l$logoutCustomer != lOther$logoutCustomer) {
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

extension UtilityExtension$Query$LogoutCustomer on Query$LogoutCustomer {
  CopyWith$Query$LogoutCustomer<Query$LogoutCustomer> get copyWith =>
      CopyWith$Query$LogoutCustomer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LogoutCustomer<TRes> {
  factory CopyWith$Query$LogoutCustomer(
    Query$LogoutCustomer instance,
    TRes Function(Query$LogoutCustomer) then,
  ) = _CopyWithImpl$Query$LogoutCustomer;

  factory CopyWith$Query$LogoutCustomer.stub(TRes res) =
      _CopyWithStubImpl$Query$LogoutCustomer;

  TRes call({
    bool? logoutCustomer,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LogoutCustomer<TRes>
    implements CopyWith$Query$LogoutCustomer<TRes> {
  _CopyWithImpl$Query$LogoutCustomer(
    this._instance,
    this._then,
  );

  final Query$LogoutCustomer _instance;

  final TRes Function(Query$LogoutCustomer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logoutCustomer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LogoutCustomer(
        logoutCustomer: logoutCustomer == _undefined || logoutCustomer == null
            ? _instance.logoutCustomer
            : (logoutCustomer as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LogoutCustomer<TRes>
    implements CopyWith$Query$LogoutCustomer<TRes> {
  _CopyWithStubImpl$Query$LogoutCustomer(this._res);

  TRes _res;

  call({
    bool? logoutCustomer,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryLogoutCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LogoutCustomer'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'logoutCustomer'),
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
]);
Query$LogoutCustomer _parserFn$Query$LogoutCustomer(
        Map<String, dynamic> data) =>
    Query$LogoutCustomer.fromJson(data);
typedef OnQueryComplete$Query$LogoutCustomer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$LogoutCustomer?,
);

class Options$Query$LogoutCustomer
    extends graphql.QueryOptions<Query$LogoutCustomer> {
  Options$Query$LogoutCustomer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LogoutCustomer? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LogoutCustomer? onComplete,
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
                    data == null ? null : _parserFn$Query$LogoutCustomer(data),
                  ),
          onError: onError,
          document: documentNodeQueryLogoutCustomer,
          parserFn: _parserFn$Query$LogoutCustomer,
        );

  final OnQueryComplete$Query$LogoutCustomer? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$LogoutCustomer
    extends graphql.WatchQueryOptions<Query$LogoutCustomer> {
  WatchOptions$Query$LogoutCustomer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LogoutCustomer? typedOptimisticResult,
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
          document: documentNodeQueryLogoutCustomer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LogoutCustomer,
        );
}

class FetchMoreOptions$Query$LogoutCustomer extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LogoutCustomer(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryLogoutCustomer,
        );
}

extension ClientExtension$Query$LogoutCustomer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LogoutCustomer>> query$LogoutCustomer(
          [Options$Query$LogoutCustomer? options]) async =>
      await this.query(options ?? Options$Query$LogoutCustomer());
  graphql.ObservableQuery<Query$LogoutCustomer> watchQuery$LogoutCustomer(
          [WatchOptions$Query$LogoutCustomer? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LogoutCustomer());
  void writeQuery$LogoutCustomer({
    required Query$LogoutCustomer data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLogoutCustomer)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LogoutCustomer? readQuery$LogoutCustomer({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryLogoutCustomer)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LogoutCustomer.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LogoutCustomer> useQuery$LogoutCustomer(
        [Options$Query$LogoutCustomer? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$LogoutCustomer());
graphql.ObservableQuery<Query$LogoutCustomer> useWatchQuery$LogoutCustomer(
        [WatchOptions$Query$LogoutCustomer? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$LogoutCustomer());

class Query$LogoutCustomer$Widget
    extends graphql_flutter.Query<Query$LogoutCustomer> {
  Query$LogoutCustomer$Widget({
    widgets.Key? key,
    Options$Query$LogoutCustomer? options,
    required graphql_flutter.QueryBuilder<Query$LogoutCustomer> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$LogoutCustomer(),
          builder: builder,
        );
}
