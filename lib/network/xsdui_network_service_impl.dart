import 'dart:convert';
import 'dart:developer';

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
      log("CEK DATA 2 : ${response.data}");
      // try {
      //   final cek = ;
      //   print("CEK DATA 5 : $cek");
      // } catch (e) {
      //   print("CEK DATA 4 : ${e.toString()}");
      // }
      if (response.data.runtimeType == String) {
        print("CEK DATA MASUK");
        try {
          // final dataString = json.encode(response.data);
          final data = json.decode(response.data);
          print("CEK DATA 5 : $data");
          return data;
        } catch (e) {
          print("CEK DATA ERROR ${e.toString()}");
          return response.data;
        }
      }
      return response.data;
    } catch (e) {
      return null;
    }
  }
}
