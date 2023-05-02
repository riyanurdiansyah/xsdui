// import 'package:dio/dio.dart';
// import 'package:xsdui/network/xsdui_request.dart';

// class XsduiNetwork {
//   const XsduiNetwork._();

//   static late Dio _dio;

//   static void initialize(Dio dio) => _dio = dio;

//   static Future<Response?> request(XsduiRequest request) {
//     switch (request.method) {
//       case Method.get:
//         return getRequest(request);
//       case Method.post:
//         return postRequest(request);
//       case Method.put:
//         return putRequest(request);
//       case Method.delete:
//         return deleteRequest(request);
//     }
//   }

//   static Future<Response?> getRequest(XsduiRequest request) {
//     return _dio.get(
//       request.url,
//       data: request.data,
//       queryParameters: request.queryParameters,
//       options: Options(
//         contentType: request.contentType,
//         headers: request.headers,
//       ),
//     );
//   }

//   static Future<Response?> postRequest(XsduiRequest request) {
//     return _dio.post(
//       request.url,
//       data: request.data,
//       queryParameters: request.queryParameters,
//       options: Options(
//         contentType: request.contentType,
//         headers: request.headers,
//       ),
//     );
//   }

//   static Future<Response?> putRequest(XsduiRequest request) async {
//     return _dio.put(
//       request.url,
//       data: request.data,
//       queryParameters: request.queryParameters,
//       options: Options(
//         contentType: request.contentType,
//         headers: request.headers,
//       ),
//     );
//   }

//   static Future<Response?> deleteRequest(XsduiRequest request) async {
//     return _dio.delete(
//       request.url,
//       data: request.data,
//       queryParameters: request.queryParameters,
//       options: Options(
//         contentType: request.contentType,
//         headers: request.headers,
//       ),
//     );
//   }
// }
