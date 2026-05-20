import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String phone);

  Future<UserModel> verifyOtp(String phone, String otp);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<UserModel> login(String phone) async {
    final response = await dio.post(
      'delegate/login',
      data: {'phone': phone, "country_id": "1", "device_token": "1"},
    );
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data['data']);
    } else {
      throw Exception('Server Error');
    }
  }

  @override
  Future<UserModel> verifyOtp(String phone, String otp) async {
    final response = await dio.post(
      'delegate/verify',
      data: {'phone': phone, 'code': otp, 'device_token': otp},
    );
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.data['data']);
    } else {
      throw Exception('Server Error');
    }
  }
}
