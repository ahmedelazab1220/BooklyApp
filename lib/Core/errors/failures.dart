import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            'Connection timeout. Please check your internet connection and try again.');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout. Please try again later.');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout. Please try again later.');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Connection failed due to a problem with the server\'s security certificate. Please check your network connection or contact technical support.');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            exception.response!.statusCode!, exception.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            'Request has been cancelled. Please try again later.');
      case DioExceptionType.connectionError:
        return ServerFailure(
            'Internet connection is not stable. Please check your connection and try again.');
      case DioExceptionType.unknown:
        if (exception.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure(
            'Unexpected error occurred. Please try again later.');
      default:
        return ServerFailure(
            'Oops, an unexpected error occurred. Please try again later.');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Request Not Allowed!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error');
    } else {
      return ServerFailure(
          'Oops, an unexpected error occurred. Please try again later.');
    }
  }
}
