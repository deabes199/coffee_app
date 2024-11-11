import 'package:coffee_app/core/networking/api_error_model.dart';
import 'package:dio/dio.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection TimeOut with server');
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message: 'send timeout in connection with server');
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: 'Receive timeout in connection with server');
        case DioExceptionType.badCertificate:
          return ApiErrorModel(message: '');
        case DioExceptionType.badResponse:
          return handleError(error.response?.data);
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'cancel in connection with server');
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'connection to server field');
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message:
                  'connection to the server fied due to internet connection');
      }
    } else {
      return ApiErrorModel(message: 'Unknown error occured');
    }
  }
}

ApiErrorModel handleError(dynamic data) {
  return ApiErrorModel(
      message: data['message'] ?? 'Unknown error occured',
      error: data['error']);
}
