import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/enums.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/base_response.dart';
import '../../../../core/network/error_handler.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String phone, VerificationMethod method);

  Future<UserModel> verifyOtp(String phone, String otp);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<UserModel> login(String phone, VerificationMethod method) async {
    try {
      final response = await dio.post(
        'delegate/login',
        data: {
          'phone': phone,
          'method': method.name,
          "country_id": "1",
          "device_token": "1"
        },
      );
      
      final baseResponse = BaseResponse<UserModel>.fromJson(
        response.data,
        (json) => UserModel.fromJson(json as Map<String, dynamic>),
      );

      if (baseResponse.status == true && baseResponse.data != null) {
        return baseResponse.data!;
      } else {
        throw ServerException(baseResponse.message ?? 'Server Error');
      }
    } on DioException catch (e) {
      throw ErrorHandler.handleDioError(e);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> verifyOtp(String phone, String otp) async {
    try {
      final response = await dio.post(
        'delegate/verify',
        data: {'country_id': "1", 'phone': phone, 'code': otp, 'device_token': otp},
      );

      final baseResponse = BaseResponse<Map<String, dynamic>>.fromJson(
        response.data,
        (json) => json as Map<String, dynamic>,
      );

      if (baseResponse.status == true && baseResponse.data != null) {
        final data = baseResponse.data!;
        return UserModel.fromJson(data['user'] as Map<String, dynamic>).copyWith(
          token: data['token'] as String?
        );
      } else {
        throw ServerException(baseResponse.message ?? 'Server Error');
      }
    } on DioException catch (e) {
      throw ErrorHandler.handleDioError(e);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
