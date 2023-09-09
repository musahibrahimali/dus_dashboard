import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$Mutation {
  factory Variables$Mutation$Mutation(
          {required Input$CreateEmployeeInput createEmployeeInput}) =>
      Variables$Mutation$Mutation._({
        r'createEmployeeInput': createEmployeeInput,
      });

  Variables$Mutation$Mutation._(this._$data);

  factory Variables$Mutation$Mutation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$createEmployeeInput = data['createEmployeeInput'];
    result$data['createEmployeeInput'] = Input$CreateEmployeeInput.fromJson(
        (l$createEmployeeInput as Map<String, dynamic>));
    return Variables$Mutation$Mutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateEmployeeInput get createEmployeeInput =>
      (_$data['createEmployeeInput'] as Input$CreateEmployeeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$createEmployeeInput = createEmployeeInput;
    result$data['createEmployeeInput'] = l$createEmployeeInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Mutation<Variables$Mutation$Mutation>
      get copyWith => CopyWith$Variables$Mutation$Mutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Mutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createEmployeeInput = createEmployeeInput;
    final lOther$createEmployeeInput = other.createEmployeeInput;
    if (l$createEmployeeInput != lOther$createEmployeeInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createEmployeeInput = createEmployeeInput;
    return Object.hashAll([l$createEmployeeInput]);
  }
}

abstract class CopyWith$Variables$Mutation$Mutation<TRes> {
  factory CopyWith$Variables$Mutation$Mutation(
    Variables$Mutation$Mutation instance,
    TRes Function(Variables$Mutation$Mutation) then,
  ) = _CopyWithImpl$Variables$Mutation$Mutation;

  factory CopyWith$Variables$Mutation$Mutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Mutation;

  TRes call({Input$CreateEmployeeInput? createEmployeeInput});
}

class _CopyWithImpl$Variables$Mutation$Mutation<TRes>
    implements CopyWith$Variables$Mutation$Mutation<TRes> {
  _CopyWithImpl$Variables$Mutation$Mutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Mutation _instance;

  final TRes Function(Variables$Mutation$Mutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? createEmployeeInput = _undefined}) =>
      _then(Variables$Mutation$Mutation._({
        ..._instance._$data,
        if (createEmployeeInput != _undefined && createEmployeeInput != null)
          'createEmployeeInput':
              (createEmployeeInput as Input$CreateEmployeeInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Mutation<TRes>
    implements CopyWith$Variables$Mutation$Mutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Mutation(this._res);

  TRes _res;

  call({Input$CreateEmployeeInput? createEmployeeInput}) => _res;
}

class Mutation$Mutation {
  Mutation$Mutation({
    required this.createEmployee,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Mutation.fromJson(Map<String, dynamic> json) {
    final l$createEmployee = json['createEmployee'];
    final l$$__typename = json['__typename'];
    return Mutation$Mutation(
      createEmployee: Mutation$Mutation$createEmployee.fromJson(
          (l$createEmployee as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Mutation$createEmployee createEmployee;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createEmployee = createEmployee;
    _resultData['createEmployee'] = l$createEmployee.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createEmployee = createEmployee;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createEmployee,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Mutation) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createEmployee = createEmployee;
    final lOther$createEmployee = other.createEmployee;
    if (l$createEmployee != lOther$createEmployee) {
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

extension UtilityExtension$Mutation$Mutation on Mutation$Mutation {
  CopyWith$Mutation$Mutation<Mutation$Mutation> get copyWith =>
      CopyWith$Mutation$Mutation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Mutation<TRes> {
  factory CopyWith$Mutation$Mutation(
    Mutation$Mutation instance,
    TRes Function(Mutation$Mutation) then,
  ) = _CopyWithImpl$Mutation$Mutation;

  factory CopyWith$Mutation$Mutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Mutation;

  TRes call({
    Mutation$Mutation$createEmployee? createEmployee,
    String? $__typename,
  });
  CopyWith$Mutation$Mutation$createEmployee<TRes> get createEmployee;
}

class _CopyWithImpl$Mutation$Mutation<TRes>
    implements CopyWith$Mutation$Mutation<TRes> {
  _CopyWithImpl$Mutation$Mutation(
    this._instance,
    this._then,
  );

  final Mutation$Mutation _instance;

  final TRes Function(Mutation$Mutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createEmployee = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Mutation(
        createEmployee: createEmployee == _undefined || createEmployee == null
            ? _instance.createEmployee
            : (createEmployee as Mutation$Mutation$createEmployee),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$Mutation$createEmployee<TRes> get createEmployee {
    final local$createEmployee = _instance.createEmployee;
    return CopyWith$Mutation$Mutation$createEmployee(
        local$createEmployee, (e) => call(createEmployee: e));
  }
}

class _CopyWithStubImpl$Mutation$Mutation<TRes>
    implements CopyWith$Mutation$Mutation<TRes> {
  _CopyWithStubImpl$Mutation$Mutation(this._res);

  TRes _res;

  call({
    Mutation$Mutation$createEmployee? createEmployee,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$Mutation$createEmployee<TRes> get createEmployee =>
      CopyWith$Mutation$Mutation$createEmployee.stub(_res);
}

const documentNodeMutationMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Mutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createEmployeeInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateEmployeeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createEmployee'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'createEmployeeInput'),
            value: VariableNode(name: NameNode(value: 'createEmployeeInput')),
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
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'designation'),
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
            name: NameNode(value: 'phoneNumber'),
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
            name: NameNode(value: 'attendance'),
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
                name: NameNode(value: 'closeTime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startTime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'employeeId'),
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
Mutation$Mutation _parserFn$Mutation$Mutation(Map<String, dynamic> data) =>
    Mutation$Mutation.fromJson(data);
typedef OnMutationCompleted$Mutation$Mutation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Mutation?,
);

class Options$Mutation$Mutation
    extends graphql.MutationOptions<Mutation$Mutation> {
  Options$Mutation$Mutation({
    String? operationName,
    required Variables$Mutation$Mutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Mutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Mutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$Mutation>? update,
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
                    data == null ? null : _parserFn$Mutation$Mutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationMutation,
          parserFn: _parserFn$Mutation$Mutation,
        );

  final OnMutationCompleted$Mutation$Mutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Mutation
    extends graphql.WatchQueryOptions<Mutation$Mutation> {
  WatchOptions$Mutation$Mutation({
    String? operationName,
    required Variables$Mutation$Mutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Mutation? typedOptimisticResult,
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
          document: documentNodeMutationMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Mutation,
        );
}

extension ClientExtension$Mutation$Mutation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Mutation>> mutate$Mutation(
          Options$Mutation$Mutation options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Mutation> watchMutation$Mutation(
          WatchOptions$Mutation$Mutation options) =>
      this.watchMutation(options);
}

class Mutation$Mutation$HookResult {
  Mutation$Mutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Mutation runMutation;

  final graphql.QueryResult<Mutation$Mutation> result;
}

Mutation$Mutation$HookResult useMutation$Mutation(
    [WidgetOptions$Mutation$Mutation? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Mutation());
  return Mutation$Mutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Mutation> useWatchMutation$Mutation(
        WatchOptions$Mutation$Mutation options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Mutation
    extends graphql.MutationOptions<Mutation$Mutation> {
  WidgetOptions$Mutation$Mutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Mutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Mutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$Mutation>? update,
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
                    data == null ? null : _parserFn$Mutation$Mutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationMutation,
          parserFn: _parserFn$Mutation$Mutation,
        );

  final OnMutationCompleted$Mutation$Mutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Mutation
    = graphql.MultiSourceResult<Mutation$Mutation> Function(
  Variables$Mutation$Mutation, {
  Object? optimisticResult,
  Mutation$Mutation? typedOptimisticResult,
});
typedef Builder$Mutation$Mutation = widgets.Widget Function(
  RunMutation$Mutation$Mutation,
  graphql.QueryResult<Mutation$Mutation>?,
);

class Mutation$Mutation$Widget
    extends graphql_flutter.Mutation<Mutation$Mutation> {
  Mutation$Mutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Mutation? options,
    required Builder$Mutation$Mutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Mutation(),
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

class Mutation$Mutation$createEmployee {
  Mutation$Mutation$createEmployee({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.email,
    required this.designation,
    this.avatar,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
    this.attendance,
    this.$__typename = 'GEmployee',
  });

  factory Mutation$Mutation$createEmployee.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$designation = json['designation'];
    final l$avatar = json['avatar'];
    final l$phoneNumber = json['phoneNumber'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$attendance = json['attendance'];
    final l$$__typename = json['__typename'];
    return Mutation$Mutation$createEmployee(
      id: (l$id as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      email: (l$email as String?),
      designation: (l$designation as String),
      avatar: (l$avatar as String?),
      phoneNumber: (l$phoneNumber as String?),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      attendance: (l$attendance as List<dynamic>?)
          ?.map((e) => Mutation$Mutation$createEmployee$attendance.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String firstName;

  final String lastName;

  final String? email;

  final String designation;

  final String? avatar;

  final String? phoneNumber;

  final String? createdAt;

  final String? updatedAt;

  final List<Mutation$Mutation$createEmployee$attendance>? attendance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$designation = designation;
    _resultData['designation'] = l$designation;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar;
    final l$phoneNumber = phoneNumber;
    _resultData['phoneNumber'] = l$phoneNumber;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$attendance = attendance;
    _resultData['attendance'] = l$attendance?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$designation = designation;
    final l$avatar = avatar;
    final l$phoneNumber = phoneNumber;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$attendance = attendance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$email,
      l$designation,
      l$avatar,
      l$phoneNumber,
      l$createdAt,
      l$updatedAt,
      l$attendance == null ? null : Object.hashAll(l$attendance.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Mutation$createEmployee) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$designation = designation;
    final lOther$designation = other.designation;
    if (l$designation != lOther$designation) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
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
    final l$attendance = attendance;
    final lOther$attendance = other.attendance;
    if (l$attendance != null && lOther$attendance != null) {
      if (l$attendance.length != lOther$attendance.length) {
        return false;
      }
      for (int i = 0; i < l$attendance.length; i++) {
        final l$attendance$entry = l$attendance[i];
        final lOther$attendance$entry = lOther$attendance[i];
        if (l$attendance$entry != lOther$attendance$entry) {
          return false;
        }
      }
    } else if (l$attendance != lOther$attendance) {
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

extension UtilityExtension$Mutation$Mutation$createEmployee
    on Mutation$Mutation$createEmployee {
  CopyWith$Mutation$Mutation$createEmployee<Mutation$Mutation$createEmployee>
      get copyWith => CopyWith$Mutation$Mutation$createEmployee(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Mutation$createEmployee<TRes> {
  factory CopyWith$Mutation$Mutation$createEmployee(
    Mutation$Mutation$createEmployee instance,
    TRes Function(Mutation$Mutation$createEmployee) then,
  ) = _CopyWithImpl$Mutation$Mutation$createEmployee;

  factory CopyWith$Mutation$Mutation$createEmployee.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Mutation$createEmployee;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? designation,
    String? avatar,
    String? phoneNumber,
    String? createdAt,
    String? updatedAt,
    List<Mutation$Mutation$createEmployee$attendance>? attendance,
    String? $__typename,
  });
  TRes attendance(
      Iterable<Mutation$Mutation$createEmployee$attendance>? Function(
              Iterable<
                  CopyWith$Mutation$Mutation$createEmployee$attendance<
                      Mutation$Mutation$createEmployee$attendance>>?)
          _fn);
}

class _CopyWithImpl$Mutation$Mutation$createEmployee<TRes>
    implements CopyWith$Mutation$Mutation$createEmployee<TRes> {
  _CopyWithImpl$Mutation$Mutation$createEmployee(
    this._instance,
    this._then,
  );

  final Mutation$Mutation$createEmployee _instance;

  final TRes Function(Mutation$Mutation$createEmployee) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? designation = _undefined,
    Object? avatar = _undefined,
    Object? phoneNumber = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? attendance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Mutation$createEmployee(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        email: email == _undefined ? _instance.email : (email as String?),
        designation: designation == _undefined || designation == null
            ? _instance.designation
            : (designation as String),
        avatar: avatar == _undefined ? _instance.avatar : (avatar as String?),
        phoneNumber: phoneNumber == _undefined
            ? _instance.phoneNumber
            : (phoneNumber as String?),
        createdAt: createdAt == _undefined
            ? _instance.createdAt
            : (createdAt as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as String?),
        attendance: attendance == _undefined
            ? _instance.attendance
            : (attendance
                as List<Mutation$Mutation$createEmployee$attendance>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes attendance(
          Iterable<Mutation$Mutation$createEmployee$attendance>? Function(
                  Iterable<
                      CopyWith$Mutation$Mutation$createEmployee$attendance<
                          Mutation$Mutation$createEmployee$attendance>>?)
              _fn) =>
      call(
          attendance: _fn(_instance.attendance
              ?.map((e) => CopyWith$Mutation$Mutation$createEmployee$attendance(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Mutation$Mutation$createEmployee<TRes>
    implements CopyWith$Mutation$Mutation$createEmployee<TRes> {
  _CopyWithStubImpl$Mutation$Mutation$createEmployee(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? designation,
    String? avatar,
    String? phoneNumber,
    String? createdAt,
    String? updatedAt,
    List<Mutation$Mutation$createEmployee$attendance>? attendance,
    String? $__typename,
  }) =>
      _res;
  attendance(_fn) => _res;
}

class Mutation$Mutation$createEmployee$attendance {
  Mutation$Mutation$createEmployee$attendance({
    required this.id,
    this.closeTime,
    required this.startTime,
    required this.employeeId,
    this.createdAt,
    this.updatedAt,
    this.$__typename = 'GAttendance',
  });

  factory Mutation$Mutation$createEmployee$attendance.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$closeTime = json['closeTime'];
    final l$startTime = json['startTime'];
    final l$employeeId = json['employeeId'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Mutation$Mutation$createEmployee$attendance(
      id: (l$id as String),
      closeTime: (l$closeTime as String?),
      startTime: (l$startTime as String),
      employeeId: (l$employeeId as String),
      createdAt: (l$createdAt as String?),
      updatedAt: (l$updatedAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? closeTime;

  final String startTime;

  final String employeeId;

  final String? createdAt;

  final String? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$closeTime = closeTime;
    _resultData['closeTime'] = l$closeTime;
    final l$startTime = startTime;
    _resultData['startTime'] = l$startTime;
    final l$employeeId = employeeId;
    _resultData['employeeId'] = l$employeeId;
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
    final l$closeTime = closeTime;
    final l$startTime = startTime;
    final l$employeeId = employeeId;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$closeTime,
      l$startTime,
      l$employeeId,
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
    if (!(other is Mutation$Mutation$createEmployee$attendance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$closeTime = closeTime;
    final lOther$closeTime = other.closeTime;
    if (l$closeTime != lOther$closeTime) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (l$startTime != lOther$startTime) {
      return false;
    }
    final l$employeeId = employeeId;
    final lOther$employeeId = other.employeeId;
    if (l$employeeId != lOther$employeeId) {
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

extension UtilityExtension$Mutation$Mutation$createEmployee$attendance
    on Mutation$Mutation$createEmployee$attendance {
  CopyWith$Mutation$Mutation$createEmployee$attendance<
          Mutation$Mutation$createEmployee$attendance>
      get copyWith => CopyWith$Mutation$Mutation$createEmployee$attendance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Mutation$createEmployee$attendance<TRes> {
  factory CopyWith$Mutation$Mutation$createEmployee$attendance(
    Mutation$Mutation$createEmployee$attendance instance,
    TRes Function(Mutation$Mutation$createEmployee$attendance) then,
  ) = _CopyWithImpl$Mutation$Mutation$createEmployee$attendance;

  factory CopyWith$Mutation$Mutation$createEmployee$attendance.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Mutation$createEmployee$attendance;

  TRes call({
    String? id,
    String? closeTime,
    String? startTime,
    String? employeeId,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Mutation$createEmployee$attendance<TRes>
    implements CopyWith$Mutation$Mutation$createEmployee$attendance<TRes> {
  _CopyWithImpl$Mutation$Mutation$createEmployee$attendance(
    this._instance,
    this._then,
  );

  final Mutation$Mutation$createEmployee$attendance _instance;

  final TRes Function(Mutation$Mutation$createEmployee$attendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? closeTime = _undefined,
    Object? startTime = _undefined,
    Object? employeeId = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Mutation$createEmployee$attendance(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        closeTime: closeTime == _undefined
            ? _instance.closeTime
            : (closeTime as String?),
        startTime: startTime == _undefined || startTime == null
            ? _instance.startTime
            : (startTime as String),
        employeeId: employeeId == _undefined || employeeId == null
            ? _instance.employeeId
            : (employeeId as String),
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

class _CopyWithStubImpl$Mutation$Mutation$createEmployee$attendance<TRes>
    implements CopyWith$Mutation$Mutation$createEmployee$attendance<TRes> {
  _CopyWithStubImpl$Mutation$Mutation$createEmployee$attendance(this._res);

  TRes _res;

  call({
    String? id,
    String? closeTime,
    String? startTime,
    String? employeeId,
    String? createdAt,
    String? updatedAt,
    String? $__typename,
  }) =>
      _res;
}
