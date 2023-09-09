import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$CreateAdmin {
  factory Variables$Mutation$CreateAdmin(
          {required Input$CreateAdminInput createAdminInput}) =>
      Variables$Mutation$CreateAdmin._({
        r'createAdminInput': createAdminInput,
      });

  Variables$Mutation$CreateAdmin._(this._$data);

  factory Variables$Mutation$CreateAdmin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$createAdminInput = data['createAdminInput'];
    result$data['createAdminInput'] = Input$CreateAdminInput.fromJson(
        (l$createAdminInput as Map<String, dynamic>));
    return Variables$Mutation$CreateAdmin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateAdminInput get createAdminInput =>
      (_$data['createAdminInput'] as Input$CreateAdminInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$createAdminInput = createAdminInput;
    result$data['createAdminInput'] = l$createAdminInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateAdmin<Variables$Mutation$CreateAdmin>
      get copyWith => CopyWith$Variables$Mutation$CreateAdmin(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateAdmin) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createAdminInput = createAdminInput;
    final lOther$createAdminInput = other.createAdminInput;
    if (l$createAdminInput != lOther$createAdminInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createAdminInput = createAdminInput;
    return Object.hashAll([l$createAdminInput]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateAdmin<TRes> {
  factory CopyWith$Variables$Mutation$CreateAdmin(
    Variables$Mutation$CreateAdmin instance,
    TRes Function(Variables$Mutation$CreateAdmin) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateAdmin;

  factory CopyWith$Variables$Mutation$CreateAdmin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateAdmin;

  TRes call({Input$CreateAdminInput? createAdminInput});
}

class _CopyWithImpl$Variables$Mutation$CreateAdmin<TRes>
    implements CopyWith$Variables$Mutation$CreateAdmin<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateAdmin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateAdmin _instance;

  final TRes Function(Variables$Mutation$CreateAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createAdminInput = _undefined}) =>
      _then(Variables$Mutation$CreateAdmin._({
        ..._instance._$data,
        if (createAdminInput != _undefined && createAdminInput != null)
          'createAdminInput': (createAdminInput as Input$CreateAdminInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateAdmin<TRes>
    implements CopyWith$Variables$Mutation$CreateAdmin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateAdmin(this._res);

  TRes _res;

  call({Input$CreateAdminInput? createAdminInput}) => _res;
}

class Mutation$CreateAdmin {
  Mutation$CreateAdmin({
    required this.createAdmin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateAdmin.fromJson(Map<String, dynamic> json) {
    final l$createAdmin = json['createAdmin'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAdmin(
      createAdmin: Mutation$CreateAdmin$createAdmin.fromJson(
          (l$createAdmin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateAdmin$createAdmin createAdmin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createAdmin = createAdmin;
    _resultData['createAdmin'] = l$createAdmin.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createAdmin = createAdmin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createAdmin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateAdmin) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createAdmin = createAdmin;
    final lOther$createAdmin = other.createAdmin;
    if (l$createAdmin != lOther$createAdmin) {
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

extension UtilityExtension$Mutation$CreateAdmin on Mutation$CreateAdmin {
  CopyWith$Mutation$CreateAdmin<Mutation$CreateAdmin> get copyWith =>
      CopyWith$Mutation$CreateAdmin(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateAdmin<TRes> {
  factory CopyWith$Mutation$CreateAdmin(
    Mutation$CreateAdmin instance,
    TRes Function(Mutation$CreateAdmin) then,
  ) = _CopyWithImpl$Mutation$CreateAdmin;

  factory CopyWith$Mutation$CreateAdmin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAdmin;

  TRes call({
    Mutation$CreateAdmin$createAdmin? createAdmin,
    String? $__typename,
  });
  CopyWith$Mutation$CreateAdmin$createAdmin<TRes> get createAdmin;
}

class _CopyWithImpl$Mutation$CreateAdmin<TRes>
    implements CopyWith$Mutation$CreateAdmin<TRes> {
  _CopyWithImpl$Mutation$CreateAdmin(
    this._instance,
    this._then,
  );

  final Mutation$CreateAdmin _instance;

  final TRes Function(Mutation$CreateAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createAdmin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateAdmin(
        createAdmin: createAdmin == _undefined || createAdmin == null
            ? _instance.createAdmin
            : (createAdmin as Mutation$CreateAdmin$createAdmin),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateAdmin$createAdmin<TRes> get createAdmin {
    final local$createAdmin = _instance.createAdmin;
    return CopyWith$Mutation$CreateAdmin$createAdmin(
        local$createAdmin, (e) => call(createAdmin: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateAdmin<TRes>
    implements CopyWith$Mutation$CreateAdmin<TRes> {
  _CopyWithStubImpl$Mutation$CreateAdmin(this._res);

  TRes _res;

  call({
    Mutation$CreateAdmin$createAdmin? createAdmin,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateAdmin$createAdmin<TRes> get createAdmin =>
      CopyWith$Mutation$CreateAdmin$createAdmin.stub(_res);
}

const documentNodeMutationCreateAdmin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateAdmin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createAdminInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateAdminInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createAdmin'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'createAdminInput'),
            value: VariableNode(name: NameNode(value: 'createAdminInput')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'userName'),
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
Mutation$CreateAdmin _parserFn$Mutation$CreateAdmin(
        Map<String, dynamic> data) =>
    Mutation$CreateAdmin.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateAdmin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateAdmin?,
);

class Options$Mutation$CreateAdmin
    extends graphql.MutationOptions<Mutation$CreateAdmin> {
  Options$Mutation$CreateAdmin({
    String? operationName,
    required Variables$Mutation$CreateAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateAdmin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateAdmin? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateAdmin>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateAdmin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateAdmin,
          parserFn: _parserFn$Mutation$CreateAdmin,
        );

  final OnMutationCompleted$Mutation$CreateAdmin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateAdmin
    extends graphql.WatchQueryOptions<Mutation$CreateAdmin> {
  WatchOptions$Mutation$CreateAdmin({
    String? operationName,
    required Variables$Mutation$CreateAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateAdmin? typedOptimisticResult,
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
          document: documentNodeMutationCreateAdmin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateAdmin,
        );
}

extension ClientExtension$Mutation$CreateAdmin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateAdmin>> mutate$CreateAdmin(
          Options$Mutation$CreateAdmin options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateAdmin> watchMutation$CreateAdmin(
          WatchOptions$Mutation$CreateAdmin options) =>
      this.watchMutation(options);
}

class Mutation$CreateAdmin$HookResult {
  Mutation$CreateAdmin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateAdmin runMutation;

  final graphql.QueryResult<Mutation$CreateAdmin> result;
}

Mutation$CreateAdmin$HookResult useMutation$CreateAdmin(
    [WidgetOptions$Mutation$CreateAdmin? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateAdmin());
  return Mutation$CreateAdmin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateAdmin> useWatchMutation$CreateAdmin(
        WatchOptions$Mutation$CreateAdmin options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateAdmin
    extends graphql.MutationOptions<Mutation$CreateAdmin> {
  WidgetOptions$Mutation$CreateAdmin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateAdmin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateAdmin? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateAdmin>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateAdmin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateAdmin,
          parserFn: _parserFn$Mutation$CreateAdmin,
        );

  final OnMutationCompleted$Mutation$CreateAdmin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateAdmin
    = graphql.MultiSourceResult<Mutation$CreateAdmin> Function(
  Variables$Mutation$CreateAdmin, {
  Object? optimisticResult,
  Mutation$CreateAdmin? typedOptimisticResult,
});
typedef Builder$Mutation$CreateAdmin = widgets.Widget Function(
  RunMutation$Mutation$CreateAdmin,
  graphql.QueryResult<Mutation$CreateAdmin>?,
);

class Mutation$CreateAdmin$Widget
    extends graphql_flutter.Mutation<Mutation$CreateAdmin> {
  Mutation$CreateAdmin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateAdmin? options,
    required Builder$Mutation$CreateAdmin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateAdmin(),
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

class Mutation$CreateAdmin$createAdmin {
  Mutation$CreateAdmin$createAdmin({
    required this.email,
    required this.firstName,
    required this.lastName,
    this.phone,
    this.userName,
    this.$__typename = 'AdminResolverResponse',
  });

  factory Mutation$CreateAdmin$createAdmin.fromJson(Map<String, dynamic> json) {
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phone = json['phone'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAdmin$createAdmin(
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      phone: (l$phone as String?),
      userName: (l$userName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String email;

  final String firstName;

  final String lastName;

  final String? phone;

  final String? userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phone = phone;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$email,
      l$firstName,
      l$lastName,
      l$phone,
      l$userName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateAdmin$createAdmin) ||
        runtimeType != other.runtimeType) {
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
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
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

extension UtilityExtension$Mutation$CreateAdmin$createAdmin
    on Mutation$CreateAdmin$createAdmin {
  CopyWith$Mutation$CreateAdmin$createAdmin<Mutation$CreateAdmin$createAdmin>
      get copyWith => CopyWith$Mutation$CreateAdmin$createAdmin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateAdmin$createAdmin<TRes> {
  factory CopyWith$Mutation$CreateAdmin$createAdmin(
    Mutation$CreateAdmin$createAdmin instance,
    TRes Function(Mutation$CreateAdmin$createAdmin) then,
  ) = _CopyWithImpl$Mutation$CreateAdmin$createAdmin;

  factory CopyWith$Mutation$CreateAdmin$createAdmin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAdmin$createAdmin;

  TRes call({
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateAdmin$createAdmin<TRes>
    implements CopyWith$Mutation$CreateAdmin$createAdmin<TRes> {
  _CopyWithImpl$Mutation$CreateAdmin$createAdmin(
    this._instance,
    this._then,
  );

  final Mutation$CreateAdmin$createAdmin _instance;

  final TRes Function(Mutation$CreateAdmin$createAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phone = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateAdmin$createAdmin(
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
        userName:
            userName == _undefined ? _instance.userName : (userName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateAdmin$createAdmin<TRes>
    implements CopyWith$Mutation$CreateAdmin$createAdmin<TRes> {
  _CopyWithStubImpl$Mutation$CreateAdmin$createAdmin(this._res);

  TRes _res;

  call({
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? userName,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$LoginAdmin {
  factory Variables$Mutation$LoginAdmin(
          {required Input$LoginAdminInput loginAdminInput}) =>
      Variables$Mutation$LoginAdmin._({
        r'loginAdminInput': loginAdminInput,
      });

  Variables$Mutation$LoginAdmin._(this._$data);

  factory Variables$Mutation$LoginAdmin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$loginAdminInput = data['loginAdminInput'];
    result$data['loginAdminInput'] = Input$LoginAdminInput.fromJson(
        (l$loginAdminInput as Map<String, dynamic>));
    return Variables$Mutation$LoginAdmin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LoginAdminInput get loginAdminInput =>
      (_$data['loginAdminInput'] as Input$LoginAdminInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$loginAdminInput = loginAdminInput;
    result$data['loginAdminInput'] = l$loginAdminInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$LoginAdmin<Variables$Mutation$LoginAdmin>
      get copyWith => CopyWith$Variables$Mutation$LoginAdmin(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$LoginAdmin) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$loginAdminInput = loginAdminInput;
    final lOther$loginAdminInput = other.loginAdminInput;
    if (l$loginAdminInput != lOther$loginAdminInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$loginAdminInput = loginAdminInput;
    return Object.hashAll([l$loginAdminInput]);
  }
}

abstract class CopyWith$Variables$Mutation$LoginAdmin<TRes> {
  factory CopyWith$Variables$Mutation$LoginAdmin(
    Variables$Mutation$LoginAdmin instance,
    TRes Function(Variables$Mutation$LoginAdmin) then,
  ) = _CopyWithImpl$Variables$Mutation$LoginAdmin;

  factory CopyWith$Variables$Mutation$LoginAdmin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$LoginAdmin;

  TRes call({Input$LoginAdminInput? loginAdminInput});
}

class _CopyWithImpl$Variables$Mutation$LoginAdmin<TRes>
    implements CopyWith$Variables$Mutation$LoginAdmin<TRes> {
  _CopyWithImpl$Variables$Mutation$LoginAdmin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$LoginAdmin _instance;

  final TRes Function(Variables$Mutation$LoginAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? loginAdminInput = _undefined}) =>
      _then(Variables$Mutation$LoginAdmin._({
        ..._instance._$data,
        if (loginAdminInput != _undefined && loginAdminInput != null)
          'loginAdminInput': (loginAdminInput as Input$LoginAdminInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$LoginAdmin<TRes>
    implements CopyWith$Variables$Mutation$LoginAdmin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$LoginAdmin(this._res);

  TRes _res;

  call({Input$LoginAdminInput? loginAdminInput}) => _res;
}

class Mutation$LoginAdmin {
  Mutation$LoginAdmin({
    required this.loginAdmin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$LoginAdmin.fromJson(Map<String, dynamic> json) {
    final l$loginAdmin = json['loginAdmin'];
    final l$$__typename = json['__typename'];
    return Mutation$LoginAdmin(
      loginAdmin: Mutation$LoginAdmin$loginAdmin.fromJson(
          (l$loginAdmin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LoginAdmin$loginAdmin loginAdmin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$loginAdmin = loginAdmin;
    _resultData['loginAdmin'] = l$loginAdmin.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$loginAdmin = loginAdmin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$loginAdmin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LoginAdmin) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$loginAdmin = loginAdmin;
    final lOther$loginAdmin = other.loginAdmin;
    if (l$loginAdmin != lOther$loginAdmin) {
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

extension UtilityExtension$Mutation$LoginAdmin on Mutation$LoginAdmin {
  CopyWith$Mutation$LoginAdmin<Mutation$LoginAdmin> get copyWith =>
      CopyWith$Mutation$LoginAdmin(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LoginAdmin<TRes> {
  factory CopyWith$Mutation$LoginAdmin(
    Mutation$LoginAdmin instance,
    TRes Function(Mutation$LoginAdmin) then,
  ) = _CopyWithImpl$Mutation$LoginAdmin;

  factory CopyWith$Mutation$LoginAdmin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LoginAdmin;

  TRes call({
    Mutation$LoginAdmin$loginAdmin? loginAdmin,
    String? $__typename,
  });
  CopyWith$Mutation$LoginAdmin$loginAdmin<TRes> get loginAdmin;
}

class _CopyWithImpl$Mutation$LoginAdmin<TRes>
    implements CopyWith$Mutation$LoginAdmin<TRes> {
  _CopyWithImpl$Mutation$LoginAdmin(
    this._instance,
    this._then,
  );

  final Mutation$LoginAdmin _instance;

  final TRes Function(Mutation$LoginAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? loginAdmin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LoginAdmin(
        loginAdmin: loginAdmin == _undefined || loginAdmin == null
            ? _instance.loginAdmin
            : (loginAdmin as Mutation$LoginAdmin$loginAdmin),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$LoginAdmin$loginAdmin<TRes> get loginAdmin {
    final local$loginAdmin = _instance.loginAdmin;
    return CopyWith$Mutation$LoginAdmin$loginAdmin(
        local$loginAdmin, (e) => call(loginAdmin: e));
  }
}

class _CopyWithStubImpl$Mutation$LoginAdmin<TRes>
    implements CopyWith$Mutation$LoginAdmin<TRes> {
  _CopyWithStubImpl$Mutation$LoginAdmin(this._res);

  TRes _res;

  call({
    Mutation$LoginAdmin$loginAdmin? loginAdmin,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$LoginAdmin$loginAdmin<TRes> get loginAdmin =>
      CopyWith$Mutation$LoginAdmin$loginAdmin.stub(_res);
}

const documentNodeMutationLoginAdmin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'LoginAdmin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'loginAdminInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'LoginAdminInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'loginAdmin'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'loginAdminInput'),
            value: VariableNode(name: NameNode(value: 'loginAdminInput')),
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
Mutation$LoginAdmin _parserFn$Mutation$LoginAdmin(Map<String, dynamic> data) =>
    Mutation$LoginAdmin.fromJson(data);
typedef OnMutationCompleted$Mutation$LoginAdmin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$LoginAdmin?,
);

class Options$Mutation$LoginAdmin
    extends graphql.MutationOptions<Mutation$LoginAdmin> {
  Options$Mutation$LoginAdmin({
    String? operationName,
    required Variables$Mutation$LoginAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginAdmin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LoginAdmin? onCompleted,
    graphql.OnMutationUpdate<Mutation$LoginAdmin>? update,
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
                    data == null ? null : _parserFn$Mutation$LoginAdmin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLoginAdmin,
          parserFn: _parserFn$Mutation$LoginAdmin,
        );

  final OnMutationCompleted$Mutation$LoginAdmin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$LoginAdmin
    extends graphql.WatchQueryOptions<Mutation$LoginAdmin> {
  WatchOptions$Mutation$LoginAdmin({
    String? operationName,
    required Variables$Mutation$LoginAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginAdmin? typedOptimisticResult,
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
          document: documentNodeMutationLoginAdmin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$LoginAdmin,
        );
}

extension ClientExtension$Mutation$LoginAdmin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$LoginAdmin>> mutate$LoginAdmin(
          Options$Mutation$LoginAdmin options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$LoginAdmin> watchMutation$LoginAdmin(
          WatchOptions$Mutation$LoginAdmin options) =>
      this.watchMutation(options);
}

class Mutation$LoginAdmin$HookResult {
  Mutation$LoginAdmin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$LoginAdmin runMutation;

  final graphql.QueryResult<Mutation$LoginAdmin> result;
}

Mutation$LoginAdmin$HookResult useMutation$LoginAdmin(
    [WidgetOptions$Mutation$LoginAdmin? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$LoginAdmin());
  return Mutation$LoginAdmin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$LoginAdmin> useWatchMutation$LoginAdmin(
        WatchOptions$Mutation$LoginAdmin options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$LoginAdmin
    extends graphql.MutationOptions<Mutation$LoginAdmin> {
  WidgetOptions$Mutation$LoginAdmin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LoginAdmin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LoginAdmin? onCompleted,
    graphql.OnMutationUpdate<Mutation$LoginAdmin>? update,
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
                    data == null ? null : _parserFn$Mutation$LoginAdmin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLoginAdmin,
          parserFn: _parserFn$Mutation$LoginAdmin,
        );

  final OnMutationCompleted$Mutation$LoginAdmin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$LoginAdmin
    = graphql.MultiSourceResult<Mutation$LoginAdmin> Function(
  Variables$Mutation$LoginAdmin, {
  Object? optimisticResult,
  Mutation$LoginAdmin? typedOptimisticResult,
});
typedef Builder$Mutation$LoginAdmin = widgets.Widget Function(
  RunMutation$Mutation$LoginAdmin,
  graphql.QueryResult<Mutation$LoginAdmin>?,
);

class Mutation$LoginAdmin$Widget
    extends graphql_flutter.Mutation<Mutation$LoginAdmin> {
  Mutation$LoginAdmin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$LoginAdmin? options,
    required Builder$Mutation$LoginAdmin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$LoginAdmin(),
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

class Mutation$LoginAdmin$loginAdmin {
  Mutation$LoginAdmin$loginAdmin({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.phone,
    this.role,
    this.$__typename = 'AdminResolverResponse',
  });

  factory Mutation$LoginAdmin$loginAdmin.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Mutation$LoginAdmin$loginAdmin(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      phone: (l$phone as String?),
      role: (l$role as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String firstName;

  final String lastName;

  final String? phone;

  final String? role;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$phone,
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$LoginAdmin$loginAdmin) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$LoginAdmin$loginAdmin
    on Mutation$LoginAdmin$loginAdmin {
  CopyWith$Mutation$LoginAdmin$loginAdmin<Mutation$LoginAdmin$loginAdmin>
      get copyWith => CopyWith$Mutation$LoginAdmin$loginAdmin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$LoginAdmin$loginAdmin<TRes> {
  factory CopyWith$Mutation$LoginAdmin$loginAdmin(
    Mutation$LoginAdmin$loginAdmin instance,
    TRes Function(Mutation$LoginAdmin$loginAdmin) then,
  ) = _CopyWithImpl$Mutation$LoginAdmin$loginAdmin;

  factory CopyWith$Mutation$LoginAdmin$loginAdmin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LoginAdmin$loginAdmin;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$LoginAdmin$loginAdmin<TRes>
    implements CopyWith$Mutation$LoginAdmin$loginAdmin<TRes> {
  _CopyWithImpl$Mutation$LoginAdmin$loginAdmin(
    this._instance,
    this._then,
  );

  final Mutation$LoginAdmin$loginAdmin _instance;

  final TRes Function(Mutation$LoginAdmin$loginAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$LoginAdmin$loginAdmin(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$LoginAdmin$loginAdmin<TRes>
    implements CopyWith$Mutation$LoginAdmin$loginAdmin<TRes> {
  _CopyWithStubImpl$Mutation$LoginAdmin$loginAdmin(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    String? role,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAdmins {
  Query$GetAdmins({
    required this.getAdmins,
    this.$__typename = 'Query',
  });

  factory Query$GetAdmins.fromJson(Map<String, dynamic> json) {
    final l$getAdmins = json['getAdmins'];
    final l$$__typename = json['__typename'];
    return Query$GetAdmins(
      getAdmins: (l$getAdmins as List<dynamic>)
          .map((e) =>
              Query$GetAdmins$getAdmins.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAdmins$getAdmins> getAdmins;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getAdmins = getAdmins;
    _resultData['getAdmins'] = l$getAdmins.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getAdmins = getAdmins;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$getAdmins.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAdmins) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getAdmins = getAdmins;
    final lOther$getAdmins = other.getAdmins;
    if (l$getAdmins.length != lOther$getAdmins.length) {
      return false;
    }
    for (int i = 0; i < l$getAdmins.length; i++) {
      final l$getAdmins$entry = l$getAdmins[i];
      final lOther$getAdmins$entry = lOther$getAdmins[i];
      if (l$getAdmins$entry != lOther$getAdmins$entry) {
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

extension UtilityExtension$Query$GetAdmins on Query$GetAdmins {
  CopyWith$Query$GetAdmins<Query$GetAdmins> get copyWith =>
      CopyWith$Query$GetAdmins(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdmins<TRes> {
  factory CopyWith$Query$GetAdmins(
    Query$GetAdmins instance,
    TRes Function(Query$GetAdmins) then,
  ) = _CopyWithImpl$Query$GetAdmins;

  factory CopyWith$Query$GetAdmins.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdmins;

  TRes call({
    List<Query$GetAdmins$getAdmins>? getAdmins,
    String? $__typename,
  });
  TRes getAdmins(
      Iterable<Query$GetAdmins$getAdmins> Function(
              Iterable<
                  CopyWith$Query$GetAdmins$getAdmins<
                      Query$GetAdmins$getAdmins>>)
          _fn);
}

class _CopyWithImpl$Query$GetAdmins<TRes>
    implements CopyWith$Query$GetAdmins<TRes> {
  _CopyWithImpl$Query$GetAdmins(
    this._instance,
    this._then,
  );

  final Query$GetAdmins _instance;

  final TRes Function(Query$GetAdmins) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getAdmins = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdmins(
        getAdmins: getAdmins == _undefined || getAdmins == null
            ? _instance.getAdmins
            : (getAdmins as List<Query$GetAdmins$getAdmins>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes getAdmins(
          Iterable<Query$GetAdmins$getAdmins> Function(
                  Iterable<
                      CopyWith$Query$GetAdmins$getAdmins<
                          Query$GetAdmins$getAdmins>>)
              _fn) =>
      call(
          getAdmins: _fn(
              _instance.getAdmins.map((e) => CopyWith$Query$GetAdmins$getAdmins(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAdmins<TRes>
    implements CopyWith$Query$GetAdmins<TRes> {
  _CopyWithStubImpl$Query$GetAdmins(this._res);

  TRes _res;

  call({
    List<Query$GetAdmins$getAdmins>? getAdmins,
    String? $__typename,
  }) =>
      _res;
  getAdmins(_fn) => _res;
}

const documentNodeQueryGetAdmins = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAdmins'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getAdmins'),
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
            name: NameNode(value: 'lastName'),
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
            name: NameNode(value: 'isAdmin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'password'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'salt'),
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
Query$GetAdmins _parserFn$Query$GetAdmins(Map<String, dynamic> data) =>
    Query$GetAdmins.fromJson(data);
typedef OnQueryComplete$Query$GetAdmins = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAdmins?,
);

class Options$Query$GetAdmins extends graphql.QueryOptions<Query$GetAdmins> {
  Options$Query$GetAdmins({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAdmins? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAdmins? onComplete,
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
                    data == null ? null : _parserFn$Query$GetAdmins(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAdmins,
          parserFn: _parserFn$Query$GetAdmins,
        );

  final OnQueryComplete$Query$GetAdmins? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAdmins
    extends graphql.WatchQueryOptions<Query$GetAdmins> {
  WatchOptions$Query$GetAdmins({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAdmins? typedOptimisticResult,
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
          document: documentNodeQueryGetAdmins,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAdmins,
        );
}

class FetchMoreOptions$Query$GetAdmins extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAdmins({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetAdmins,
        );
}

extension ClientExtension$Query$GetAdmins on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAdmins>> query$GetAdmins(
          [Options$Query$GetAdmins? options]) async =>
      await this.query(options ?? Options$Query$GetAdmins());
  graphql.ObservableQuery<Query$GetAdmins> watchQuery$GetAdmins(
          [WatchOptions$Query$GetAdmins? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAdmins());
  void writeQuery$GetAdmins({
    required Query$GetAdmins data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetAdmins)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAdmins? readQuery$GetAdmins({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetAdmins)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAdmins.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAdmins> useQuery$GetAdmins(
        [Options$Query$GetAdmins? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAdmins());
graphql.ObservableQuery<Query$GetAdmins> useWatchQuery$GetAdmins(
        [WatchOptions$Query$GetAdmins? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetAdmins());

class Query$GetAdmins$Widget extends graphql_flutter.Query<Query$GetAdmins> {
  Query$GetAdmins$Widget({
    widgets.Key? key,
    Options$Query$GetAdmins? options,
    required graphql_flutter.QueryBuilder<Query$GetAdmins> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAdmins(),
          builder: builder,
        );
}

class Query$GetAdmins$getAdmins {
  Query$GetAdmins$getAdmins({
    required this.id,
    required this.email,
    required this.lastName,
    required this.firstName,
    this.userName,
    this.avatar,
    this.phone,
    this.isAdmin,
    required this.password,
    this.salt,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'AdminResolverResponse',
  });

  factory Query$GetAdmins$getAdmins.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$lastName = json['lastName'];
    final l$firstName = json['firstName'];
    final l$userName = json['userName'];
    final l$avatar = json['avatar'];
    final l$phone = json['phone'];
    final l$isAdmin = json['isAdmin'];
    final l$password = json['password'];
    final l$salt = json['salt'];
    final l$role = json['role'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Query$GetAdmins$getAdmins(
      id: (l$id as String),
      email: (l$email as String),
      lastName: (l$lastName as String),
      firstName: (l$firstName as String),
      userName: (l$userName as String?),
      avatar: (l$avatar as String?),
      phone: (l$phone as String?),
      isAdmin: (l$isAdmin as bool?),
      password: (l$password as String),
      salt: (l$salt as String?),
      role: (l$role as String?),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String lastName;

  final String firstName;

  final String? userName;

  final String? avatar;

  final String? phone;

  final bool? isAdmin;

  final String password;

  final String? salt;

  final String? role;

  final String? createdAt;

  final String? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$isAdmin = isAdmin;
    _resultData['isAdmin'] = l$isAdmin;
    final l$password = password;
    _resultData['password'] = l$password;
    final l$salt = salt;
    _resultData['salt'] = l$salt;
    final l$role = role;
    _resultData['role'] = l$role;
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
    final l$lastName = lastName;
    final l$firstName = firstName;
    final l$userName = userName;
    final l$avatar = avatar;
    final l$phone = phone;
    final l$isAdmin = isAdmin;
    final l$password = password;
    final l$salt = salt;
    final l$role = role;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$lastName,
      l$firstName,
      l$userName,
      l$avatar,
      l$phone,
      l$isAdmin,
      l$password,
      l$salt,
      l$role,
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
    if (!(other is Query$GetAdmins$getAdmins) ||
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
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
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
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$salt = salt;
    final lOther$salt = other.salt;
    if (l$salt != lOther$salt) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
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

extension UtilityExtension$Query$GetAdmins$getAdmins
    on Query$GetAdmins$getAdmins {
  CopyWith$Query$GetAdmins$getAdmins<Query$GetAdmins$getAdmins> get copyWith =>
      CopyWith$Query$GetAdmins$getAdmins(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdmins$getAdmins<TRes> {
  factory CopyWith$Query$GetAdmins$getAdmins(
    Query$GetAdmins$getAdmins instance,
    TRes Function(Query$GetAdmins$getAdmins) then,
  ) = _CopyWithImpl$Query$GetAdmins$getAdmins;

  factory CopyWith$Query$GetAdmins$getAdmins.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdmins$getAdmins;

  TRes call({
    String? id,
    String? email,
    String? lastName,
    String? firstName,
    String? userName,
    String? avatar,
    String? phone,
    bool? isAdmin,
    String? password,
    String? salt,
    String? role,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdmins$getAdmins<TRes>
    implements CopyWith$Query$GetAdmins$getAdmins<TRes> {
  _CopyWithImpl$Query$GetAdmins$getAdmins(
    this._instance,
    this._then,
  );

  final Query$GetAdmins$getAdmins _instance;

  final TRes Function(Query$GetAdmins$getAdmins) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? lastName = _undefined,
    Object? firstName = _undefined,
    Object? userName = _undefined,
    Object? avatar = _undefined,
    Object? phone = _undefined,
    Object? isAdmin = _undefined,
    Object? password = _undefined,
    Object? salt = _undefined,
    Object? role = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdmins$getAdmins(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        userName:
            userName == _undefined ? _instance.userName : (userName as String?),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        isAdmin: isAdmin == _undefined ? _instance.isAdmin : (isAdmin as bool?),
        password: password == _undefined || password == null
            ? _instance.password
            : (password as String),
        salt: salt == _undefined ? _instance.salt : (salt as String?),
        role: role == _undefined ? _instance.role : (role as String?),
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

class _CopyWithStubImpl$Query$GetAdmins$getAdmins<TRes>
    implements CopyWith$Query$GetAdmins$getAdmins<TRes> {
  _CopyWithStubImpl$Query$GetAdmins$getAdmins(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? lastName,
    String? firstName,
    String? userName,
    String? avatar,
    String? phone,
    bool? isAdmin,
    String? password,
    String? salt,
    String? role,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetAdminById {
  factory Variables$Query$GetAdminById({required String getAdminByIdId}) =>
      Variables$Query$GetAdminById._({
        r'getAdminByIdId': getAdminByIdId,
      });

  Variables$Query$GetAdminById._(this._$data);

  factory Variables$Query$GetAdminById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$getAdminByIdId = data['getAdminByIdId'];
    result$data['getAdminByIdId'] = (l$getAdminByIdId as String);
    return Variables$Query$GetAdminById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get getAdminByIdId => (_$data['getAdminByIdId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$getAdminByIdId = getAdminByIdId;
    result$data['getAdminByIdId'] = l$getAdminByIdId;
    return result$data;
  }

  CopyWith$Variables$Query$GetAdminById<Variables$Query$GetAdminById>
      get copyWith => CopyWith$Variables$Query$GetAdminById(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAdminById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getAdminByIdId = getAdminByIdId;
    final lOther$getAdminByIdId = other.getAdminByIdId;
    if (l$getAdminByIdId != lOther$getAdminByIdId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$getAdminByIdId = getAdminByIdId;
    return Object.hashAll([l$getAdminByIdId]);
  }
}

abstract class CopyWith$Variables$Query$GetAdminById<TRes> {
  factory CopyWith$Variables$Query$GetAdminById(
    Variables$Query$GetAdminById instance,
    TRes Function(Variables$Query$GetAdminById) then,
  ) = _CopyWithImpl$Variables$Query$GetAdminById;

  factory CopyWith$Variables$Query$GetAdminById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAdminById;

  TRes call({String? getAdminByIdId});
}

class _CopyWithImpl$Variables$Query$GetAdminById<TRes>
    implements CopyWith$Variables$Query$GetAdminById<TRes> {
  _CopyWithImpl$Variables$Query$GetAdminById(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAdminById _instance;

  final TRes Function(Variables$Query$GetAdminById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getAdminByIdId = _undefined}) =>
      _then(Variables$Query$GetAdminById._({
        ..._instance._$data,
        if (getAdminByIdId != _undefined && getAdminByIdId != null)
          'getAdminByIdId': (getAdminByIdId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAdminById<TRes>
    implements CopyWith$Variables$Query$GetAdminById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAdminById(this._res);

  TRes _res;

  call({String? getAdminByIdId}) => _res;
}

class Query$GetAdminById {
  Query$GetAdminById({
    required this.getAdminById,
    this.$__typename = 'Query',
  });

  factory Query$GetAdminById.fromJson(Map<String, dynamic> json) {
    final l$getAdminById = json['getAdminById'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminById(
      getAdminById: Query$GetAdminById$getAdminById.fromJson(
          (l$getAdminById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAdminById$getAdminById getAdminById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getAdminById = getAdminById;
    _resultData['getAdminById'] = l$getAdminById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getAdminById = getAdminById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getAdminById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAdminById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getAdminById = getAdminById;
    final lOther$getAdminById = other.getAdminById;
    if (l$getAdminById != lOther$getAdminById) {
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

extension UtilityExtension$Query$GetAdminById on Query$GetAdminById {
  CopyWith$Query$GetAdminById<Query$GetAdminById> get copyWith =>
      CopyWith$Query$GetAdminById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdminById<TRes> {
  factory CopyWith$Query$GetAdminById(
    Query$GetAdminById instance,
    TRes Function(Query$GetAdminById) then,
  ) = _CopyWithImpl$Query$GetAdminById;

  factory CopyWith$Query$GetAdminById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdminById;

  TRes call({
    Query$GetAdminById$getAdminById? getAdminById,
    String? $__typename,
  });
  CopyWith$Query$GetAdminById$getAdminById<TRes> get getAdminById;
}

class _CopyWithImpl$Query$GetAdminById<TRes>
    implements CopyWith$Query$GetAdminById<TRes> {
  _CopyWithImpl$Query$GetAdminById(
    this._instance,
    this._then,
  );

  final Query$GetAdminById _instance;

  final TRes Function(Query$GetAdminById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getAdminById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminById(
        getAdminById: getAdminById == _undefined || getAdminById == null
            ? _instance.getAdminById
            : (getAdminById as Query$GetAdminById$getAdminById),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetAdminById$getAdminById<TRes> get getAdminById {
    final local$getAdminById = _instance.getAdminById;
    return CopyWith$Query$GetAdminById$getAdminById(
        local$getAdminById, (e) => call(getAdminById: e));
  }
}

class _CopyWithStubImpl$Query$GetAdminById<TRes>
    implements CopyWith$Query$GetAdminById<TRes> {
  _CopyWithStubImpl$Query$GetAdminById(this._res);

  TRes _res;

  call({
    Query$GetAdminById$getAdminById? getAdminById,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetAdminById$getAdminById<TRes> get getAdminById =>
      CopyWith$Query$GetAdminById$getAdminById.stub(_res);
}

const documentNodeQueryGetAdminById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAdminById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getAdminByIdId')),
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
        name: NameNode(value: 'getAdminById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'getAdminByIdId')),
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
Query$GetAdminById _parserFn$Query$GetAdminById(Map<String, dynamic> data) =>
    Query$GetAdminById.fromJson(data);
typedef OnQueryComplete$Query$GetAdminById = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAdminById?,
);

class Options$Query$GetAdminById
    extends graphql.QueryOptions<Query$GetAdminById> {
  Options$Query$GetAdminById({
    String? operationName,
    required Variables$Query$GetAdminById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAdminById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAdminById? onComplete,
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
                    data == null ? null : _parserFn$Query$GetAdminById(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAdminById,
          parserFn: _parserFn$Query$GetAdminById,
        );

  final OnQueryComplete$Query$GetAdminById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAdminById
    extends graphql.WatchQueryOptions<Query$GetAdminById> {
  WatchOptions$Query$GetAdminById({
    String? operationName,
    required Variables$Query$GetAdminById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAdminById? typedOptimisticResult,
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
          document: documentNodeQueryGetAdminById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAdminById,
        );
}

class FetchMoreOptions$Query$GetAdminById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAdminById({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetAdminById variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetAdminById,
        );
}

extension ClientExtension$Query$GetAdminById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAdminById>> query$GetAdminById(
          Options$Query$GetAdminById options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetAdminById> watchQuery$GetAdminById(
          WatchOptions$Query$GetAdminById options) =>
      this.watchQuery(options);
  void writeQuery$GetAdminById({
    required Query$GetAdminById data,
    required Variables$Query$GetAdminById variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetAdminById),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAdminById? readQuery$GetAdminById({
    required Variables$Query$GetAdminById variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetAdminById),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAdminById.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAdminById> useQuery$GetAdminById(
        Options$Query$GetAdminById options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetAdminById> useWatchQuery$GetAdminById(
        WatchOptions$Query$GetAdminById options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetAdminById$Widget
    extends graphql_flutter.Query<Query$GetAdminById> {
  Query$GetAdminById$Widget({
    widgets.Key? key,
    required Options$Query$GetAdminById options,
    required graphql_flutter.QueryBuilder<Query$GetAdminById> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetAdminById$getAdminById {
  Query$GetAdminById$getAdminById({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.userName,
    this.avatar,
    this.phone,
    this.role,
    this.$__typename = 'AdminResolverResponse',
  });

  factory Query$GetAdminById$getAdminById.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$userName = json['userName'];
    final l$avatar = json['avatar'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminById$getAdminById(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      userName: (l$userName as String?),
      avatar: (l$avatar as String?),
      phone: (l$phone as String?),
      role: (l$role as String?),
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
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAdminById$getAdminById) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAdminById$getAdminById
    on Query$GetAdminById$getAdminById {
  CopyWith$Query$GetAdminById$getAdminById<Query$GetAdminById$getAdminById>
      get copyWith => CopyWith$Query$GetAdminById$getAdminById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminById$getAdminById<TRes> {
  factory CopyWith$Query$GetAdminById$getAdminById(
    Query$GetAdminById$getAdminById instance,
    TRes Function(Query$GetAdminById$getAdminById) then,
  ) = _CopyWithImpl$Query$GetAdminById$getAdminById;

  factory CopyWith$Query$GetAdminById$getAdminById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdminById$getAdminById;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? userName,
    String? avatar,
    String? phone,
    String? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdminById$getAdminById<TRes>
    implements CopyWith$Query$GetAdminById$getAdminById<TRes> {
  _CopyWithImpl$Query$GetAdminById$getAdminById(
    this._instance,
    this._then,
  );

  final Query$GetAdminById$getAdminById _instance;

  final TRes Function(Query$GetAdminById$getAdminById) _then;

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
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminById$getAdminById(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAdminById$getAdminById<TRes>
    implements CopyWith$Query$GetAdminById$getAdminById<TRes> {
  _CopyWithStubImpl$Query$GetAdminById$getAdminById(this._res);

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
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAdminProfile {
  Query$GetAdminProfile({
    required this.getAdminProfile,
    this.$__typename = 'Query',
  });

  factory Query$GetAdminProfile.fromJson(Map<String, dynamic> json) {
    final l$getAdminProfile = json['getAdminProfile'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminProfile(
      getAdminProfile: Query$GetAdminProfile$getAdminProfile.fromJson(
          (l$getAdminProfile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAdminProfile$getAdminProfile getAdminProfile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getAdminProfile = getAdminProfile;
    _resultData['getAdminProfile'] = l$getAdminProfile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getAdminProfile = getAdminProfile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getAdminProfile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAdminProfile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getAdminProfile = getAdminProfile;
    final lOther$getAdminProfile = other.getAdminProfile;
    if (l$getAdminProfile != lOther$getAdminProfile) {
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

extension UtilityExtension$Query$GetAdminProfile on Query$GetAdminProfile {
  CopyWith$Query$GetAdminProfile<Query$GetAdminProfile> get copyWith =>
      CopyWith$Query$GetAdminProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAdminProfile<TRes> {
  factory CopyWith$Query$GetAdminProfile(
    Query$GetAdminProfile instance,
    TRes Function(Query$GetAdminProfile) then,
  ) = _CopyWithImpl$Query$GetAdminProfile;

  factory CopyWith$Query$GetAdminProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdminProfile;

  TRes call({
    Query$GetAdminProfile$getAdminProfile? getAdminProfile,
    String? $__typename,
  });
  CopyWith$Query$GetAdminProfile$getAdminProfile<TRes> get getAdminProfile;
}

class _CopyWithImpl$Query$GetAdminProfile<TRes>
    implements CopyWith$Query$GetAdminProfile<TRes> {
  _CopyWithImpl$Query$GetAdminProfile(
    this._instance,
    this._then,
  );

  final Query$GetAdminProfile _instance;

  final TRes Function(Query$GetAdminProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getAdminProfile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminProfile(
        getAdminProfile:
            getAdminProfile == _undefined || getAdminProfile == null
                ? _instance.getAdminProfile
                : (getAdminProfile as Query$GetAdminProfile$getAdminProfile),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetAdminProfile$getAdminProfile<TRes> get getAdminProfile {
    final local$getAdminProfile = _instance.getAdminProfile;
    return CopyWith$Query$GetAdminProfile$getAdminProfile(
        local$getAdminProfile, (e) => call(getAdminProfile: e));
  }
}

class _CopyWithStubImpl$Query$GetAdminProfile<TRes>
    implements CopyWith$Query$GetAdminProfile<TRes> {
  _CopyWithStubImpl$Query$GetAdminProfile(this._res);

  TRes _res;

  call({
    Query$GetAdminProfile$getAdminProfile? getAdminProfile,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetAdminProfile$getAdminProfile<TRes> get getAdminProfile =>
      CopyWith$Query$GetAdminProfile$getAdminProfile.stub(_res);
}

const documentNodeQueryGetAdminProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAdminProfile'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getAdminProfile'),
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
Query$GetAdminProfile _parserFn$Query$GetAdminProfile(
        Map<String, dynamic> data) =>
    Query$GetAdminProfile.fromJson(data);
typedef OnQueryComplete$Query$GetAdminProfile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAdminProfile?,
);

class Options$Query$GetAdminProfile
    extends graphql.QueryOptions<Query$GetAdminProfile> {
  Options$Query$GetAdminProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAdminProfile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAdminProfile? onComplete,
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
                    data == null ? null : _parserFn$Query$GetAdminProfile(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAdminProfile,
          parserFn: _parserFn$Query$GetAdminProfile,
        );

  final OnQueryComplete$Query$GetAdminProfile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAdminProfile
    extends graphql.WatchQueryOptions<Query$GetAdminProfile> {
  WatchOptions$Query$GetAdminProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAdminProfile? typedOptimisticResult,
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
          document: documentNodeQueryGetAdminProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAdminProfile,
        );
}

class FetchMoreOptions$Query$GetAdminProfile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAdminProfile(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetAdminProfile,
        );
}

extension ClientExtension$Query$GetAdminProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAdminProfile>> query$GetAdminProfile(
          [Options$Query$GetAdminProfile? options]) async =>
      await this.query(options ?? Options$Query$GetAdminProfile());
  graphql.ObservableQuery<Query$GetAdminProfile> watchQuery$GetAdminProfile(
          [WatchOptions$Query$GetAdminProfile? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAdminProfile());
  void writeQuery$GetAdminProfile({
    required Query$GetAdminProfile data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetAdminProfile)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAdminProfile? readQuery$GetAdminProfile({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAdminProfile)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAdminProfile.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAdminProfile> useQuery$GetAdminProfile(
        [Options$Query$GetAdminProfile? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAdminProfile());
graphql.ObservableQuery<Query$GetAdminProfile> useWatchQuery$GetAdminProfile(
        [WatchOptions$Query$GetAdminProfile? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetAdminProfile());

class Query$GetAdminProfile$Widget
    extends graphql_flutter.Query<Query$GetAdminProfile> {
  Query$GetAdminProfile$Widget({
    widgets.Key? key,
    Options$Query$GetAdminProfile? options,
    required graphql_flutter.QueryBuilder<Query$GetAdminProfile> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAdminProfile(),
          builder: builder,
        );
}

class Query$GetAdminProfile$getAdminProfile {
  Query$GetAdminProfile$getAdminProfile({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.userName,
    this.avatar,
    this.phone,
    this.role,
    this.$__typename = 'AdminResolverResponse',
  });

  factory Query$GetAdminProfile$getAdminProfile.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$userName = json['userName'];
    final l$avatar = json['avatar'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Query$GetAdminProfile$getAdminProfile(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      userName: (l$userName as String?),
      avatar: (l$avatar as String?),
      phone: (l$phone as String?),
      role: (l$role as String?),
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
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAdminProfile$getAdminProfile) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAdminProfile$getAdminProfile
    on Query$GetAdminProfile$getAdminProfile {
  CopyWith$Query$GetAdminProfile$getAdminProfile<
          Query$GetAdminProfile$getAdminProfile>
      get copyWith => CopyWith$Query$GetAdminProfile$getAdminProfile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAdminProfile$getAdminProfile<TRes> {
  factory CopyWith$Query$GetAdminProfile$getAdminProfile(
    Query$GetAdminProfile$getAdminProfile instance,
    TRes Function(Query$GetAdminProfile$getAdminProfile) then,
  ) = _CopyWithImpl$Query$GetAdminProfile$getAdminProfile;

  factory CopyWith$Query$GetAdminProfile$getAdminProfile.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAdminProfile$getAdminProfile;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? userName,
    String? avatar,
    String? phone,
    String? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAdminProfile$getAdminProfile<TRes>
    implements CopyWith$Query$GetAdminProfile$getAdminProfile<TRes> {
  _CopyWithImpl$Query$GetAdminProfile$getAdminProfile(
    this._instance,
    this._then,
  );

  final Query$GetAdminProfile$getAdminProfile _instance;

  final TRes Function(Query$GetAdminProfile$getAdminProfile) _then;

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
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAdminProfile$getAdminProfile(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAdminProfile$getAdminProfile<TRes>
    implements CopyWith$Query$GetAdminProfile$getAdminProfile<TRes> {
  _CopyWithStubImpl$Query$GetAdminProfile$getAdminProfile(this._res);

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
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateAdmin {
  factory Variables$Mutation$UpdateAdmin({
    required String updateAdminId,
    required Input$UpdateAdminInput updateAdminInput,
  }) =>
      Variables$Mutation$UpdateAdmin._({
        r'updateAdminId': updateAdminId,
        r'updateAdminInput': updateAdminInput,
      });

  Variables$Mutation$UpdateAdmin._(this._$data);

  factory Variables$Mutation$UpdateAdmin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$updateAdminId = data['updateAdminId'];
    result$data['updateAdminId'] = (l$updateAdminId as String);
    final l$updateAdminInput = data['updateAdminInput'];
    result$data['updateAdminInput'] = Input$UpdateAdminInput.fromJson(
        (l$updateAdminInput as Map<String, dynamic>));
    return Variables$Mutation$UpdateAdmin._(result$data);
  }

  Map<String, dynamic> _$data;

  String get updateAdminId => (_$data['updateAdminId'] as String);
  Input$UpdateAdminInput get updateAdminInput =>
      (_$data['updateAdminInput'] as Input$UpdateAdminInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$updateAdminId = updateAdminId;
    result$data['updateAdminId'] = l$updateAdminId;
    final l$updateAdminInput = updateAdminInput;
    result$data['updateAdminInput'] = l$updateAdminInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAdmin<Variables$Mutation$UpdateAdmin>
      get copyWith => CopyWith$Variables$Mutation$UpdateAdmin(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateAdmin) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAdminId = updateAdminId;
    final lOther$updateAdminId = other.updateAdminId;
    if (l$updateAdminId != lOther$updateAdminId) {
      return false;
    }
    final l$updateAdminInput = updateAdminInput;
    final lOther$updateAdminInput = other.updateAdminInput;
    if (l$updateAdminInput != lOther$updateAdminInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$updateAdminId = updateAdminId;
    final l$updateAdminInput = updateAdminInput;
    return Object.hashAll([
      l$updateAdminId,
      l$updateAdminInput,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAdmin<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAdmin(
    Variables$Mutation$UpdateAdmin instance,
    TRes Function(Variables$Mutation$UpdateAdmin) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAdmin;

  factory CopyWith$Variables$Mutation$UpdateAdmin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAdmin;

  TRes call({
    String? updateAdminId,
    Input$UpdateAdminInput? updateAdminInput,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateAdmin<TRes>
    implements CopyWith$Variables$Mutation$UpdateAdmin<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAdmin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAdmin _instance;

  final TRes Function(Variables$Mutation$UpdateAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAdminId = _undefined,
    Object? updateAdminInput = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateAdmin._({
        ..._instance._$data,
        if (updateAdminId != _undefined && updateAdminId != null)
          'updateAdminId': (updateAdminId as String),
        if (updateAdminInput != _undefined && updateAdminInput != null)
          'updateAdminInput': (updateAdminInput as Input$UpdateAdminInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAdmin<TRes>
    implements CopyWith$Variables$Mutation$UpdateAdmin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAdmin(this._res);

  TRes _res;

  call({
    String? updateAdminId,
    Input$UpdateAdminInput? updateAdminInput,
  }) =>
      _res;
}

class Mutation$UpdateAdmin {
  Mutation$UpdateAdmin({
    required this.updateAdmin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAdmin.fromJson(Map<String, dynamic> json) {
    final l$updateAdmin = json['updateAdmin'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAdmin(
      updateAdmin: Mutation$UpdateAdmin$updateAdmin.fromJson(
          (l$updateAdmin as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAdmin$updateAdmin updateAdmin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAdmin = updateAdmin;
    _resultData['updateAdmin'] = l$updateAdmin.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAdmin = updateAdmin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAdmin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAdmin) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAdmin = updateAdmin;
    final lOther$updateAdmin = other.updateAdmin;
    if (l$updateAdmin != lOther$updateAdmin) {
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

extension UtilityExtension$Mutation$UpdateAdmin on Mutation$UpdateAdmin {
  CopyWith$Mutation$UpdateAdmin<Mutation$UpdateAdmin> get copyWith =>
      CopyWith$Mutation$UpdateAdmin(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAdmin<TRes> {
  factory CopyWith$Mutation$UpdateAdmin(
    Mutation$UpdateAdmin instance,
    TRes Function(Mutation$UpdateAdmin) then,
  ) = _CopyWithImpl$Mutation$UpdateAdmin;

  factory CopyWith$Mutation$UpdateAdmin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAdmin;

  TRes call({
    Mutation$UpdateAdmin$updateAdmin? updateAdmin,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAdmin$updateAdmin<TRes> get updateAdmin;
}

class _CopyWithImpl$Mutation$UpdateAdmin<TRes>
    implements CopyWith$Mutation$UpdateAdmin<TRes> {
  _CopyWithImpl$Mutation$UpdateAdmin(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAdmin _instance;

  final TRes Function(Mutation$UpdateAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAdmin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAdmin(
        updateAdmin: updateAdmin == _undefined || updateAdmin == null
            ? _instance.updateAdmin
            : (updateAdmin as Mutation$UpdateAdmin$updateAdmin),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateAdmin$updateAdmin<TRes> get updateAdmin {
    final local$updateAdmin = _instance.updateAdmin;
    return CopyWith$Mutation$UpdateAdmin$updateAdmin(
        local$updateAdmin, (e) => call(updateAdmin: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateAdmin<TRes>
    implements CopyWith$Mutation$UpdateAdmin<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAdmin(this._res);

  TRes _res;

  call({
    Mutation$UpdateAdmin$updateAdmin? updateAdmin,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateAdmin$updateAdmin<TRes> get updateAdmin =>
      CopyWith$Mutation$UpdateAdmin$updateAdmin.stub(_res);
}

const documentNodeMutationUpdateAdmin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateAdmin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateAdminId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateAdminInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateAdminInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateAdmin'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'updateAdminId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'updateAdminInput'),
            value: VariableNode(name: NameNode(value: 'updateAdminInput')),
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
            name: NameNode(value: 'userName'),
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
Mutation$UpdateAdmin _parserFn$Mutation$UpdateAdmin(
        Map<String, dynamic> data) =>
    Mutation$UpdateAdmin.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateAdmin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateAdmin?,
);

class Options$Mutation$UpdateAdmin
    extends graphql.MutationOptions<Mutation$UpdateAdmin> {
  Options$Mutation$UpdateAdmin({
    String? operationName,
    required Variables$Mutation$UpdateAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAdmin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateAdmin? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateAdmin>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateAdmin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateAdmin,
          parserFn: _parserFn$Mutation$UpdateAdmin,
        );

  final OnMutationCompleted$Mutation$UpdateAdmin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateAdmin
    extends graphql.WatchQueryOptions<Mutation$UpdateAdmin> {
  WatchOptions$Mutation$UpdateAdmin({
    String? operationName,
    required Variables$Mutation$UpdateAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAdmin? typedOptimisticResult,
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
          document: documentNodeMutationUpdateAdmin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateAdmin,
        );
}

extension ClientExtension$Mutation$UpdateAdmin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateAdmin>> mutate$UpdateAdmin(
          Options$Mutation$UpdateAdmin options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateAdmin> watchMutation$UpdateAdmin(
          WatchOptions$Mutation$UpdateAdmin options) =>
      this.watchMutation(options);
}

class Mutation$UpdateAdmin$HookResult {
  Mutation$UpdateAdmin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateAdmin runMutation;

  final graphql.QueryResult<Mutation$UpdateAdmin> result;
}

Mutation$UpdateAdmin$HookResult useMutation$UpdateAdmin(
    [WidgetOptions$Mutation$UpdateAdmin? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateAdmin());
  return Mutation$UpdateAdmin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateAdmin> useWatchMutation$UpdateAdmin(
        WatchOptions$Mutation$UpdateAdmin options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateAdmin
    extends graphql.MutationOptions<Mutation$UpdateAdmin> {
  WidgetOptions$Mutation$UpdateAdmin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAdmin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateAdmin? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateAdmin>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateAdmin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateAdmin,
          parserFn: _parserFn$Mutation$UpdateAdmin,
        );

  final OnMutationCompleted$Mutation$UpdateAdmin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateAdmin
    = graphql.MultiSourceResult<Mutation$UpdateAdmin> Function(
  Variables$Mutation$UpdateAdmin, {
  Object? optimisticResult,
  Mutation$UpdateAdmin? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateAdmin = widgets.Widget Function(
  RunMutation$Mutation$UpdateAdmin,
  graphql.QueryResult<Mutation$UpdateAdmin>?,
);

class Mutation$UpdateAdmin$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateAdmin> {
  Mutation$UpdateAdmin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateAdmin? options,
    required Builder$Mutation$UpdateAdmin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateAdmin(),
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

class Mutation$UpdateAdmin$updateAdmin {
  Mutation$UpdateAdmin$updateAdmin({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    this.userName,
    this.phone,
    this.role,
    this.$__typename = 'AdminResolverResponse',
  });

  factory Mutation$UpdateAdmin$updateAdmin.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$userName = json['userName'];
    final l$phone = json['phone'];
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAdmin$updateAdmin(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      userName: (l$userName as String?),
      phone: (l$phone as String?),
      role: (l$role as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String firstName;

  final String lastName;

  final String? userName;

  final String? phone;

  final String? role;

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
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$role = role;
    _resultData['role'] = l$role;
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
    final l$phone = phone;
    final l$role = role;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$userName,
      l$phone,
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAdmin$updateAdmin) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateAdmin$updateAdmin
    on Mutation$UpdateAdmin$updateAdmin {
  CopyWith$Mutation$UpdateAdmin$updateAdmin<Mutation$UpdateAdmin$updateAdmin>
      get copyWith => CopyWith$Mutation$UpdateAdmin$updateAdmin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAdmin$updateAdmin<TRes> {
  factory CopyWith$Mutation$UpdateAdmin$updateAdmin(
    Mutation$UpdateAdmin$updateAdmin instance,
    TRes Function(Mutation$UpdateAdmin$updateAdmin) then,
  ) = _CopyWithImpl$Mutation$UpdateAdmin$updateAdmin;

  factory CopyWith$Mutation$UpdateAdmin$updateAdmin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAdmin$updateAdmin;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? userName,
    String? phone,
    String? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAdmin$updateAdmin<TRes>
    implements CopyWith$Mutation$UpdateAdmin$updateAdmin<TRes> {
  _CopyWithImpl$Mutation$UpdateAdmin$updateAdmin(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAdmin$updateAdmin _instance;

  final TRes Function(Mutation$UpdateAdmin$updateAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? userName = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAdmin$updateAdmin(
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
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        role: role == _undefined ? _instance.role : (role as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateAdmin$updateAdmin<TRes>
    implements CopyWith$Mutation$UpdateAdmin$updateAdmin<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAdmin$updateAdmin(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? userName,
    String? phone,
    String? role,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateAdminAvatar {
  factory Variables$Mutation$UpdateAdminAvatar({
    required String avatar,
    required String updateAdminAvatarId,
  }) =>
      Variables$Mutation$UpdateAdminAvatar._({
        r'avatar': avatar,
        r'updateAdminAvatarId': updateAdminAvatarId,
      });

  Variables$Mutation$UpdateAdminAvatar._(this._$data);

  factory Variables$Mutation$UpdateAdminAvatar.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$avatar = data['avatar'];
    result$data['avatar'] = (l$avatar as String);
    final l$updateAdminAvatarId = data['updateAdminAvatarId'];
    result$data['updateAdminAvatarId'] = (l$updateAdminAvatarId as String);
    return Variables$Mutation$UpdateAdminAvatar._(result$data);
  }

  Map<String, dynamic> _$data;

  String get avatar => (_$data['avatar'] as String);
  String get updateAdminAvatarId => (_$data['updateAdminAvatarId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$avatar = avatar;
    result$data['avatar'] = l$avatar;
    final l$updateAdminAvatarId = updateAdminAvatarId;
    result$data['updateAdminAvatarId'] = l$updateAdminAvatarId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAdminAvatar<
          Variables$Mutation$UpdateAdminAvatar>
      get copyWith => CopyWith$Variables$Mutation$UpdateAdminAvatar(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateAdminAvatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$updateAdminAvatarId = updateAdminAvatarId;
    final lOther$updateAdminAvatarId = other.updateAdminAvatarId;
    if (l$updateAdminAvatarId != lOther$updateAdminAvatarId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$updateAdminAvatarId = updateAdminAvatarId;
    return Object.hashAll([
      l$avatar,
      l$updateAdminAvatarId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAdminAvatar<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAdminAvatar(
    Variables$Mutation$UpdateAdminAvatar instance,
    TRes Function(Variables$Mutation$UpdateAdminAvatar) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAdminAvatar;

  factory CopyWith$Variables$Mutation$UpdateAdminAvatar.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAdminAvatar;

  TRes call({
    String? avatar,
    String? updateAdminAvatarId,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateAdminAvatar<TRes>
    implements CopyWith$Variables$Mutation$UpdateAdminAvatar<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAdminAvatar(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAdminAvatar _instance;

  final TRes Function(Variables$Mutation$UpdateAdminAvatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? updateAdminAvatarId = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateAdminAvatar._({
        ..._instance._$data,
        if (avatar != _undefined && avatar != null)
          'avatar': (avatar as String),
        if (updateAdminAvatarId != _undefined && updateAdminAvatarId != null)
          'updateAdminAvatarId': (updateAdminAvatarId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAdminAvatar<TRes>
    implements CopyWith$Variables$Mutation$UpdateAdminAvatar<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAdminAvatar(this._res);

  TRes _res;

  call({
    String? avatar,
    String? updateAdminAvatarId,
  }) =>
      _res;
}

class Mutation$UpdateAdminAvatar {
  Mutation$UpdateAdminAvatar({
    required this.updateAdminAvatar,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAdminAvatar.fromJson(Map<String, dynamic> json) {
    final l$updateAdminAvatar = json['updateAdminAvatar'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAdminAvatar(
      updateAdminAvatar: (l$updateAdminAvatar as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateAdminAvatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAdminAvatar = updateAdminAvatar;
    _resultData['updateAdminAvatar'] = l$updateAdminAvatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAdminAvatar = updateAdminAvatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAdminAvatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateAdminAvatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAdminAvatar = updateAdminAvatar;
    final lOther$updateAdminAvatar = other.updateAdminAvatar;
    if (l$updateAdminAvatar != lOther$updateAdminAvatar) {
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

extension UtilityExtension$Mutation$UpdateAdminAvatar
    on Mutation$UpdateAdminAvatar {
  CopyWith$Mutation$UpdateAdminAvatar<Mutation$UpdateAdminAvatar>
      get copyWith => CopyWith$Mutation$UpdateAdminAvatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateAdminAvatar<TRes> {
  factory CopyWith$Mutation$UpdateAdminAvatar(
    Mutation$UpdateAdminAvatar instance,
    TRes Function(Mutation$UpdateAdminAvatar) then,
  ) = _CopyWithImpl$Mutation$UpdateAdminAvatar;

  factory CopyWith$Mutation$UpdateAdminAvatar.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAdminAvatar;

  TRes call({
    bool? updateAdminAvatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAdminAvatar<TRes>
    implements CopyWith$Mutation$UpdateAdminAvatar<TRes> {
  _CopyWithImpl$Mutation$UpdateAdminAvatar(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAdminAvatar _instance;

  final TRes Function(Mutation$UpdateAdminAvatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAdminAvatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateAdminAvatar(
        updateAdminAvatar:
            updateAdminAvatar == _undefined || updateAdminAvatar == null
                ? _instance.updateAdminAvatar
                : (updateAdminAvatar as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateAdminAvatar<TRes>
    implements CopyWith$Mutation$UpdateAdminAvatar<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAdminAvatar(this._res);

  TRes _res;

  call({
    bool? updateAdminAvatar,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateAdminAvatar = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateAdminAvatar'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'avatar')),
        type: NamedTypeNode(
          name: NameNode(value: 'Upload'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateAdminAvatarId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateAdminAvatar'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'avatar'),
            value: VariableNode(name: NameNode(value: 'avatar')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'updateAdminAvatarId')),
          ),
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
Mutation$UpdateAdminAvatar _parserFn$Mutation$UpdateAdminAvatar(
        Map<String, dynamic> data) =>
    Mutation$UpdateAdminAvatar.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateAdminAvatar = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateAdminAvatar?,
);

class Options$Mutation$UpdateAdminAvatar
    extends graphql.MutationOptions<Mutation$UpdateAdminAvatar> {
  Options$Mutation$UpdateAdminAvatar({
    String? operationName,
    required Variables$Mutation$UpdateAdminAvatar variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAdminAvatar? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateAdminAvatar? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateAdminAvatar>? update,
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
                        : _parserFn$Mutation$UpdateAdminAvatar(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateAdminAvatar,
          parserFn: _parserFn$Mutation$UpdateAdminAvatar,
        );

  final OnMutationCompleted$Mutation$UpdateAdminAvatar? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateAdminAvatar
    extends graphql.WatchQueryOptions<Mutation$UpdateAdminAvatar> {
  WatchOptions$Mutation$UpdateAdminAvatar({
    String? operationName,
    required Variables$Mutation$UpdateAdminAvatar variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAdminAvatar? typedOptimisticResult,
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
          document: documentNodeMutationUpdateAdminAvatar,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateAdminAvatar,
        );
}

extension ClientExtension$Mutation$UpdateAdminAvatar on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateAdminAvatar>>
      mutate$UpdateAdminAvatar(
              Options$Mutation$UpdateAdminAvatar options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateAdminAvatar>
      watchMutation$UpdateAdminAvatar(
              WatchOptions$Mutation$UpdateAdminAvatar options) =>
          this.watchMutation(options);
}

class Mutation$UpdateAdminAvatar$HookResult {
  Mutation$UpdateAdminAvatar$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateAdminAvatar runMutation;

  final graphql.QueryResult<Mutation$UpdateAdminAvatar> result;
}

Mutation$UpdateAdminAvatar$HookResult useMutation$UpdateAdminAvatar(
    [WidgetOptions$Mutation$UpdateAdminAvatar? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateAdminAvatar());
  return Mutation$UpdateAdminAvatar$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateAdminAvatar>
    useWatchMutation$UpdateAdminAvatar(
            WatchOptions$Mutation$UpdateAdminAvatar options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateAdminAvatar
    extends graphql.MutationOptions<Mutation$UpdateAdminAvatar> {
  WidgetOptions$Mutation$UpdateAdminAvatar({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateAdminAvatar? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateAdminAvatar? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateAdminAvatar>? update,
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
                        : _parserFn$Mutation$UpdateAdminAvatar(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateAdminAvatar,
          parserFn: _parserFn$Mutation$UpdateAdminAvatar,
        );

  final OnMutationCompleted$Mutation$UpdateAdminAvatar? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateAdminAvatar
    = graphql.MultiSourceResult<Mutation$UpdateAdminAvatar> Function(
  Variables$Mutation$UpdateAdminAvatar, {
  Object? optimisticResult,
  Mutation$UpdateAdminAvatar? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateAdminAvatar = widgets.Widget Function(
  RunMutation$Mutation$UpdateAdminAvatar,
  graphql.QueryResult<Mutation$UpdateAdminAvatar>?,
);

class Mutation$UpdateAdminAvatar$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateAdminAvatar> {
  Mutation$UpdateAdminAvatar$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateAdminAvatar? options,
    required Builder$Mutation$UpdateAdminAvatar builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateAdminAvatar(),
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

class Variables$Mutation$DeleteAdminAvatar {
  factory Variables$Mutation$DeleteAdminAvatar(
          {required String deleteAvatarId}) =>
      Variables$Mutation$DeleteAdminAvatar._({
        r'deleteAvatarId': deleteAvatarId,
      });

  Variables$Mutation$DeleteAdminAvatar._(this._$data);

  factory Variables$Mutation$DeleteAdminAvatar.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deleteAvatarId = data['deleteAvatarId'];
    result$data['deleteAvatarId'] = (l$deleteAvatarId as String);
    return Variables$Mutation$DeleteAdminAvatar._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deleteAvatarId => (_$data['deleteAvatarId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteAvatarId = deleteAvatarId;
    result$data['deleteAvatarId'] = l$deleteAvatarId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAdminAvatar<
          Variables$Mutation$DeleteAdminAvatar>
      get copyWith => CopyWith$Variables$Mutation$DeleteAdminAvatar(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteAdminAvatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAvatarId = deleteAvatarId;
    final lOther$deleteAvatarId = other.deleteAvatarId;
    if (l$deleteAvatarId != lOther$deleteAvatarId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteAvatarId = deleteAvatarId;
    return Object.hashAll([l$deleteAvatarId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteAdminAvatar<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAdminAvatar(
    Variables$Mutation$DeleteAdminAvatar instance,
    TRes Function(Variables$Mutation$DeleteAdminAvatar) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAdminAvatar;

  factory CopyWith$Variables$Mutation$DeleteAdminAvatar.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAdminAvatar;

  TRes call({String? deleteAvatarId});
}

class _CopyWithImpl$Variables$Mutation$DeleteAdminAvatar<TRes>
    implements CopyWith$Variables$Mutation$DeleteAdminAvatar<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAdminAvatar(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAdminAvatar _instance;

  final TRes Function(Variables$Mutation$DeleteAdminAvatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteAvatarId = _undefined}) =>
      _then(Variables$Mutation$DeleteAdminAvatar._({
        ..._instance._$data,
        if (deleteAvatarId != _undefined && deleteAvatarId != null)
          'deleteAvatarId': (deleteAvatarId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAdminAvatar<TRes>
    implements CopyWith$Variables$Mutation$DeleteAdminAvatar<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAdminAvatar(this._res);

  TRes _res;

  call({String? deleteAvatarId}) => _res;
}

class Mutation$DeleteAdminAvatar {
  Mutation$DeleteAdminAvatar({
    required this.deleteAdminAvatar,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAdminAvatar.fromJson(Map<String, dynamic> json) {
    final l$deleteAdminAvatar = json['deleteAdminAvatar'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAdminAvatar(
      deleteAdminAvatar: (l$deleteAdminAvatar as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteAdminAvatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAdminAvatar = deleteAdminAvatar;
    _resultData['deleteAdminAvatar'] = l$deleteAdminAvatar;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAdminAvatar = deleteAdminAvatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteAdminAvatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteAdminAvatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAdminAvatar = deleteAdminAvatar;
    final lOther$deleteAdminAvatar = other.deleteAdminAvatar;
    if (l$deleteAdminAvatar != lOther$deleteAdminAvatar) {
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

extension UtilityExtension$Mutation$DeleteAdminAvatar
    on Mutation$DeleteAdminAvatar {
  CopyWith$Mutation$DeleteAdminAvatar<Mutation$DeleteAdminAvatar>
      get copyWith => CopyWith$Mutation$DeleteAdminAvatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteAdminAvatar<TRes> {
  factory CopyWith$Mutation$DeleteAdminAvatar(
    Mutation$DeleteAdminAvatar instance,
    TRes Function(Mutation$DeleteAdminAvatar) then,
  ) = _CopyWithImpl$Mutation$DeleteAdminAvatar;

  factory CopyWith$Mutation$DeleteAdminAvatar.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAdminAvatar;

  TRes call({
    bool? deleteAdminAvatar,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteAdminAvatar<TRes>
    implements CopyWith$Mutation$DeleteAdminAvatar<TRes> {
  _CopyWithImpl$Mutation$DeleteAdminAvatar(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAdminAvatar _instance;

  final TRes Function(Mutation$DeleteAdminAvatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAdminAvatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteAdminAvatar(
        deleteAdminAvatar:
            deleteAdminAvatar == _undefined || deleteAdminAvatar == null
                ? _instance.deleteAdminAvatar
                : (deleteAdminAvatar as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteAdminAvatar<TRes>
    implements CopyWith$Mutation$DeleteAdminAvatar<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAdminAvatar(this._res);

  TRes _res;

  call({
    bool? deleteAdminAvatar,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteAdminAvatar = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteAdminAvatar'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteAvatarId')),
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
        name: NameNode(value: 'deleteAdminAvatar'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'deleteAvatarId')),
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
Mutation$DeleteAdminAvatar _parserFn$Mutation$DeleteAdminAvatar(
        Map<String, dynamic> data) =>
    Mutation$DeleteAdminAvatar.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteAdminAvatar = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteAdminAvatar?,
);

class Options$Mutation$DeleteAdminAvatar
    extends graphql.MutationOptions<Mutation$DeleteAdminAvatar> {
  Options$Mutation$DeleteAdminAvatar({
    String? operationName,
    required Variables$Mutation$DeleteAdminAvatar variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAdminAvatar? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAdminAvatar? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAdminAvatar>? update,
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
                        : _parserFn$Mutation$DeleteAdminAvatar(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAdminAvatar,
          parserFn: _parserFn$Mutation$DeleteAdminAvatar,
        );

  final OnMutationCompleted$Mutation$DeleteAdminAvatar? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteAdminAvatar
    extends graphql.WatchQueryOptions<Mutation$DeleteAdminAvatar> {
  WatchOptions$Mutation$DeleteAdminAvatar({
    String? operationName,
    required Variables$Mutation$DeleteAdminAvatar variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAdminAvatar? typedOptimisticResult,
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
          document: documentNodeMutationDeleteAdminAvatar,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteAdminAvatar,
        );
}

extension ClientExtension$Mutation$DeleteAdminAvatar on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteAdminAvatar>>
      mutate$DeleteAdminAvatar(
              Options$Mutation$DeleteAdminAvatar options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteAdminAvatar>
      watchMutation$DeleteAdminAvatar(
              WatchOptions$Mutation$DeleteAdminAvatar options) =>
          this.watchMutation(options);
}

class Mutation$DeleteAdminAvatar$HookResult {
  Mutation$DeleteAdminAvatar$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteAdminAvatar runMutation;

  final graphql.QueryResult<Mutation$DeleteAdminAvatar> result;
}

Mutation$DeleteAdminAvatar$HookResult useMutation$DeleteAdminAvatar(
    [WidgetOptions$Mutation$DeleteAdminAvatar? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteAdminAvatar());
  return Mutation$DeleteAdminAvatar$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteAdminAvatar>
    useWatchMutation$DeleteAdminAvatar(
            WatchOptions$Mutation$DeleteAdminAvatar options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteAdminAvatar
    extends graphql.MutationOptions<Mutation$DeleteAdminAvatar> {
  WidgetOptions$Mutation$DeleteAdminAvatar({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAdminAvatar? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAdminAvatar? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAdminAvatar>? update,
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
                        : _parserFn$Mutation$DeleteAdminAvatar(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAdminAvatar,
          parserFn: _parserFn$Mutation$DeleteAdminAvatar,
        );

  final OnMutationCompleted$Mutation$DeleteAdminAvatar? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteAdminAvatar
    = graphql.MultiSourceResult<Mutation$DeleteAdminAvatar> Function(
  Variables$Mutation$DeleteAdminAvatar, {
  Object? optimisticResult,
  Mutation$DeleteAdminAvatar? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteAdminAvatar = widgets.Widget Function(
  RunMutation$Mutation$DeleteAdminAvatar,
  graphql.QueryResult<Mutation$DeleteAdminAvatar>?,
);

class Mutation$DeleteAdminAvatar$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteAdminAvatar> {
  Mutation$DeleteAdminAvatar$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteAdminAvatar? options,
    required Builder$Mutation$DeleteAdminAvatar builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteAdminAvatar(),
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

class Query$LogoutAdmin {
  Query$LogoutAdmin({
    required this.logoutAdmin,
    this.$__typename = 'Query',
  });

  factory Query$LogoutAdmin.fromJson(Map<String, dynamic> json) {
    final l$logoutAdmin = json['logoutAdmin'];
    final l$$__typename = json['__typename'];
    return Query$LogoutAdmin(
      logoutAdmin: (l$logoutAdmin as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool logoutAdmin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$logoutAdmin = logoutAdmin;
    _resultData['logoutAdmin'] = l$logoutAdmin;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$logoutAdmin = logoutAdmin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$logoutAdmin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$LogoutAdmin) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$logoutAdmin = logoutAdmin;
    final lOther$logoutAdmin = other.logoutAdmin;
    if (l$logoutAdmin != lOther$logoutAdmin) {
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

extension UtilityExtension$Query$LogoutAdmin on Query$LogoutAdmin {
  CopyWith$Query$LogoutAdmin<Query$LogoutAdmin> get copyWith =>
      CopyWith$Query$LogoutAdmin(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LogoutAdmin<TRes> {
  factory CopyWith$Query$LogoutAdmin(
    Query$LogoutAdmin instance,
    TRes Function(Query$LogoutAdmin) then,
  ) = _CopyWithImpl$Query$LogoutAdmin;

  factory CopyWith$Query$LogoutAdmin.stub(TRes res) =
      _CopyWithStubImpl$Query$LogoutAdmin;

  TRes call({
    bool? logoutAdmin,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LogoutAdmin<TRes>
    implements CopyWith$Query$LogoutAdmin<TRes> {
  _CopyWithImpl$Query$LogoutAdmin(
    this._instance,
    this._then,
  );

  final Query$LogoutAdmin _instance;

  final TRes Function(Query$LogoutAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logoutAdmin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$LogoutAdmin(
        logoutAdmin: logoutAdmin == _undefined || logoutAdmin == null
            ? _instance.logoutAdmin
            : (logoutAdmin as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$LogoutAdmin<TRes>
    implements CopyWith$Query$LogoutAdmin<TRes> {
  _CopyWithStubImpl$Query$LogoutAdmin(this._res);

  TRes _res;

  call({
    bool? logoutAdmin,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryLogoutAdmin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'LogoutAdmin'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'logoutAdmin'),
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
Query$LogoutAdmin _parserFn$Query$LogoutAdmin(Map<String, dynamic> data) =>
    Query$LogoutAdmin.fromJson(data);
typedef OnQueryComplete$Query$LogoutAdmin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$LogoutAdmin?,
);

class Options$Query$LogoutAdmin
    extends graphql.QueryOptions<Query$LogoutAdmin> {
  Options$Query$LogoutAdmin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LogoutAdmin? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LogoutAdmin? onComplete,
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
                    data == null ? null : _parserFn$Query$LogoutAdmin(data),
                  ),
          onError: onError,
          document: documentNodeQueryLogoutAdmin,
          parserFn: _parserFn$Query$LogoutAdmin,
        );

  final OnQueryComplete$Query$LogoutAdmin? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$LogoutAdmin
    extends graphql.WatchQueryOptions<Query$LogoutAdmin> {
  WatchOptions$Query$LogoutAdmin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LogoutAdmin? typedOptimisticResult,
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
          document: documentNodeQueryLogoutAdmin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$LogoutAdmin,
        );
}

class FetchMoreOptions$Query$LogoutAdmin extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LogoutAdmin({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryLogoutAdmin,
        );
}

extension ClientExtension$Query$LogoutAdmin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LogoutAdmin>> query$LogoutAdmin(
          [Options$Query$LogoutAdmin? options]) async =>
      await this.query(options ?? Options$Query$LogoutAdmin());
  graphql.ObservableQuery<Query$LogoutAdmin> watchQuery$LogoutAdmin(
          [WatchOptions$Query$LogoutAdmin? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$LogoutAdmin());
  void writeQuery$LogoutAdmin({
    required Query$LogoutAdmin data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryLogoutAdmin)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$LogoutAdmin? readQuery$LogoutAdmin({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLogoutAdmin)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LogoutAdmin.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LogoutAdmin> useQuery$LogoutAdmin(
        [Options$Query$LogoutAdmin? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$LogoutAdmin());
graphql.ObservableQuery<Query$LogoutAdmin> useWatchQuery$LogoutAdmin(
        [WatchOptions$Query$LogoutAdmin? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$LogoutAdmin());

class Query$LogoutAdmin$Widget
    extends graphql_flutter.Query<Query$LogoutAdmin> {
  Query$LogoutAdmin$Widget({
    widgets.Key? key,
    Options$Query$LogoutAdmin? options,
    required graphql_flutter.QueryBuilder<Query$LogoutAdmin> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$LogoutAdmin(),
          builder: builder,
        );
}

class Variables$Mutation$DeleteAdmin {
  factory Variables$Mutation$DeleteAdmin({required String deleteAdminId}) =>
      Variables$Mutation$DeleteAdmin._({
        r'deleteAdminId': deleteAdminId,
      });

  Variables$Mutation$DeleteAdmin._(this._$data);

  factory Variables$Mutation$DeleteAdmin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deleteAdminId = data['deleteAdminId'];
    result$data['deleteAdminId'] = (l$deleteAdminId as String);
    return Variables$Mutation$DeleteAdmin._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deleteAdminId => (_$data['deleteAdminId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteAdminId = deleteAdminId;
    result$data['deleteAdminId'] = l$deleteAdminId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAdmin<Variables$Mutation$DeleteAdmin>
      get copyWith => CopyWith$Variables$Mutation$DeleteAdmin(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteAdmin) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAdminId = deleteAdminId;
    final lOther$deleteAdminId = other.deleteAdminId;
    if (l$deleteAdminId != lOther$deleteAdminId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteAdminId = deleteAdminId;
    return Object.hashAll([l$deleteAdminId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteAdmin<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAdmin(
    Variables$Mutation$DeleteAdmin instance,
    TRes Function(Variables$Mutation$DeleteAdmin) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAdmin;

  factory CopyWith$Variables$Mutation$DeleteAdmin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAdmin;

  TRes call({String? deleteAdminId});
}

class _CopyWithImpl$Variables$Mutation$DeleteAdmin<TRes>
    implements CopyWith$Variables$Mutation$DeleteAdmin<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAdmin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAdmin _instance;

  final TRes Function(Variables$Mutation$DeleteAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteAdminId = _undefined}) =>
      _then(Variables$Mutation$DeleteAdmin._({
        ..._instance._$data,
        if (deleteAdminId != _undefined && deleteAdminId != null)
          'deleteAdminId': (deleteAdminId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAdmin<TRes>
    implements CopyWith$Variables$Mutation$DeleteAdmin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAdmin(this._res);

  TRes _res;

  call({String? deleteAdminId}) => _res;
}

class Mutation$DeleteAdmin {
  Mutation$DeleteAdmin({
    required this.deleteAdmin,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAdmin.fromJson(Map<String, dynamic> json) {
    final l$deleteAdmin = json['deleteAdmin'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAdmin(
      deleteAdmin: (l$deleteAdmin as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteAdmin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAdmin = deleteAdmin;
    _resultData['deleteAdmin'] = l$deleteAdmin;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAdmin = deleteAdmin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteAdmin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteAdmin) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAdmin = deleteAdmin;
    final lOther$deleteAdmin = other.deleteAdmin;
    if (l$deleteAdmin != lOther$deleteAdmin) {
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

extension UtilityExtension$Mutation$DeleteAdmin on Mutation$DeleteAdmin {
  CopyWith$Mutation$DeleteAdmin<Mutation$DeleteAdmin> get copyWith =>
      CopyWith$Mutation$DeleteAdmin(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAdmin<TRes> {
  factory CopyWith$Mutation$DeleteAdmin(
    Mutation$DeleteAdmin instance,
    TRes Function(Mutation$DeleteAdmin) then,
  ) = _CopyWithImpl$Mutation$DeleteAdmin;

  factory CopyWith$Mutation$DeleteAdmin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAdmin;

  TRes call({
    bool? deleteAdmin,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteAdmin<TRes>
    implements CopyWith$Mutation$DeleteAdmin<TRes> {
  _CopyWithImpl$Mutation$DeleteAdmin(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAdmin _instance;

  final TRes Function(Mutation$DeleteAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAdmin = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteAdmin(
        deleteAdmin: deleteAdmin == _undefined || deleteAdmin == null
            ? _instance.deleteAdmin
            : (deleteAdmin as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteAdmin<TRes>
    implements CopyWith$Mutation$DeleteAdmin<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAdmin(this._res);

  TRes _res;

  call({
    bool? deleteAdmin,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteAdmin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteAdmin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteAdminId')),
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
        name: NameNode(value: 'deleteAdmin'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'deleteAdminId')),
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
Mutation$DeleteAdmin _parserFn$Mutation$DeleteAdmin(
        Map<String, dynamic> data) =>
    Mutation$DeleteAdmin.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteAdmin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteAdmin?,
);

class Options$Mutation$DeleteAdmin
    extends graphql.MutationOptions<Mutation$DeleteAdmin> {
  Options$Mutation$DeleteAdmin({
    String? operationName,
    required Variables$Mutation$DeleteAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAdmin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAdmin? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAdmin>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteAdmin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAdmin,
          parserFn: _parserFn$Mutation$DeleteAdmin,
        );

  final OnMutationCompleted$Mutation$DeleteAdmin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteAdmin
    extends graphql.WatchQueryOptions<Mutation$DeleteAdmin> {
  WatchOptions$Mutation$DeleteAdmin({
    String? operationName,
    required Variables$Mutation$DeleteAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAdmin? typedOptimisticResult,
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
          document: documentNodeMutationDeleteAdmin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteAdmin,
        );
}

extension ClientExtension$Mutation$DeleteAdmin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteAdmin>> mutate$DeleteAdmin(
          Options$Mutation$DeleteAdmin options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteAdmin> watchMutation$DeleteAdmin(
          WatchOptions$Mutation$DeleteAdmin options) =>
      this.watchMutation(options);
}

class Mutation$DeleteAdmin$HookResult {
  Mutation$DeleteAdmin$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteAdmin runMutation;

  final graphql.QueryResult<Mutation$DeleteAdmin> result;
}

Mutation$DeleteAdmin$HookResult useMutation$DeleteAdmin(
    [WidgetOptions$Mutation$DeleteAdmin? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteAdmin());
  return Mutation$DeleteAdmin$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteAdmin> useWatchMutation$DeleteAdmin(
        WatchOptions$Mutation$DeleteAdmin options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteAdmin
    extends graphql.MutationOptions<Mutation$DeleteAdmin> {
  WidgetOptions$Mutation$DeleteAdmin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAdmin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAdmin? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAdmin>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteAdmin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAdmin,
          parserFn: _parserFn$Mutation$DeleteAdmin,
        );

  final OnMutationCompleted$Mutation$DeleteAdmin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteAdmin
    = graphql.MultiSourceResult<Mutation$DeleteAdmin> Function(
  Variables$Mutation$DeleteAdmin, {
  Object? optimisticResult,
  Mutation$DeleteAdmin? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteAdmin = widgets.Widget Function(
  RunMutation$Mutation$DeleteAdmin,
  graphql.QueryResult<Mutation$DeleteAdmin>?,
);

class Mutation$DeleteAdmin$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteAdmin> {
  Mutation$DeleteAdmin$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteAdmin? options,
    required Builder$Mutation$DeleteAdmin builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteAdmin(),
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
