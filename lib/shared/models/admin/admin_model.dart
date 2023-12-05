import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
class AdminModel with _$AdminModel {
  const factory AdminModel({
    required String id,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    String? userName,
    String? phone,
    String? avatar,
    String? role,
    String? salt,
    bool? isAdmin,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AdminModel;
  factory AdminModel.fromJson(Map<String, dynamic> json) => _$AdminModelFromJson(json);
}
