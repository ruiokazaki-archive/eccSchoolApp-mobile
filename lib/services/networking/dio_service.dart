import 'package:dio/dio.dart';
import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';
import 'package:ecc_school_app_mobile/services/networking/network_exception.dart';

final options = BaseOptions(
  baseUrl: ApiEndpoint.baseUrl,
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

class DioService {
  final _dio = Dio(options);

  Future<dynamic> get({
    required String endpoint,
    JSON? queryParams,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
        options: options,
      );

      return response.data;
    } on Exception catch (ex) {
      throw NetworkException.getDioException(ex);
    }
  }

  Future<dynamic> post({
    required String endpoint,
    JSON? data,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        endpoint,
        data: data,
        options: options,
      );
      return response.data;
    } on Exception catch (ex) {
      throw NetworkException.getDioException(ex);
    }
  }
}
