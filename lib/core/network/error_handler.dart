import 'package:dio/dio.dart';
import '../error/exceptions.dart';

class ErrorHandler {
  static Exception handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return ServerException('Connection timeout');
      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response);
      case DioExceptionType.cancel:
        return ServerException('Request cancelled');
      case DioExceptionType.unknown:
      default:
        return ServerException('Something went wrong');
    }
  }

  static Exception _handleBadResponse(Response? response) {
    if (response?.data != null && response?.data is Map) {
      final message = response?.data['message'] ?? 'Server Error';
      return ServerException(message);
    }
    return ServerException('Server Error');
  }
}
