import 'package:xsdui/service/xsdui_network_service.dart';
import 'package:xsdui/service/xsdui_network_service_impl.dart';

class XSduiNetwork {
  static final XSduiNetworkService _service = XSduiNetworkServiceImpl();

  static getRequest({
    required String url,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _service.get(
        url: url, headers: headers, queryParameters: queryParameters);
  }
}
