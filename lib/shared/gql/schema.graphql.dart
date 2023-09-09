class Input$CreateAdminInput {
  factory Input$CreateAdminInput({
    String? avatar,
    required String email,
    required String firstName,
    bool? isAdmin,
    required String lastName,
    required String password,
    String? phone,
    String? role,
    String? salt,
    String? userName,
  }) =>
      Input$CreateAdminInput._({
        if (avatar != null) r'avatar': avatar,
        r'email': email,
        r'firstName': firstName,
        if (isAdmin != null) r'isAdmin': isAdmin,
        r'lastName': lastName,
        r'password': password,
        if (phone != null) r'phone': phone,
        if (role != null) r'role': role,
        if (salt != null) r'salt': salt,
        if (userName != null) r'userName': userName,
      });

  Input$CreateAdminInput._(this._$data);

  factory Input$CreateAdminInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    if (data.containsKey('isAdmin')) {
      final l$isAdmin = data['isAdmin'];
      result$data['isAdmin'] = (l$isAdmin as bool?);
    }
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = (l$role as String?);
    }
    if (data.containsKey('salt')) {
      final l$salt = data['salt'];
      result$data['salt'] = (l$salt as String?);
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = (l$userName as String?);
    }
    return Input$CreateAdminInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatar => (_$data['avatar'] as String?);
  String get email => (_$data['email'] as String);
  String get firstName => (_$data['firstName'] as String);
  bool? get isAdmin => (_$data['isAdmin'] as bool?);
  String get lastName => (_$data['lastName'] as String);
  String get password => (_$data['password'] as String);
  String? get phone => (_$data['phone'] as String?);
  String? get role => (_$data['role'] as String?);
  String? get salt => (_$data['salt'] as String?);
  String? get userName => (_$data['userName'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    final l$email = email;
    result$data['email'] = l$email;
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    if (_$data.containsKey('isAdmin')) {
      final l$isAdmin = isAdmin;
      result$data['isAdmin'] = l$isAdmin;
    }
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    final l$password = password;
    result$data['password'] = l$password;
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] = l$role;
    }
    if (_$data.containsKey('salt')) {
      final l$salt = salt;
      result$data['salt'] = l$salt;
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName;
    }
    return result$data;
  }

  CopyWith$Input$CreateAdminInput<Input$CreateAdminInput> get copyWith =>
      CopyWith$Input$CreateAdminInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateAdminInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
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
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (_$data.containsKey('isAdmin') != other._$data.containsKey('isAdmin')) {
      return false;
    }
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$salt = salt;
    final lOther$salt = other.salt;
    if (_$data.containsKey('salt') != other._$data.containsKey('salt')) {
      return false;
    }
    if (l$salt != lOther$salt) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$email = email;
    final l$firstName = firstName;
    final l$isAdmin = isAdmin;
    final l$lastName = lastName;
    final l$password = password;
    final l$phone = phone;
    final l$role = role;
    final l$salt = salt;
    final l$userName = userName;
    return Object.hashAll([
      _$data.containsKey('avatar') ? l$avatar : const {},
      l$email,
      l$firstName,
      _$data.containsKey('isAdmin') ? l$isAdmin : const {},
      l$lastName,
      l$password,
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('salt') ? l$salt : const {},
      _$data.containsKey('userName') ? l$userName : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateAdminInput<TRes> {
  factory CopyWith$Input$CreateAdminInput(
    Input$CreateAdminInput instance,
    TRes Function(Input$CreateAdminInput) then,
  ) = _CopyWithImpl$Input$CreateAdminInput;

  factory CopyWith$Input$CreateAdminInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateAdminInput;

  TRes call({
    String? avatar,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? userName,
  });
}

class _CopyWithImpl$Input$CreateAdminInput<TRes>
    implements CopyWith$Input$CreateAdminInput<TRes> {
  _CopyWithImpl$Input$CreateAdminInput(
    this._instance,
    this._then,
  );

  final Input$CreateAdminInput _instance;

  final TRes Function(Input$CreateAdminInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? isAdmin = _undefined,
    Object? lastName = _undefined,
    Object? password = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? salt = _undefined,
    Object? userName = _undefined,
  }) =>
      _then(Input$CreateAdminInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (email != _undefined && email != null) 'email': (email as String),
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (isAdmin != _undefined) 'isAdmin': (isAdmin as bool?),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (phone != _undefined) 'phone': (phone as String?),
        if (role != _undefined) 'role': (role as String?),
        if (salt != _undefined) 'salt': (salt as String?),
        if (userName != _undefined) 'userName': (userName as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateAdminInput<TRes>
    implements CopyWith$Input$CreateAdminInput<TRes> {
  _CopyWithStubImpl$Input$CreateAdminInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? userName,
  }) =>
      _res;
}

class Input$CreateAttendanceInput {
  factory Input$CreateAttendanceInput({
    String? closeTime,
    required String employeeId,
    required String startTime,
  }) =>
      Input$CreateAttendanceInput._({
        if (closeTime != null) r'closeTime': closeTime,
        r'employeeId': employeeId,
        r'startTime': startTime,
      });

  Input$CreateAttendanceInput._(this._$data);

  factory Input$CreateAttendanceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('closeTime')) {
      final l$closeTime = data['closeTime'];
      result$data['closeTime'] = (l$closeTime as String?);
    }
    final l$employeeId = data['employeeId'];
    result$data['employeeId'] = (l$employeeId as String);
    final l$startTime = data['startTime'];
    result$data['startTime'] = (l$startTime as String);
    return Input$CreateAttendanceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get closeTime => (_$data['closeTime'] as String?);
  String get employeeId => (_$data['employeeId'] as String);
  String get startTime => (_$data['startTime'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('closeTime')) {
      final l$closeTime = closeTime;
      result$data['closeTime'] = l$closeTime;
    }
    final l$employeeId = employeeId;
    result$data['employeeId'] = l$employeeId;
    final l$startTime = startTime;
    result$data['startTime'] = l$startTime;
    return result$data;
  }

  CopyWith$Input$CreateAttendanceInput<Input$CreateAttendanceInput>
      get copyWith => CopyWith$Input$CreateAttendanceInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateAttendanceInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$closeTime = closeTime;
    final lOther$closeTime = other.closeTime;
    if (_$data.containsKey('closeTime') !=
        other._$data.containsKey('closeTime')) {
      return false;
    }
    if (l$closeTime != lOther$closeTime) {
      return false;
    }
    final l$employeeId = employeeId;
    final lOther$employeeId = other.employeeId;
    if (l$employeeId != lOther$employeeId) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (l$startTime != lOther$startTime) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$closeTime = closeTime;
    final l$employeeId = employeeId;
    final l$startTime = startTime;
    return Object.hashAll([
      _$data.containsKey('closeTime') ? l$closeTime : const {},
      l$employeeId,
      l$startTime,
    ]);
  }
}

abstract class CopyWith$Input$CreateAttendanceInput<TRes> {
  factory CopyWith$Input$CreateAttendanceInput(
    Input$CreateAttendanceInput instance,
    TRes Function(Input$CreateAttendanceInput) then,
  ) = _CopyWithImpl$Input$CreateAttendanceInput;

  factory CopyWith$Input$CreateAttendanceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateAttendanceInput;

  TRes call({
    String? closeTime,
    String? employeeId,
    String? startTime,
  });
}

class _CopyWithImpl$Input$CreateAttendanceInput<TRes>
    implements CopyWith$Input$CreateAttendanceInput<TRes> {
  _CopyWithImpl$Input$CreateAttendanceInput(
    this._instance,
    this._then,
  );

  final Input$CreateAttendanceInput _instance;

  final TRes Function(Input$CreateAttendanceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? closeTime = _undefined,
    Object? employeeId = _undefined,
    Object? startTime = _undefined,
  }) =>
      _then(Input$CreateAttendanceInput._({
        ..._instance._$data,
        if (closeTime != _undefined) 'closeTime': (closeTime as String?),
        if (employeeId != _undefined && employeeId != null)
          'employeeId': (employeeId as String),
        if (startTime != _undefined && startTime != null)
          'startTime': (startTime as String),
      }));
}

class _CopyWithStubImpl$Input$CreateAttendanceInput<TRes>
    implements CopyWith$Input$CreateAttendanceInput<TRes> {
  _CopyWithStubImpl$Input$CreateAttendanceInput(this._res);

  TRes _res;

  call({
    String? closeTime,
    String? employeeId,
    String? startTime,
  }) =>
      _res;
}

class Input$CreateCartInput {
  factory Input$CreateCartInput({
    required String customerId,
    required String productId,
    int? quantity,
  }) =>
      Input$CreateCartInput._({
        r'customerId': customerId,
        r'productId': productId,
        if (quantity != null) r'quantity': quantity,
      });

  Input$CreateCartInput._(this._$data);

  factory Input$CreateCartInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$customerId = data['customerId'];
    result$data['customerId'] = (l$customerId as String);
    final l$productId = data['productId'];
    result$data['productId'] = (l$productId as String);
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = (l$quantity as int?);
    }
    return Input$CreateCartInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get customerId => (_$data['customerId'] as String);
  String get productId => (_$data['productId'] as String);
  int? get quantity => (_$data['quantity'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$customerId = customerId;
    result$data['customerId'] = l$customerId;
    final l$productId = productId;
    result$data['productId'] = l$productId;
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity;
    }
    return result$data;
  }

  CopyWith$Input$CreateCartInput<Input$CreateCartInput> get copyWith =>
      CopyWith$Input$CreateCartInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateCartInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerId = customerId;
    final lOther$customerId = other.customerId;
    if (l$customerId != lOther$customerId) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$customerId = customerId;
    final l$productId = productId;
    final l$quantity = quantity;
    return Object.hashAll([
      l$customerId,
      l$productId,
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateCartInput<TRes> {
  factory CopyWith$Input$CreateCartInput(
    Input$CreateCartInput instance,
    TRes Function(Input$CreateCartInput) then,
  ) = _CopyWithImpl$Input$CreateCartInput;

  factory CopyWith$Input$CreateCartInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCartInput;

  TRes call({
    String? customerId,
    String? productId,
    int? quantity,
  });
}

class _CopyWithImpl$Input$CreateCartInput<TRes>
    implements CopyWith$Input$CreateCartInput<TRes> {
  _CopyWithImpl$Input$CreateCartInput(
    this._instance,
    this._then,
  );

  final Input$CreateCartInput _instance;

  final TRes Function(Input$CreateCartInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customerId = _undefined,
    Object? productId = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$CreateCartInput._({
        ..._instance._$data,
        if (customerId != _undefined && customerId != null)
          'customerId': (customerId as String),
        if (productId != _undefined && productId != null)
          'productId': (productId as String),
        if (quantity != _undefined) 'quantity': (quantity as int?),
      }));
}

class _CopyWithStubImpl$Input$CreateCartInput<TRes>
    implements CopyWith$Input$CreateCartInput<TRes> {
  _CopyWithStubImpl$Input$CreateCartInput(this._res);

  TRes _res;

  call({
    String? customerId,
    String? productId,
    int? quantity,
  }) =>
      _res;
}

class Input$CreateCustomerInput {
  factory Input$CreateCustomerInput({
    String? avatar,
    String? createdAt,
    required String email,
    required String firstName,
    bool? isAdmin,
    required String lastName,
    required String password,
    String? phone,
    String? role,
    String? salt,
    String? social,
    String? updatedAt,
    String? userName,
  }) =>
      Input$CreateCustomerInput._({
        if (avatar != null) r'avatar': avatar,
        if (createdAt != null) r'createdAt': createdAt,
        r'email': email,
        r'firstName': firstName,
        if (isAdmin != null) r'isAdmin': isAdmin,
        r'lastName': lastName,
        r'password': password,
        if (phone != null) r'phone': phone,
        if (role != null) r'role': role,
        if (salt != null) r'salt': salt,
        if (social != null) r'social': social,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (userName != null) r'userName': userName,
      });

  Input$CreateCustomerInput._(this._$data);

  factory Input$CreateCustomerInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = (l$createdAt as String?);
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    if (data.containsKey('isAdmin')) {
      final l$isAdmin = data['isAdmin'];
      result$data['isAdmin'] = (l$isAdmin as bool?);
    }
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = (l$role as String?);
    }
    if (data.containsKey('salt')) {
      final l$salt = data['salt'];
      result$data['salt'] = (l$salt as String?);
    }
    if (data.containsKey('social')) {
      final l$social = data['social'];
      result$data['social'] = (l$social as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = (l$updatedAt as String?);
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = (l$userName as String?);
    }
    return Input$CreateCustomerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatar => (_$data['avatar'] as String?);
  String? get createdAt => (_$data['createdAt'] as String?);
  String get email => (_$data['email'] as String);
  String get firstName => (_$data['firstName'] as String);
  bool? get isAdmin => (_$data['isAdmin'] as bool?);
  String get lastName => (_$data['lastName'] as String);
  String get password => (_$data['password'] as String);
  String? get phone => (_$data['phone'] as String?);
  String? get role => (_$data['role'] as String?);
  String? get salt => (_$data['salt'] as String?);
  String? get social => (_$data['social'] as String?);
  String? get updatedAt => (_$data['updatedAt'] as String?);
  String? get userName => (_$data['userName'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt;
    }
    final l$email = email;
    result$data['email'] = l$email;
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    if (_$data.containsKey('isAdmin')) {
      final l$isAdmin = isAdmin;
      result$data['isAdmin'] = l$isAdmin;
    }
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    final l$password = password;
    result$data['password'] = l$password;
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] = l$role;
    }
    if (_$data.containsKey('salt')) {
      final l$salt = salt;
      result$data['salt'] = l$salt;
    }
    if (_$data.containsKey('social')) {
      final l$social = social;
      result$data['social'] = l$social;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt;
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName;
    }
    return result$data;
  }

  CopyWith$Input$CreateCustomerInput<Input$CreateCustomerInput> get copyWith =>
      CopyWith$Input$CreateCustomerInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateCustomerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
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
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (_$data.containsKey('isAdmin') != other._$data.containsKey('isAdmin')) {
      return false;
    }
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$salt = salt;
    final lOther$salt = other.salt;
    if (_$data.containsKey('salt') != other._$data.containsKey('salt')) {
      return false;
    }
    if (l$salt != lOther$salt) {
      return false;
    }
    final l$social = social;
    final lOther$social = other.social;
    if (_$data.containsKey('social') != other._$data.containsKey('social')) {
      return false;
    }
    if (l$social != lOther$social) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$createdAt = createdAt;
    final l$email = email;
    final l$firstName = firstName;
    final l$isAdmin = isAdmin;
    final l$lastName = lastName;
    final l$password = password;
    final l$phone = phone;
    final l$role = role;
    final l$salt = salt;
    final l$social = social;
    final l$updatedAt = updatedAt;
    final l$userName = userName;
    return Object.hashAll([
      _$data.containsKey('avatar') ? l$avatar : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      l$email,
      l$firstName,
      _$data.containsKey('isAdmin') ? l$isAdmin : const {},
      l$lastName,
      l$password,
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('salt') ? l$salt : const {},
      _$data.containsKey('social') ? l$social : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('userName') ? l$userName : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateCustomerInput<TRes> {
  factory CopyWith$Input$CreateCustomerInput(
    Input$CreateCustomerInput instance,
    TRes Function(Input$CreateCustomerInput) then,
  ) = _CopyWithImpl$Input$CreateCustomerInput;

  factory CopyWith$Input$CreateCustomerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCustomerInput;

  TRes call({
    String? avatar,
    String? createdAt,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? social,
    String? updatedAt,
    String? userName,
  });
}

class _CopyWithImpl$Input$CreateCustomerInput<TRes>
    implements CopyWith$Input$CreateCustomerInput<TRes> {
  _CopyWithImpl$Input$CreateCustomerInput(
    this._instance,
    this._then,
  );

  final Input$CreateCustomerInput _instance;

  final TRes Function(Input$CreateCustomerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? createdAt = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? isAdmin = _undefined,
    Object? lastName = _undefined,
    Object? password = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? salt = _undefined,
    Object? social = _undefined,
    Object? updatedAt = _undefined,
    Object? userName = _undefined,
  }) =>
      _then(Input$CreateCustomerInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (createdAt != _undefined) 'createdAt': (createdAt as String?),
        if (email != _undefined && email != null) 'email': (email as String),
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (isAdmin != _undefined) 'isAdmin': (isAdmin as bool?),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (phone != _undefined) 'phone': (phone as String?),
        if (role != _undefined) 'role': (role as String?),
        if (salt != _undefined) 'salt': (salt as String?),
        if (social != _undefined) 'social': (social as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as String?),
        if (userName != _undefined) 'userName': (userName as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateCustomerInput<TRes>
    implements CopyWith$Input$CreateCustomerInput<TRes> {
  _CopyWithStubImpl$Input$CreateCustomerInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? createdAt,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? social,
    String? updatedAt,
    String? userName,
  }) =>
      _res;
}

class Input$CreateEmployeeInput {
  factory Input$CreateEmployeeInput({
    String? avatar,
    String? createdAt,
    String? designation,
    String? email,
    required String firstName,
    required String lastName,
    String? phoneNumber,
    String? updatedAt,
  }) =>
      Input$CreateEmployeeInput._({
        if (avatar != null) r'avatar': avatar,
        if (createdAt != null) r'createdAt': createdAt,
        if (designation != null) r'designation': designation,
        if (email != null) r'email': email,
        r'firstName': firstName,
        r'lastName': lastName,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$CreateEmployeeInput._(this._$data);

  factory Input$CreateEmployeeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = (l$createdAt as String?);
    }
    if (data.containsKey('designation')) {
      final l$designation = data['designation'];
      result$data['designation'] = (l$designation as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = (l$updatedAt as String?);
    }
    return Input$CreateEmployeeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatar => (_$data['avatar'] as String?);
  String? get createdAt => (_$data['createdAt'] as String?);
  String? get designation => (_$data['designation'] as String?);
  String? get email => (_$data['email'] as String?);
  String get firstName => (_$data['firstName'] as String);
  String get lastName => (_$data['lastName'] as String);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  String? get updatedAt => (_$data['updatedAt'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt;
    }
    if (_$data.containsKey('designation')) {
      final l$designation = designation;
      result$data['designation'] = l$designation;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt;
    }
    return result$data;
  }

  CopyWith$Input$CreateEmployeeInput<Input$CreateEmployeeInput> get copyWith =>
      CopyWith$Input$CreateEmployeeInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateEmployeeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$designation = designation;
    final lOther$designation = other.designation;
    if (_$data.containsKey('designation') !=
        other._$data.containsKey('designation')) {
      return false;
    }
    if (l$designation != lOther$designation) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
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
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$createdAt = createdAt;
    final l$designation = designation;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('avatar') ? l$avatar : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('designation') ? l$designation : const {},
      _$data.containsKey('email') ? l$email : const {},
      l$firstName,
      l$lastName,
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateEmployeeInput<TRes> {
  factory CopyWith$Input$CreateEmployeeInput(
    Input$CreateEmployeeInput instance,
    TRes Function(Input$CreateEmployeeInput) then,
  ) = _CopyWithImpl$Input$CreateEmployeeInput;

  factory CopyWith$Input$CreateEmployeeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateEmployeeInput;

  TRes call({
    String? avatar,
    String? createdAt,
    String? designation,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? updatedAt,
  });
}

class _CopyWithImpl$Input$CreateEmployeeInput<TRes>
    implements CopyWith$Input$CreateEmployeeInput<TRes> {
  _CopyWithImpl$Input$CreateEmployeeInput(
    this._instance,
    this._then,
  );

  final Input$CreateEmployeeInput _instance;

  final TRes Function(Input$CreateEmployeeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? createdAt = _undefined,
    Object? designation = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phoneNumber = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$CreateEmployeeInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (createdAt != _undefined) 'createdAt': (createdAt as String?),
        if (designation != _undefined) 'designation': (designation as String?),
        if (email != _undefined) 'email': (email as String?),
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateEmployeeInput<TRes>
    implements CopyWith$Input$CreateEmployeeInput<TRes> {
  _CopyWithStubImpl$Input$CreateEmployeeInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? createdAt,
    String? designation,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? updatedAt,
  }) =>
      _res;
}

class Input$CreateProductInput {
  factory Input$CreateProductInput({
    String? brand,
    required String category,
    required List<String> colors,
    String? createdAt,
    required String depo,
    required String description,
    required List<String> images,
    required String name,
    int? numInStock,
    int? numReviews,
    required String price,
    double? rating,
    required List<String> sizes,
    String? updatedAt,
  }) =>
      Input$CreateProductInput._({
        if (brand != null) r'brand': brand,
        r'category': category,
        r'colors': colors,
        if (createdAt != null) r'createdAt': createdAt,
        r'depo': depo,
        r'description': description,
        r'images': images,
        r'name': name,
        if (numInStock != null) r'numInStock': numInStock,
        if (numReviews != null) r'numReviews': numReviews,
        r'price': price,
        if (rating != null) r'rating': rating,
        r'sizes': sizes,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$CreateProductInput._(this._$data);

  factory Input$CreateProductInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('brand')) {
      final l$brand = data['brand'];
      result$data['brand'] = (l$brand as String?);
    }
    final l$category = data['category'];
    result$data['category'] = (l$category as String);
    final l$colors = data['colors'];
    result$data['colors'] =
        (l$colors as List<dynamic>).map((e) => (e as String)).toList();
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = (l$createdAt as String?);
    }
    final l$depo = data['depo'];
    result$data['depo'] = (l$depo as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$images = data['images'];
    result$data['images'] =
        (l$images as List<dynamic>).map((e) => (e as String)).toList();
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('numInStock')) {
      final l$numInStock = data['numInStock'];
      result$data['numInStock'] = (l$numInStock as int?);
    }
    if (data.containsKey('numReviews')) {
      final l$numReviews = data['numReviews'];
      result$data['numReviews'] = (l$numReviews as int?);
    }
    final l$price = data['price'];
    result$data['price'] = (l$price as String);
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = (l$rating as num?)?.toDouble();
    }
    final l$sizes = data['sizes'];
    result$data['sizes'] =
        (l$sizes as List<dynamic>).map((e) => (e as String)).toList();
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = (l$updatedAt as String?);
    }
    return Input$CreateProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get brand => (_$data['brand'] as String?);
  String get category => (_$data['category'] as String);
  List<String> get colors => (_$data['colors'] as List<String>);
  String? get createdAt => (_$data['createdAt'] as String?);
  String get depo => (_$data['depo'] as String);
  String get description => (_$data['description'] as String);
  List<String> get images => (_$data['images'] as List<String>);
  String get name => (_$data['name'] as String);
  int? get numInStock => (_$data['numInStock'] as int?);
  int? get numReviews => (_$data['numReviews'] as int?);
  String get price => (_$data['price'] as String);
  double? get rating => (_$data['rating'] as double?);
  List<String> get sizes => (_$data['sizes'] as List<String>);
  String? get updatedAt => (_$data['updatedAt'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('brand')) {
      final l$brand = brand;
      result$data['brand'] = l$brand;
    }
    final l$category = category;
    result$data['category'] = l$category;
    final l$colors = colors;
    result$data['colors'] = l$colors.map((e) => e).toList();
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt;
    }
    final l$depo = depo;
    result$data['depo'] = l$depo;
    final l$description = description;
    result$data['description'] = l$description;
    final l$images = images;
    result$data['images'] = l$images.map((e) => e).toList();
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('numInStock')) {
      final l$numInStock = numInStock;
      result$data['numInStock'] = l$numInStock;
    }
    if (_$data.containsKey('numReviews')) {
      final l$numReviews = numReviews;
      result$data['numReviews'] = l$numReviews;
    }
    final l$price = price;
    result$data['price'] = l$price;
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] = l$rating;
    }
    final l$sizes = sizes;
    result$data['sizes'] = l$sizes.map((e) => e).toList();
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt;
    }
    return result$data;
  }

  CopyWith$Input$CreateProductInput<Input$CreateProductInput> get copyWith =>
      CopyWith$Input$CreateProductInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (_$data.containsKey('brand') != other._$data.containsKey('brand')) {
      return false;
    }
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$colors = colors;
    final lOther$colors = other.colors;
    if (l$colors.length != lOther$colors.length) {
      return false;
    }
    for (int i = 0; i < l$colors.length; i++) {
      final l$colors$entry = l$colors[i];
      final lOther$colors$entry = lOther$colors[i];
      if (l$colors$entry != lOther$colors$entry) {
        return false;
      }
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$depo = depo;
    final lOther$depo = other.depo;
    if (l$depo != lOther$depo) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$images = images;
    final lOther$images = other.images;
    if (l$images.length != lOther$images.length) {
      return false;
    }
    for (int i = 0; i < l$images.length; i++) {
      final l$images$entry = l$images[i];
      final lOther$images$entry = lOther$images[i];
      if (l$images$entry != lOther$images$entry) {
        return false;
      }
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$numInStock = numInStock;
    final lOther$numInStock = other.numInStock;
    if (_$data.containsKey('numInStock') !=
        other._$data.containsKey('numInStock')) {
      return false;
    }
    if (l$numInStock != lOther$numInStock) {
      return false;
    }
    final l$numReviews = numReviews;
    final lOther$numReviews = other.numReviews;
    if (_$data.containsKey('numReviews') !=
        other._$data.containsKey('numReviews')) {
      return false;
    }
    if (l$numReviews != lOther$numReviews) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$sizes = sizes;
    final lOther$sizes = other.sizes;
    if (l$sizes.length != lOther$sizes.length) {
      return false;
    }
    for (int i = 0; i < l$sizes.length; i++) {
      final l$sizes$entry = l$sizes[i];
      final lOther$sizes$entry = lOther$sizes[i];
      if (l$sizes$entry != lOther$sizes$entry) {
        return false;
      }
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$brand = brand;
    final l$category = category;
    final l$colors = colors;
    final l$createdAt = createdAt;
    final l$depo = depo;
    final l$description = description;
    final l$images = images;
    final l$name = name;
    final l$numInStock = numInStock;
    final l$numReviews = numReviews;
    final l$price = price;
    final l$rating = rating;
    final l$sizes = sizes;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('brand') ? l$brand : const {},
      l$category,
      Object.hashAll(l$colors.map((v) => v)),
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      l$depo,
      l$description,
      Object.hashAll(l$images.map((v) => v)),
      l$name,
      _$data.containsKey('numInStock') ? l$numInStock : const {},
      _$data.containsKey('numReviews') ? l$numReviews : const {},
      l$price,
      _$data.containsKey('rating') ? l$rating : const {},
      Object.hashAll(l$sizes.map((v) => v)),
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateProductInput<TRes> {
  factory CopyWith$Input$CreateProductInput(
    Input$CreateProductInput instance,
    TRes Function(Input$CreateProductInput) then,
  ) = _CopyWithImpl$Input$CreateProductInput;

  factory CopyWith$Input$CreateProductInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateProductInput;

  TRes call({
    String? brand,
    String? category,
    List<String>? colors,
    String? createdAt,
    String? depo,
    String? description,
    List<String>? images,
    String? name,
    int? numInStock,
    int? numReviews,
    String? price,
    double? rating,
    List<String>? sizes,
    String? updatedAt,
  });
}

class _CopyWithImpl$Input$CreateProductInput<TRes>
    implements CopyWith$Input$CreateProductInput<TRes> {
  _CopyWithImpl$Input$CreateProductInput(
    this._instance,
    this._then,
  );

  final Input$CreateProductInput _instance;

  final TRes Function(Input$CreateProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? brand = _undefined,
    Object? category = _undefined,
    Object? colors = _undefined,
    Object? createdAt = _undefined,
    Object? depo = _undefined,
    Object? description = _undefined,
    Object? images = _undefined,
    Object? name = _undefined,
    Object? numInStock = _undefined,
    Object? numReviews = _undefined,
    Object? price = _undefined,
    Object? rating = _undefined,
    Object? sizes = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$CreateProductInput._({
        ..._instance._$data,
        if (brand != _undefined) 'brand': (brand as String?),
        if (category != _undefined && category != null)
          'category': (category as String),
        if (colors != _undefined && colors != null)
          'colors': (colors as List<String>),
        if (createdAt != _undefined) 'createdAt': (createdAt as String?),
        if (depo != _undefined && depo != null) 'depo': (depo as String),
        if (description != _undefined && description != null)
          'description': (description as String),
        if (images != _undefined && images != null)
          'images': (images as List<String>),
        if (name != _undefined && name != null) 'name': (name as String),
        if (numInStock != _undefined) 'numInStock': (numInStock as int?),
        if (numReviews != _undefined) 'numReviews': (numReviews as int?),
        if (price != _undefined && price != null) 'price': (price as String),
        if (rating != _undefined) 'rating': (rating as double?),
        if (sizes != _undefined && sizes != null)
          'sizes': (sizes as List<String>),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as String?),
      }));
}

class _CopyWithStubImpl$Input$CreateProductInput<TRes>
    implements CopyWith$Input$CreateProductInput<TRes> {
  _CopyWithStubImpl$Input$CreateProductInput(this._res);

  TRes _res;

  call({
    String? brand,
    String? category,
    List<String>? colors,
    String? createdAt,
    String? depo,
    String? description,
    List<String>? images,
    String? name,
    int? numInStock,
    int? numReviews,
    String? price,
    double? rating,
    List<String>? sizes,
    String? updatedAt,
  }) =>
      _res;
}

class Input$LoginAdminInput {
  factory Input$LoginAdminInput({
    required String email,
    required String password,
  }) =>
      Input$LoginAdminInput._({
        r'email': email,
        r'password': password,
      });

  Input$LoginAdminInput._(this._$data);

  factory Input$LoginAdminInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginAdminInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginAdminInput<Input$LoginAdminInput> get copyWith =>
      CopyWith$Input$LoginAdminInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LoginAdminInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$LoginAdminInput<TRes> {
  factory CopyWith$Input$LoginAdminInput(
    Input$LoginAdminInput instance,
    TRes Function(Input$LoginAdminInput) then,
  ) = _CopyWithImpl$Input$LoginAdminInput;

  factory CopyWith$Input$LoginAdminInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginAdminInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginAdminInput<TRes>
    implements CopyWith$Input$LoginAdminInput<TRes> {
  _CopyWithImpl$Input$LoginAdminInput(
    this._instance,
    this._then,
  );

  final Input$LoginAdminInput _instance;

  final TRes Function(Input$LoginAdminInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginAdminInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginAdminInput<TRes>
    implements CopyWith$Input$LoginAdminInput<TRes> {
  _CopyWithStubImpl$Input$LoginAdminInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$LoginCustomerInput {
  factory Input$LoginCustomerInput({
    required String email,
    required String password,
  }) =>
      Input$LoginCustomerInput._({
        r'email': email,
        r'password': password,
      });

  Input$LoginCustomerInput._(this._$data);

  factory Input$LoginCustomerInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginCustomerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginCustomerInput<Input$LoginCustomerInput> get copyWith =>
      CopyWith$Input$LoginCustomerInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LoginCustomerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$LoginCustomerInput<TRes> {
  factory CopyWith$Input$LoginCustomerInput(
    Input$LoginCustomerInput instance,
    TRes Function(Input$LoginCustomerInput) then,
  ) = _CopyWithImpl$Input$LoginCustomerInput;

  factory CopyWith$Input$LoginCustomerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginCustomerInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginCustomerInput<TRes>
    implements CopyWith$Input$LoginCustomerInput<TRes> {
  _CopyWithImpl$Input$LoginCustomerInput(
    this._instance,
    this._then,
  );

  final Input$LoginCustomerInput _instance;

  final TRes Function(Input$LoginCustomerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginCustomerInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginCustomerInput<TRes>
    implements CopyWith$Input$LoginCustomerInput<TRes> {
  _CopyWithStubImpl$Input$LoginCustomerInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$UpdateAdminInput {
  factory Input$UpdateAdminInput({
    String? avatar,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? userName,
  }) =>
      Input$UpdateAdminInput._({
        if (avatar != null) r'avatar': avatar,
        if (email != null) r'email': email,
        if (firstName != null) r'firstName': firstName,
        if (isAdmin != null) r'isAdmin': isAdmin,
        if (lastName != null) r'lastName': lastName,
        if (password != null) r'password': password,
        if (phone != null) r'phone': phone,
        if (role != null) r'role': role,
        if (salt != null) r'salt': salt,
        if (userName != null) r'userName': userName,
      });

  Input$UpdateAdminInput._(this._$data);

  factory Input$UpdateAdminInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('isAdmin')) {
      final l$isAdmin = data['isAdmin'];
      result$data['isAdmin'] = (l$isAdmin as bool?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = (l$role as String?);
    }
    if (data.containsKey('salt')) {
      final l$salt = data['salt'];
      result$data['salt'] = (l$salt as String?);
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = (l$userName as String?);
    }
    return Input$UpdateAdminInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatar => (_$data['avatar'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get firstName => (_$data['firstName'] as String?);
  bool? get isAdmin => (_$data['isAdmin'] as bool?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get password => (_$data['password'] as String?);
  String? get phone => (_$data['phone'] as String?);
  String? get role => (_$data['role'] as String?);
  String? get salt => (_$data['salt'] as String?);
  String? get userName => (_$data['userName'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('isAdmin')) {
      final l$isAdmin = isAdmin;
      result$data['isAdmin'] = l$isAdmin;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] = l$role;
    }
    if (_$data.containsKey('salt')) {
      final l$salt = salt;
      result$data['salt'] = l$salt;
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName;
    }
    return result$data;
  }

  CopyWith$Input$UpdateAdminInput<Input$UpdateAdminInput> get copyWith =>
      CopyWith$Input$UpdateAdminInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateAdminInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (_$data.containsKey('isAdmin') != other._$data.containsKey('isAdmin')) {
      return false;
    }
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$salt = salt;
    final lOther$salt = other.salt;
    if (_$data.containsKey('salt') != other._$data.containsKey('salt')) {
      return false;
    }
    if (l$salt != lOther$salt) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$email = email;
    final l$firstName = firstName;
    final l$isAdmin = isAdmin;
    final l$lastName = lastName;
    final l$password = password;
    final l$phone = phone;
    final l$role = role;
    final l$salt = salt;
    final l$userName = userName;
    return Object.hashAll([
      _$data.containsKey('avatar') ? l$avatar : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('isAdmin') ? l$isAdmin : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('salt') ? l$salt : const {},
      _$data.containsKey('userName') ? l$userName : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateAdminInput<TRes> {
  factory CopyWith$Input$UpdateAdminInput(
    Input$UpdateAdminInput instance,
    TRes Function(Input$UpdateAdminInput) then,
  ) = _CopyWithImpl$Input$UpdateAdminInput;

  factory CopyWith$Input$UpdateAdminInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateAdminInput;

  TRes call({
    String? avatar,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? userName,
  });
}

class _CopyWithImpl$Input$UpdateAdminInput<TRes>
    implements CopyWith$Input$UpdateAdminInput<TRes> {
  _CopyWithImpl$Input$UpdateAdminInput(
    this._instance,
    this._then,
  );

  final Input$UpdateAdminInput _instance;

  final TRes Function(Input$UpdateAdminInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? isAdmin = _undefined,
    Object? lastName = _undefined,
    Object? password = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? salt = _undefined,
    Object? userName = _undefined,
  }) =>
      _then(Input$UpdateAdminInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (email != _undefined) 'email': (email as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (isAdmin != _undefined) 'isAdmin': (isAdmin as bool?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (password != _undefined) 'password': (password as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (role != _undefined) 'role': (role as String?),
        if (salt != _undefined) 'salt': (salt as String?),
        if (userName != _undefined) 'userName': (userName as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateAdminInput<TRes>
    implements CopyWith$Input$UpdateAdminInput<TRes> {
  _CopyWithStubImpl$Input$UpdateAdminInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? userName,
  }) =>
      _res;
}

class Input$UpdateAttendanceInput {
  factory Input$UpdateAttendanceInput({
    String? closeTime,
    String? employeeId,
    String? startTime,
  }) =>
      Input$UpdateAttendanceInput._({
        if (closeTime != null) r'closeTime': closeTime,
        if (employeeId != null) r'employeeId': employeeId,
        if (startTime != null) r'startTime': startTime,
      });

  Input$UpdateAttendanceInput._(this._$data);

  factory Input$UpdateAttendanceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('closeTime')) {
      final l$closeTime = data['closeTime'];
      result$data['closeTime'] = (l$closeTime as String?);
    }
    if (data.containsKey('employeeId')) {
      final l$employeeId = data['employeeId'];
      result$data['employeeId'] = (l$employeeId as String?);
    }
    if (data.containsKey('startTime')) {
      final l$startTime = data['startTime'];
      result$data['startTime'] = (l$startTime as String?);
    }
    return Input$UpdateAttendanceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get closeTime => (_$data['closeTime'] as String?);
  String? get employeeId => (_$data['employeeId'] as String?);
  String? get startTime => (_$data['startTime'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('closeTime')) {
      final l$closeTime = closeTime;
      result$data['closeTime'] = l$closeTime;
    }
    if (_$data.containsKey('employeeId')) {
      final l$employeeId = employeeId;
      result$data['employeeId'] = l$employeeId;
    }
    if (_$data.containsKey('startTime')) {
      final l$startTime = startTime;
      result$data['startTime'] = l$startTime;
    }
    return result$data;
  }

  CopyWith$Input$UpdateAttendanceInput<Input$UpdateAttendanceInput>
      get copyWith => CopyWith$Input$UpdateAttendanceInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateAttendanceInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$closeTime = closeTime;
    final lOther$closeTime = other.closeTime;
    if (_$data.containsKey('closeTime') !=
        other._$data.containsKey('closeTime')) {
      return false;
    }
    if (l$closeTime != lOther$closeTime) {
      return false;
    }
    final l$employeeId = employeeId;
    final lOther$employeeId = other.employeeId;
    if (_$data.containsKey('employeeId') !=
        other._$data.containsKey('employeeId')) {
      return false;
    }
    if (l$employeeId != lOther$employeeId) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (_$data.containsKey('startTime') !=
        other._$data.containsKey('startTime')) {
      return false;
    }
    if (l$startTime != lOther$startTime) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$closeTime = closeTime;
    final l$employeeId = employeeId;
    final l$startTime = startTime;
    return Object.hashAll([
      _$data.containsKey('closeTime') ? l$closeTime : const {},
      _$data.containsKey('employeeId') ? l$employeeId : const {},
      _$data.containsKey('startTime') ? l$startTime : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateAttendanceInput<TRes> {
  factory CopyWith$Input$UpdateAttendanceInput(
    Input$UpdateAttendanceInput instance,
    TRes Function(Input$UpdateAttendanceInput) then,
  ) = _CopyWithImpl$Input$UpdateAttendanceInput;

  factory CopyWith$Input$UpdateAttendanceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateAttendanceInput;

  TRes call({
    String? closeTime,
    String? employeeId,
    String? startTime,
  });
}

class _CopyWithImpl$Input$UpdateAttendanceInput<TRes>
    implements CopyWith$Input$UpdateAttendanceInput<TRes> {
  _CopyWithImpl$Input$UpdateAttendanceInput(
    this._instance,
    this._then,
  );

  final Input$UpdateAttendanceInput _instance;

  final TRes Function(Input$UpdateAttendanceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? closeTime = _undefined,
    Object? employeeId = _undefined,
    Object? startTime = _undefined,
  }) =>
      _then(Input$UpdateAttendanceInput._({
        ..._instance._$data,
        if (closeTime != _undefined) 'closeTime': (closeTime as String?),
        if (employeeId != _undefined) 'employeeId': (employeeId as String?),
        if (startTime != _undefined) 'startTime': (startTime as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateAttendanceInput<TRes>
    implements CopyWith$Input$UpdateAttendanceInput<TRes> {
  _CopyWithStubImpl$Input$UpdateAttendanceInput(this._res);

  TRes _res;

  call({
    String? closeTime,
    String? employeeId,
    String? startTime,
  }) =>
      _res;
}

class Input$UpdateCartInput {
  factory Input$UpdateCartInput({
    String? customerId,
    String? productId,
    int? quantity,
  }) =>
      Input$UpdateCartInput._({
        if (customerId != null) r'customerId': customerId,
        if (productId != null) r'productId': productId,
        if (quantity != null) r'quantity': quantity,
      });

  Input$UpdateCartInput._(this._$data);

  factory Input$UpdateCartInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('customerId')) {
      final l$customerId = data['customerId'];
      result$data['customerId'] = (l$customerId as String?);
    }
    if (data.containsKey('productId')) {
      final l$productId = data['productId'];
      result$data['productId'] = (l$productId as String?);
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = (l$quantity as int?);
    }
    return Input$UpdateCartInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get customerId => (_$data['customerId'] as String?);
  String? get productId => (_$data['productId'] as String?);
  int? get quantity => (_$data['quantity'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('customerId')) {
      final l$customerId = customerId;
      result$data['customerId'] = l$customerId;
    }
    if (_$data.containsKey('productId')) {
      final l$productId = productId;
      result$data['productId'] = l$productId;
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity;
    }
    return result$data;
  }

  CopyWith$Input$UpdateCartInput<Input$UpdateCartInput> get copyWith =>
      CopyWith$Input$UpdateCartInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateCartInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerId = customerId;
    final lOther$customerId = other.customerId;
    if (_$data.containsKey('customerId') !=
        other._$data.containsKey('customerId')) {
      return false;
    }
    if (l$customerId != lOther$customerId) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (_$data.containsKey('productId') !=
        other._$data.containsKey('productId')) {
      return false;
    }
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$customerId = customerId;
    final l$productId = productId;
    final l$quantity = quantity;
    return Object.hashAll([
      _$data.containsKey('customerId') ? l$customerId : const {},
      _$data.containsKey('productId') ? l$productId : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateCartInput<TRes> {
  factory CopyWith$Input$UpdateCartInput(
    Input$UpdateCartInput instance,
    TRes Function(Input$UpdateCartInput) then,
  ) = _CopyWithImpl$Input$UpdateCartInput;

  factory CopyWith$Input$UpdateCartInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateCartInput;

  TRes call({
    String? customerId,
    String? productId,
    int? quantity,
  });
}

class _CopyWithImpl$Input$UpdateCartInput<TRes>
    implements CopyWith$Input$UpdateCartInput<TRes> {
  _CopyWithImpl$Input$UpdateCartInput(
    this._instance,
    this._then,
  );

  final Input$UpdateCartInput _instance;

  final TRes Function(Input$UpdateCartInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customerId = _undefined,
    Object? productId = _undefined,
    Object? quantity = _undefined,
  }) =>
      _then(Input$UpdateCartInput._({
        ..._instance._$data,
        if (customerId != _undefined) 'customerId': (customerId as String?),
        if (productId != _undefined) 'productId': (productId as String?),
        if (quantity != _undefined) 'quantity': (quantity as int?),
      }));
}

class _CopyWithStubImpl$Input$UpdateCartInput<TRes>
    implements CopyWith$Input$UpdateCartInput<TRes> {
  _CopyWithStubImpl$Input$UpdateCartInput(this._res);

  TRes _res;

  call({
    String? customerId,
    String? productId,
    int? quantity,
  }) =>
      _res;
}

class Input$UpdateCustomerInput {
  factory Input$UpdateCustomerInput({
    String? avatar,
    String? createdAt,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? social,
    String? updatedAt,
    String? userName,
  }) =>
      Input$UpdateCustomerInput._({
        if (avatar != null) r'avatar': avatar,
        if (createdAt != null) r'createdAt': createdAt,
        if (email != null) r'email': email,
        if (firstName != null) r'firstName': firstName,
        if (isAdmin != null) r'isAdmin': isAdmin,
        if (lastName != null) r'lastName': lastName,
        if (password != null) r'password': password,
        if (phone != null) r'phone': phone,
        if (role != null) r'role': role,
        if (salt != null) r'salt': salt,
        if (social != null) r'social': social,
        if (updatedAt != null) r'updatedAt': updatedAt,
        if (userName != null) r'userName': userName,
      });

  Input$UpdateCustomerInput._(this._$data);

  factory Input$UpdateCustomerInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = (l$createdAt as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('isAdmin')) {
      final l$isAdmin = data['isAdmin'];
      result$data['isAdmin'] = (l$isAdmin as bool?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = (l$role as String?);
    }
    if (data.containsKey('salt')) {
      final l$salt = data['salt'];
      result$data['salt'] = (l$salt as String?);
    }
    if (data.containsKey('social')) {
      final l$social = data['social'];
      result$data['social'] = (l$social as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = (l$updatedAt as String?);
    }
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = (l$userName as String?);
    }
    return Input$UpdateCustomerInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatar => (_$data['avatar'] as String?);
  String? get createdAt => (_$data['createdAt'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get firstName => (_$data['firstName'] as String?);
  bool? get isAdmin => (_$data['isAdmin'] as bool?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get password => (_$data['password'] as String?);
  String? get phone => (_$data['phone'] as String?);
  String? get role => (_$data['role'] as String?);
  String? get salt => (_$data['salt'] as String?);
  String? get social => (_$data['social'] as String?);
  String? get updatedAt => (_$data['updatedAt'] as String?);
  String? get userName => (_$data['userName'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('isAdmin')) {
      final l$isAdmin = isAdmin;
      result$data['isAdmin'] = l$isAdmin;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] = l$role;
    }
    if (_$data.containsKey('salt')) {
      final l$salt = salt;
      result$data['salt'] = l$salt;
    }
    if (_$data.containsKey('social')) {
      final l$social = social;
      result$data['social'] = l$social;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt;
    }
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName;
    }
    return result$data;
  }

  CopyWith$Input$UpdateCustomerInput<Input$UpdateCustomerInput> get copyWith =>
      CopyWith$Input$UpdateCustomerInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateCustomerInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$isAdmin = isAdmin;
    final lOther$isAdmin = other.isAdmin;
    if (_$data.containsKey('isAdmin') != other._$data.containsKey('isAdmin')) {
      return false;
    }
    if (l$isAdmin != lOther$isAdmin) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$salt = salt;
    final lOther$salt = other.salt;
    if (_$data.containsKey('salt') != other._$data.containsKey('salt')) {
      return false;
    }
    if (l$salt != lOther$salt) {
      return false;
    }
    final l$social = social;
    final lOther$social = other.social;
    if (_$data.containsKey('social') != other._$data.containsKey('social')) {
      return false;
    }
    if (l$social != lOther$social) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$createdAt = createdAt;
    final l$email = email;
    final l$firstName = firstName;
    final l$isAdmin = isAdmin;
    final l$lastName = lastName;
    final l$password = password;
    final l$phone = phone;
    final l$role = role;
    final l$salt = salt;
    final l$social = social;
    final l$updatedAt = updatedAt;
    final l$userName = userName;
    return Object.hashAll([
      _$data.containsKey('avatar') ? l$avatar : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('isAdmin') ? l$isAdmin : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('salt') ? l$salt : const {},
      _$data.containsKey('social') ? l$social : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('userName') ? l$userName : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateCustomerInput<TRes> {
  factory CopyWith$Input$UpdateCustomerInput(
    Input$UpdateCustomerInput instance,
    TRes Function(Input$UpdateCustomerInput) then,
  ) = _CopyWithImpl$Input$UpdateCustomerInput;

  factory CopyWith$Input$UpdateCustomerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateCustomerInput;

  TRes call({
    String? avatar,
    String? createdAt,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? social,
    String? updatedAt,
    String? userName,
  });
}

class _CopyWithImpl$Input$UpdateCustomerInput<TRes>
    implements CopyWith$Input$UpdateCustomerInput<TRes> {
  _CopyWithImpl$Input$UpdateCustomerInput(
    this._instance,
    this._then,
  );

  final Input$UpdateCustomerInput _instance;

  final TRes Function(Input$UpdateCustomerInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? createdAt = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? isAdmin = _undefined,
    Object? lastName = _undefined,
    Object? password = _undefined,
    Object? phone = _undefined,
    Object? role = _undefined,
    Object? salt = _undefined,
    Object? social = _undefined,
    Object? updatedAt = _undefined,
    Object? userName = _undefined,
  }) =>
      _then(Input$UpdateCustomerInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (createdAt != _undefined) 'createdAt': (createdAt as String?),
        if (email != _undefined) 'email': (email as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (isAdmin != _undefined) 'isAdmin': (isAdmin as bool?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (password != _undefined) 'password': (password as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (role != _undefined) 'role': (role as String?),
        if (salt != _undefined) 'salt': (salt as String?),
        if (social != _undefined) 'social': (social as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as String?),
        if (userName != _undefined) 'userName': (userName as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateCustomerInput<TRes>
    implements CopyWith$Input$UpdateCustomerInput<TRes> {
  _CopyWithStubImpl$Input$UpdateCustomerInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? createdAt,
    String? email,
    String? firstName,
    bool? isAdmin,
    String? lastName,
    String? password,
    String? phone,
    String? role,
    String? salt,
    String? social,
    String? updatedAt,
    String? userName,
  }) =>
      _res;
}

class Input$UpdateEmployeeInput {
  factory Input$UpdateEmployeeInput({
    String? avatar,
    String? createdAt,
    String? designation,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? updatedAt,
  }) =>
      Input$UpdateEmployeeInput._({
        if (avatar != null) r'avatar': avatar,
        if (createdAt != null) r'createdAt': createdAt,
        if (designation != null) r'designation': designation,
        if (email != null) r'email': email,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (phoneNumber != null) r'phoneNumber': phoneNumber,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UpdateEmployeeInput._(this._$data);

  factory Input$UpdateEmployeeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatar')) {
      final l$avatar = data['avatar'];
      result$data['avatar'] = (l$avatar as String?);
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = (l$createdAt as String?);
    }
    if (data.containsKey('designation')) {
      final l$designation = data['designation'];
      result$data['designation'] = (l$designation as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('phoneNumber')) {
      final l$phoneNumber = data['phoneNumber'];
      result$data['phoneNumber'] = (l$phoneNumber as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = (l$updatedAt as String?);
    }
    return Input$UpdateEmployeeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatar => (_$data['avatar'] as String?);
  String? get createdAt => (_$data['createdAt'] as String?);
  String? get designation => (_$data['designation'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get phoneNumber => (_$data['phoneNumber'] as String?);
  String? get updatedAt => (_$data['updatedAt'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatar')) {
      final l$avatar = avatar;
      result$data['avatar'] = l$avatar;
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt;
    }
    if (_$data.containsKey('designation')) {
      final l$designation = designation;
      result$data['designation'] = l$designation;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('phoneNumber')) {
      final l$phoneNumber = phoneNumber;
      result$data['phoneNumber'] = l$phoneNumber;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt;
    }
    return result$data;
  }

  CopyWith$Input$UpdateEmployeeInput<Input$UpdateEmployeeInput> get copyWith =>
      CopyWith$Input$UpdateEmployeeInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateEmployeeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (_$data.containsKey('avatar') != other._$data.containsKey('avatar')) {
      return false;
    }
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$designation = designation;
    final lOther$designation = other.designation;
    if (_$data.containsKey('designation') !=
        other._$data.containsKey('designation')) {
      return false;
    }
    if (l$designation != lOther$designation) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (_$data.containsKey('phoneNumber') !=
        other._$data.containsKey('phoneNumber')) {
      return false;
    }
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatar = avatar;
    final l$createdAt = createdAt;
    final l$designation = designation;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('avatar') ? l$avatar : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('designation') ? l$designation : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('phoneNumber') ? l$phoneNumber : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateEmployeeInput<TRes> {
  factory CopyWith$Input$UpdateEmployeeInput(
    Input$UpdateEmployeeInput instance,
    TRes Function(Input$UpdateEmployeeInput) then,
  ) = _CopyWithImpl$Input$UpdateEmployeeInput;

  factory CopyWith$Input$UpdateEmployeeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateEmployeeInput;

  TRes call({
    String? avatar,
    String? createdAt,
    String? designation,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? updatedAt,
  });
}

class _CopyWithImpl$Input$UpdateEmployeeInput<TRes>
    implements CopyWith$Input$UpdateEmployeeInput<TRes> {
  _CopyWithImpl$Input$UpdateEmployeeInput(
    this._instance,
    this._then,
  );

  final Input$UpdateEmployeeInput _instance;

  final TRes Function(Input$UpdateEmployeeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatar = _undefined,
    Object? createdAt = _undefined,
    Object? designation = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? phoneNumber = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UpdateEmployeeInput._({
        ..._instance._$data,
        if (avatar != _undefined) 'avatar': (avatar as String?),
        if (createdAt != _undefined) 'createdAt': (createdAt as String?),
        if (designation != _undefined) 'designation': (designation as String?),
        if (email != _undefined) 'email': (email as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (phoneNumber != _undefined) 'phoneNumber': (phoneNumber as String?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateEmployeeInput<TRes>
    implements CopyWith$Input$UpdateEmployeeInput<TRes> {
  _CopyWithStubImpl$Input$UpdateEmployeeInput(this._res);

  TRes _res;

  call({
    String? avatar,
    String? createdAt,
    String? designation,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? updatedAt,
  }) =>
      _res;
}

class Input$UpdateProductInput {
  factory Input$UpdateProductInput({
    String? brand,
    String? category,
    List<String>? colors,
    String? createdAt,
    String? depo,
    String? description,
    List<String>? images,
    String? name,
    int? numInStock,
    int? numReviews,
    String? price,
    double? rating,
    List<String>? sizes,
    String? updatedAt,
  }) =>
      Input$UpdateProductInput._({
        if (brand != null) r'brand': brand,
        if (category != null) r'category': category,
        if (colors != null) r'colors': colors,
        if (createdAt != null) r'createdAt': createdAt,
        if (depo != null) r'depo': depo,
        if (description != null) r'description': description,
        if (images != null) r'images': images,
        if (name != null) r'name': name,
        if (numInStock != null) r'numInStock': numInStock,
        if (numReviews != null) r'numReviews': numReviews,
        if (price != null) r'price': price,
        if (rating != null) r'rating': rating,
        if (sizes != null) r'sizes': sizes,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UpdateProductInput._(this._$data);

  factory Input$UpdateProductInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('brand')) {
      final l$brand = data['brand'];
      result$data['brand'] = (l$brand as String?);
    }
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] = (l$category as String?);
    }
    if (data.containsKey('colors')) {
      final l$colors = data['colors'];
      result$data['colors'] =
          (l$colors as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = (l$createdAt as String?);
    }
    if (data.containsKey('depo')) {
      final l$depo = data['depo'];
      result$data['depo'] = (l$depo as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('images')) {
      final l$images = data['images'];
      result$data['images'] =
          (l$images as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('numInStock')) {
      final l$numInStock = data['numInStock'];
      result$data['numInStock'] = (l$numInStock as int?);
    }
    if (data.containsKey('numReviews')) {
      final l$numReviews = data['numReviews'];
      result$data['numReviews'] = (l$numReviews as int?);
    }
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = (l$price as String?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = (l$rating as num?)?.toDouble();
    }
    if (data.containsKey('sizes')) {
      final l$sizes = data['sizes'];
      result$data['sizes'] =
          (l$sizes as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = (l$updatedAt as String?);
    }
    return Input$UpdateProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get brand => (_$data['brand'] as String?);
  String? get category => (_$data['category'] as String?);
  List<String>? get colors => (_$data['colors'] as List<String>?);
  String? get createdAt => (_$data['createdAt'] as String?);
  String? get depo => (_$data['depo'] as String?);
  String? get description => (_$data['description'] as String?);
  List<String>? get images => (_$data['images'] as List<String>?);
  String? get name => (_$data['name'] as String?);
  int? get numInStock => (_$data['numInStock'] as int?);
  int? get numReviews => (_$data['numReviews'] as int?);
  String? get price => (_$data['price'] as String?);
  double? get rating => (_$data['rating'] as double?);
  List<String>? get sizes => (_$data['sizes'] as List<String>?);
  String? get updatedAt => (_$data['updatedAt'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('brand')) {
      final l$brand = brand;
      result$data['brand'] = l$brand;
    }
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] = l$category;
    }
    if (_$data.containsKey('colors')) {
      final l$colors = colors;
      result$data['colors'] = l$colors?.map((e) => e).toList();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt;
    }
    if (_$data.containsKey('depo')) {
      final l$depo = depo;
      result$data['depo'] = l$depo;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('images')) {
      final l$images = images;
      result$data['images'] = l$images?.map((e) => e).toList();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('numInStock')) {
      final l$numInStock = numInStock;
      result$data['numInStock'] = l$numInStock;
    }
    if (_$data.containsKey('numReviews')) {
      final l$numReviews = numReviews;
      result$data['numReviews'] = l$numReviews;
    }
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] = l$rating;
    }
    if (_$data.containsKey('sizes')) {
      final l$sizes = sizes;
      result$data['sizes'] = l$sizes?.map((e) => e).toList();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt;
    }
    return result$data;
  }

  CopyWith$Input$UpdateProductInput<Input$UpdateProductInput> get copyWith =>
      CopyWith$Input$UpdateProductInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$brand = brand;
    final lOther$brand = other.brand;
    if (_$data.containsKey('brand') != other._$data.containsKey('brand')) {
      return false;
    }
    if (l$brand != lOther$brand) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$colors = colors;
    final lOther$colors = other.colors;
    if (_$data.containsKey('colors') != other._$data.containsKey('colors')) {
      return false;
    }
    if (l$colors != null && lOther$colors != null) {
      if (l$colors.length != lOther$colors.length) {
        return false;
      }
      for (int i = 0; i < l$colors.length; i++) {
        final l$colors$entry = l$colors[i];
        final lOther$colors$entry = lOther$colors[i];
        if (l$colors$entry != lOther$colors$entry) {
          return false;
        }
      }
    } else if (l$colors != lOther$colors) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$depo = depo;
    final lOther$depo = other.depo;
    if (_$data.containsKey('depo') != other._$data.containsKey('depo')) {
      return false;
    }
    if (l$depo != lOther$depo) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$images = images;
    final lOther$images = other.images;
    if (_$data.containsKey('images') != other._$data.containsKey('images')) {
      return false;
    }
    if (l$images != null && lOther$images != null) {
      if (l$images.length != lOther$images.length) {
        return false;
      }
      for (int i = 0; i < l$images.length; i++) {
        final l$images$entry = l$images[i];
        final lOther$images$entry = lOther$images[i];
        if (l$images$entry != lOther$images$entry) {
          return false;
        }
      }
    } else if (l$images != lOther$images) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$numInStock = numInStock;
    final lOther$numInStock = other.numInStock;
    if (_$data.containsKey('numInStock') !=
        other._$data.containsKey('numInStock')) {
      return false;
    }
    if (l$numInStock != lOther$numInStock) {
      return false;
    }
    final l$numReviews = numReviews;
    final lOther$numReviews = other.numReviews;
    if (_$data.containsKey('numReviews') !=
        other._$data.containsKey('numReviews')) {
      return false;
    }
    if (l$numReviews != lOther$numReviews) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$sizes = sizes;
    final lOther$sizes = other.sizes;
    if (_$data.containsKey('sizes') != other._$data.containsKey('sizes')) {
      return false;
    }
    if (l$sizes != null && lOther$sizes != null) {
      if (l$sizes.length != lOther$sizes.length) {
        return false;
      }
      for (int i = 0; i < l$sizes.length; i++) {
        final l$sizes$entry = l$sizes[i];
        final lOther$sizes$entry = lOther$sizes[i];
        if (l$sizes$entry != lOther$sizes$entry) {
          return false;
        }
      }
    } else if (l$sizes != lOther$sizes) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$brand = brand;
    final l$category = category;
    final l$colors = colors;
    final l$createdAt = createdAt;
    final l$depo = depo;
    final l$description = description;
    final l$images = images;
    final l$name = name;
    final l$numInStock = numInStock;
    final l$numReviews = numReviews;
    final l$price = price;
    final l$rating = rating;
    final l$sizes = sizes;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('brand') ? l$brand : const {},
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('colors')
          ? l$colors == null
              ? null
              : Object.hashAll(l$colors.map((v) => v))
          : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('depo') ? l$depo : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('images')
          ? l$images == null
              ? null
              : Object.hashAll(l$images.map((v) => v))
          : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('numInStock') ? l$numInStock : const {},
      _$data.containsKey('numReviews') ? l$numReviews : const {},
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('rating') ? l$rating : const {},
      _$data.containsKey('sizes')
          ? l$sizes == null
              ? null
              : Object.hashAll(l$sizes.map((v) => v))
          : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateProductInput<TRes> {
  factory CopyWith$Input$UpdateProductInput(
    Input$UpdateProductInput instance,
    TRes Function(Input$UpdateProductInput) then,
  ) = _CopyWithImpl$Input$UpdateProductInput;

  factory CopyWith$Input$UpdateProductInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateProductInput;

  TRes call({
    String? brand,
    String? category,
    List<String>? colors,
    String? createdAt,
    String? depo,
    String? description,
    List<String>? images,
    String? name,
    int? numInStock,
    int? numReviews,
    String? price,
    double? rating,
    List<String>? sizes,
    String? updatedAt,
  });
}

class _CopyWithImpl$Input$UpdateProductInput<TRes>
    implements CopyWith$Input$UpdateProductInput<TRes> {
  _CopyWithImpl$Input$UpdateProductInput(
    this._instance,
    this._then,
  );

  final Input$UpdateProductInput _instance;

  final TRes Function(Input$UpdateProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? brand = _undefined,
    Object? category = _undefined,
    Object? colors = _undefined,
    Object? createdAt = _undefined,
    Object? depo = _undefined,
    Object? description = _undefined,
    Object? images = _undefined,
    Object? name = _undefined,
    Object? numInStock = _undefined,
    Object? numReviews = _undefined,
    Object? price = _undefined,
    Object? rating = _undefined,
    Object? sizes = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UpdateProductInput._({
        ..._instance._$data,
        if (brand != _undefined) 'brand': (brand as String?),
        if (category != _undefined) 'category': (category as String?),
        if (colors != _undefined) 'colors': (colors as List<String>?),
        if (createdAt != _undefined) 'createdAt': (createdAt as String?),
        if (depo != _undefined) 'depo': (depo as String?),
        if (description != _undefined) 'description': (description as String?),
        if (images != _undefined) 'images': (images as List<String>?),
        if (name != _undefined) 'name': (name as String?),
        if (numInStock != _undefined) 'numInStock': (numInStock as int?),
        if (numReviews != _undefined) 'numReviews': (numReviews as int?),
        if (price != _undefined) 'price': (price as String?),
        if (rating != _undefined) 'rating': (rating as double?),
        if (sizes != _undefined) 'sizes': (sizes as List<String>?),
        if (updatedAt != _undefined) 'updatedAt': (updatedAt as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateProductInput<TRes>
    implements CopyWith$Input$UpdateProductInput<TRes> {
  _CopyWithStubImpl$Input$UpdateProductInput(this._res);

  TRes _res;

  call({
    String? brand,
    String? category,
    List<String>? colors,
    String? createdAt,
    String? depo,
    String? description,
    List<String>? images,
    String? name,
    int? numInStock,
    int? numReviews,
    String? price,
    double? rating,
    List<String>? sizes,
    String? updatedAt,
  }) =>
      _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
