import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_getx/data/provider/network/apis/api_endpoint.dart';
import 'package:flutter_getx/data/provider/network/apis/api_request_representable.dart';
import 'package:flutter_getx/data/provider/network/everonment/environment.dart';
import 'package:logger/logger.dart';

class DioHttpService {
  Dio? _dio;
  final logger = Logger();

  var defaultHeader = {"Content-Type": "application/json"};
  var defaultOptions = {
    "followRedirects": false,
    "validateStatus": (status) {
      return status < 500;
    }
  };

  static final BASE_URL = Environment.apiUrl;

  Future<DioHttpService> init() async {
    _dio = Dio(BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: 3000,
        receiveTimeout: 3000,
        responseType: ResponseType.json));
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) {
          logger.i("""
  REQUEST: ${requestOptions.method}
  URL: "${requestOptions.baseUrl + requestOptions.path}"
  HEADERS: ${requestOptions.headers}
  POST DATA: ${requestOptions.data}
  REQUEST PARAMS: ${requestOptions.queryParameters}              
  """);
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          logger.i("""
RESPONSE[${response.statusCode}]
DATA: ${response.data}
""");
          return handler.next(response);
        },
        onError: (err, handler) {
          logger.e("""
ERROR[${err.response?.statusCode}] 
DATA : ${err.response}
""");
          return handler.next(err);
        },
      ),
    );
  }

  Future<Response> request(
      {required String url,
      required ApiMethod method,
      Map<String, dynamic>? params,
      Map<String, dynamic>? requestHeaders}) async {
    Response response;

    try {
      if (method == ApiMethod.post) {
        response = await _dio!.post(url,
            data: params,
            options: Options(
                followRedirects: false,
                validateStatus: (status) {
                  return status! < 500;
                },
                headers: {...defaultHeader, ...?requestHeaders}));
      } else if (method == ApiMethod.delete) {
        response = await _dio!.delete(url,
            options: Options(
                followRedirects: false,
                validateStatus: (status) {
                  return status! < 500;
                },
                headers: {...defaultHeader, ...?requestHeaders}));
      } else if (method == ApiMethod.patch) {
        response = await _dio!.patch(url,
            options: Options(
                followRedirects: false,
                validateStatus: (status) {
                  return status! < 500;
                },
                headers: {...defaultHeader, ...?requestHeaders}));
      } else if (method == ApiMethod.put) {
        response = await _dio!.put(url,
            data: params,
            options: Options(
                followRedirects: false,
                validateStatus: (status) {
                  return status! < 500;
                },
                headers: {...defaultHeader, ...?requestHeaders}));
      } else {
        response = await _dio!.get(url,
            queryParameters: params,
            options: Options(
                followRedirects: false,
                validateStatus: (status) {
                  return status! < 500;
                },
                headers: {...defaultHeader, ...?requestHeaders}));
      }

      return response;
    } on DioError catch (e) {
      throw BadRequestException(e.requestOptions);
    } catch (e) {
      logger.e(e);
      throw Exception('Something went wrong');
    }
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Invalid request';
  }
}
