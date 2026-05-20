import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/home_model.dart';
import '../../../../core/network/base_response.dart';

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
    final response = await dio.get('delegate/home');
    if (response.statusCode == 200) {
      return HomeModel.fromJson(response.data['data']);
    } else {
      throw Exception('Server Error');
    }
  }

  @override
  Future<void> changeAvailability(int status) async {
    await dio.post('delegate/change-availability', data: {'status': status});
  }
}
