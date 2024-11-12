import 'package:dio/dio.dart';

abstract class Failuers {
  final String erMassage;

  const Failuers(this.erMassage);
}

class ServerFailure extends Failuers {
  ServerFailure(super.erMassage);
  factory ServerFailure.fromDirError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure('Bad response with ApiServer');
      case DioExceptionType.cancel:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');
      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') == true) ;
        {
          return ServerFailure('No Internet Connection ');
        }
      default:
        return ServerFailure('Opps There was an Error , Plase Try again');
    }
  }
}
