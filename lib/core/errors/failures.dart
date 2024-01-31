import 'package:dio/dio.dart';

abstract class Failure{
final String errMessage;

const Failure(this.errMessage);
}


class ServerFailure extends Failure{
ServerFailure(super.errMessage);


factory ServerFailure.fromDioError(DioException dioError){
  switch(dioError.type){

    case DioExceptionType.connectionTimeout:
      return ServerFailure('Connection Timeout With ApiServer');
      
      
    case DioExceptionType.sendTimeout:
      return ServerFailure('Send Timeout With ApiServer');


    case DioExceptionType.receiveTimeout:
      return ServerFailure('Receive Timeout With ApiServer');


    case DioExceptionType.badResponse:
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data );

    case DioExceptionType.cancel:
      return ServerFailure('Request Cancelled');


    case DioExceptionType.connectionError:
      return ServerFailure('No Internet Connection');


    case DioExceptionType.unknown:
      if(dioError.message!.contains('SocketException')) {
        return ServerFailure('No Internet Connection');
      }
      return ServerFailure('UnExpected Error, Try again!');
      default:
        return ServerFailure('Oops, There was an Error, try later!');
  }
}

factory ServerFailure.fromResponse(int statusCode, dynamic response)
{
if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
  return ServerFailure(response['error']['message']);
} else if (statusCode == 404) {
  return ServerFailure('Your Request Not Found. Please try again later!');
} else if(statusCode == 500) {
  return ServerFailure('Server error, try later!');
} else {
  return ServerFailure('Oops, There was an Error, try later!');
}
}
}