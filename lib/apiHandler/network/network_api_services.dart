import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import '../end_points.dart/api_endpoints.dart';
import '../response/error_response.dart';

class NetworkApiService extends GetxService {
  final String appBaseUrl = ApiEndPoint.baseUrl;
  static const String noInternetMessage =
      'Connection to API server failed due to internet connection';
  final int timeoutInSeconds = 60;
  final Map<String, String> _mainHeaders = {};

// get api
  Future<Response> getData(String uri,
      {Map<String, dynamic>? query, Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $appBaseUrl$uri\nHeader: $_mainHeaders');
      http.Response response = await http
          .get(
            Uri.parse(appBaseUrl + uri),
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

// post api
  Future<Response> postData(String uri, Map<String, String> body,
      {Map<String, String>? headers}) async {
    try {
      // debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      body.removeWhere((key, value) {
        return value is int || value == "" || value.isEmpty;
      });
      debugPrint('====> API Body: $body');
      http.Response response = await http
          .post(
            Uri.parse(appBaseUrl + uri),
            body: body,
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      debugPrint('====> API Body: ${response.body}');
      return handleResponse(response, uri);
    } catch (e) {
      debugPrint("$e");
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

// post  api send images

  Future<Response> postMultipartData(
      String uri, Map<String, String> body, List<MultipartBody> multipartBody,
      {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      http.MultipartRequest request =
          http.MultipartRequest('POST', Uri.parse(appBaseUrl + uri));
      request.headers.addAll(headers ?? _mainHeaders);
      for (MultipartBody multipart in multipartBody) {
        if (foundation.kIsWeb) {
          Uint8List list = await multipart.file.readAsBytes();
          http.MultipartFile part = http.MultipartFile(
            multipart.key,
            multipart.file.readAsBytes().asStream(),
            list.length,
            filename: basename(multipart.file.path),
          );
          request.files.add(part);
        } else {
          File file = File(multipart.file.path);
          request.files.add(http.MultipartFile(
            multipart.key,
            file.readAsBytes().asStream(),
            file.lengthSync(),
            filename: file.path.split('/').last,
          ));
        }
      }
      request.fields.addAll(body);
      http.Response response =
          await http.Response.fromStream(await request.send());
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

// put api

  Future<Response> putData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      http.Response response = await http
          .put(
            Uri.parse(appBaseUrl + uri),
            body: jsonEncode(body),
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

// delete api
  Future<Response> deleteData(String uri,
      {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      http.Response response = await http
          .delete(
            Uri.parse(appBaseUrl + uri),
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Response handleResponse(http.Response response, String uri) {
    dynamic bodyFromArgs;
    try {
      bodyFromArgs = jsonDecode(response.body);
    } catch (e, s) {
      debugPrint("$e,$s");
    }
    Response finalResonse = Response(
      body: bodyFromArgs ?? response.body,
      bodyString: response.body.toString(),
      headers: response.headers,
      statusCode: response.statusCode,
      statusText: response.reasonPhrase,
    );
    if (finalResonse.statusCode != 200 &&
        finalResonse.body != null &&
        finalResonse.body is! String) {
      if (finalResonse.body.toString().startsWith('{errors: [{code:')) {
        ErrorResponse errorResponseFromjson =
            ErrorResponse.fromJson(finalResonse.body);
        finalResonse = Response(
            statusCode: finalResonse.statusCode,
            body: finalResonse.body,
            statusText: errorResponseFromjson.errors[0].message);
      } else if (finalResonse.body.toString().startsWith('{message')) {
        finalResonse = Response(
            statusCode: finalResonse.statusCode,
            body: finalResonse.body,
            statusText: finalResonse.body['message']);
      }
    } else if (finalResonse.statusCode != 200 && finalResonse.body == null) {
      finalResonse =
          const Response(statusCode: 0, statusText: noInternetMessage);
    }
    debugPrint(
        '====> API Response: [${finalResonse.statusCode}] $uri\n${finalResonse.body}');

    return finalResonse;
  }
}

class MultipartBody {
  String key;
  XFile file;

  MultipartBody(this.key, this.file);
}
