import 'package:dio/dio.dart';
import 'package:ecc_school_app_mobile/helpers/typedefs.dart';
import 'package:ecc_school_app_mobile/services/networking/api_interface.dart';
import 'package:ecc_school_app_mobile/services/networking/dio_service.dart';

class ApiService implements ApiInterface {
  final _dioService = DioService();

  @override
  Future<T> postDocument<T>({
    required String endpoint,
    required T Function(JSON responseBody) converter,
    JSON? data,
    Options? options,
  }) async {
    final response = await _dioService.post(
      endpoint: endpoint,
      data: data,
      options: options,
    );
    return converter(response);
  }

  @override
  Future<List<T>> postCollection<T>({
    required String endpoint,
    required T Function(JSON responseBody) converter,
    JSON? data,
    Options? options,
  }) async {
    final List<dynamic> response = await _dioService.post(
      endpoint: endpoint,
      options: options,
    );

    return response.map((dataMap) => converter(dataMap)).toList();
  }

  @override
  Future<T> getDocument<T>({
    required String endpoint,
    required String token,
    required T Function(JSON responseBody) converter,
  }) async {
    final response = await _dioService.get(
      endpoint: endpoint,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      ),
    );

    return converter(response);
  }

  @override
  Future<List<T>> getCollection<T>({
    required String endpoint,
    required String token,
    required T Function(JSON responseBody) converter,
  }) async {
    final List<dynamic> response = await _dioService.get(
      endpoint: endpoint,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      ),
    );

    return response.map((dataMap) => converter(dataMap)).toList();
  }
}
