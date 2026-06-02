import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/home_model.dart';
import '../../../../core/network/base_response.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/error_handler.dart';

abstract class HomeRemoteDataSource {
  Future<HomeModel> getHome();
  Future<void> changeAvailability(int status);
}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio dio;

  HomeRemoteDataSourceImpl(this.dio);

  @override
  Future<HomeModel> getHome() async {
    try {
      final response = await dio.get('delegate/home');
      
      final baseResponse = BaseResponse<HomeModel>.fromJson(
        response.data,
        (json) => HomeModel.fromJson(json as Map<String, dynamic>),
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
  Future<void> changeAvailability(int status) async {
    try {
      await dio.post('delegate/change-availability', data: {'status': status});
    } on DioException catch (e) {
      throw ErrorHandler.handleDioError(e);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
