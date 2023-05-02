abstract class XSduiNetworkService {
  Future<Map<String, dynamic>?> get({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
