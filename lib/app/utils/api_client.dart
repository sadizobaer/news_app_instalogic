import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'dart:developer';

const String baseUrl = " ";

class ApiClient {
  static final Dio dio = Dio();
  static final ApiClient _instance = ApiClient._internal();
  static ApiClient get instance => _instance;

  factory ApiClient() {
    return _instance;
  }

  ApiClient._internal();

  static init() async {
    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = 60000;
    dio.options.receiveTimeout = 60000;
    dio.options.receiveDataWhenStatusError = true;
    dio.options.headers = {
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.contentTypeHeader: "application/json",
    };

    dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        error: true,
        responseBody: true,
        queryParameters: true,
        logPrint: (v) => log(v),
      ),
    );
  }

  Future get({required String url, Map<String, dynamic>? params}) async {
    try {
      final response = await dio.get(url, queryParameters: params);

      return response.data;
    } on DioError catch (e) {
      print(e.response?.data);
      print(e.requestOptions.uri.path);
      return null;
    }
  }

  Future post({required String url, Map<String, dynamic>? body}) async {
    try {
      final response = await dio.post(url, data: body);
      return response.data;
    } on DioError catch (e) {
      print(e.response?.data);
      print(e.response?.statusCode);
      print(e.toString());
      print(e.message.toString());
      print(e.requestOptions.uri.path);
      return null;
    }
  }

  Future put({required String url, Map<String, dynamic>? body}) async {
    try {
      final response = await dio.put(url, data: body);
      return response.data;
    } on DioError {
      return null;
    }
  }

  Future delete({required String url, Map<String, dynamic>? body}) async {
    try {
      final response = await dio.delete(url, data: body);
      return response.data;
    } on DioError {
      return null;
    }
  }

  Future requestWithFile({
    required String url,
    Map<String, dynamic>? body,
    required List<MapEntry<String, File>> files,
  }) async {
    try {
      log(body.toString());
      FormData formData = FormData.fromMap(body ?? {});
      for (var fileEntry in files) {
        formData.files.add(
          MapEntry(
            fileEntry.key,
            MultipartFile.fromFileSync(
              fileEntry.value.path,
              filename: fileEntry.value.path.split("/").last,
            ),
          ),
        );
      }
      log(formData.files.toString());

      await Future.delayed(const Duration(seconds: 1));
      log(formData.files.length.toString());
      log(files.length.toString());

      final response = await dio.post(url, data: formData);
      return response.data;
    } on DioError catch (e) {
      log(e.toString(), name: "FIle up");
      return null;
    }
  }
}
