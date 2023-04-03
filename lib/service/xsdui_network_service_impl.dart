import 'package:dio/dio.dart';
import 'package:xsdui/service/xsdui_network_service.dart';

class XSduiNetworkServiceImpl implements XSduiNetworkService {
  final Dio _dio = Dio();

  @override
  Future<Response?> get(
      {required String url,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters}) async {
    try {
      return await _dio.get(url,
          options: Options(headers: headers), queryParameters: queryParameters);
    } catch (e) {
      return null;
    }
  }
}
