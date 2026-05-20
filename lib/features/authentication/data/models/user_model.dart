import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String name,
    required String phone,
    String? image,
    String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) => UserModel(
        id: user.id,
        name: user.name,
        phone: user.phone,
        image: user.image,
        token: user.token,
      );

  const UserModel._();

  User toEntity() => User(
        id: id,
        name: name,
        phone: phone,
        image: image,
        token: token,
      );
}
