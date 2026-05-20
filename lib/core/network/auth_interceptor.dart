import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../services/local_storage_service.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final LocalStorageService localStorageService;

  AuthInterceptor(this.localStorageService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = localStorageService.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    options.headers['Accept-Language'] = localStorageService.getLanguage();
    super.onRequest(options, handler);
  }
}
