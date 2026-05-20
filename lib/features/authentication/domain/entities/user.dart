import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String phone;
  final String? image;
  final String? token;

  const User({
    required this.id,
    required this.name,
    required this.phone,
    this.image,
    this.token,
  });

  @override
  List<Object?> get props => [id, name, phone, image, token];
}
