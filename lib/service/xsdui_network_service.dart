import 'package:dio/dio.dart';

abstract class XSduiNetworkService {
  Future<Response?> get({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
