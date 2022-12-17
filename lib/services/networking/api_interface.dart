import 'package:dio/dio.dart';
import 'package:ecc_school_app_mobile/helpers/typedefs.dart';

abstract class ApiInterface {
  const ApiInterface();

  Future<T> postDocument<T>({
    required String endpoint,
    required T Function(JSON responseBody) converter,
    JSON? data,
    Options? options,
  });

  Future<List<T>> postCollection<T>({
    required String endpoint,
    required T Function(JSON responseBody) converter,
    JSON? data,
    Options? options,
  });

  Future<T> getDocument<T>({
    required String endpoint,
    required String token,
    required T Function(JSON responseBody) converter,
  });

  Future<List<T>> getCollection<T>({
    required String endpoint,
    required String token,
    required T Function(JSON responseBody) converter,
  });
}
