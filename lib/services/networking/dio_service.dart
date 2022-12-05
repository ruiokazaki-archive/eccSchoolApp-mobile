import 'package:dio/dio.dart';
import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:ecc_school_app_mobile/services/networking/api_endpoint.dart';

final options = BaseOptions(
  baseUrl: ApiEndpoint.baseUrl,
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

class DioService {
  final _dio = Dio(options);

  Future<T> post<T>({
    required String endpoint,
    JSON? data,
    Options? options,
    required T Function(JSON responseBody) converter,
  }) async {
    final response = await _dio.post<JSON>(
      endpoint,
      data: data,
      options: options,
    );
    return converter(response.data as JSON);
  }

  Future<T> getDocument<T>({
    required String endpoint,
    required String token,
    required T Function(JSON responseBody) converter,
  }) async {
    final response = await _dio.get<JSON>(
      endpoint,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      ),
    );

    return converter(response.data as JSON);
  }

  Future<List<T>> getCollection<T>({
    required String endpoint,
    required String token,
    required T Function(JSON responseBody) converter,
  }) async {
    final response = await _dio.get<JSON>(
      endpoint,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      ),
    );

    final body = response.data as List<Object?>;

    return body.map((dataMap) => converter(dataMap as JSON)).toList();
  }
}
