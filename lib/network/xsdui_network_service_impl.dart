import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:xsdui/network/xsdui_network_service.dart';

class XSduiNetworkServiceImpl implements XSduiNetworkService {
  final Dio _dio = Dio();

  @override
  Future<Map<String, dynamic>?> get(
      {required String url,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(url,
          options: Options(headers: headers), queryParameters: queryParameters);
      if (response.data.runtimeType == String) {
        try {
          final data = json.decode(response.data);
          return data;
        } catch (e) {
          return response.data;
        }
      }
      return response.data;
    } catch (e) {
      return null;
    }
  }
}
