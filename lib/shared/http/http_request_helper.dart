import 'dart:convert';

import 'package:dus_dashboard/index.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpRequestHelper {
  HttpRequestHelper._();

  static final _instance = HttpRequestHelper._();
  static HttpRequestHelper get instance => _instance;

  /// [http.get] request
  Future<T> getRequest<T>({
    required String path,
    Map<String, String>? headers,
    required T Function(dynamic data) builder,
  }) async {
    Uri url = Uri.parse(path);
    http.Response response = await http.get(
      url,
      headers: headers,
    );
    response.headers['Access-Control-Allow-Credentials'] = 'true';
    try {
      if (response.ok) {
        String data = response.body;
        dynamic decodedData = jsonDecode(data);
        dynamic returnData = {
          "data": decodedData,
          "success": true,
        };
        return builder(returnData);
      } else {
        final failure = ServerFailure(message: response.body);
        dynamic decodedData = jsonDecode(failure.toString());
        dynamic returnData = {
          "data": decodedData,
          "success": false,
        };
        return builder(returnData);
      }
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      final failure = ServerFailure(message: errorMessage);
      dynamic returnData = {
        "data": failure,
        "success": false,
      };
      return builder(returnData);
    }
  }

  /// [http.post] request
  Future<T> postRequest<T>({
    required String path,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
    Encoding? encoding,
    required T Function(dynamic data) builder,
  }) async {
    Uri url = Uri.parse(path);
    http.Response response = await http.post(
      url,
      body: data,
      headers: headers,
      encoding: encoding,
    );
    try {
      if (response.ok) {
        String data = response.body;
        dynamic decodedData = jsonDecode(data);
        dynamic returnData = {
          "data": decodedData,
          "success": true,
        };
        return builder(returnData);
      } else {
        final failure = ServerFailure(message: response.body);
        dynamic decodedData = jsonDecode(failure.toString());
        dynamic returnData = {
          "data": decodedData,
          "success": false,
        };
        return builder(returnData);
      }
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      final failure = ServerFailure(message: errorMessage);
      dynamic decodedData = jsonDecode(failure.toString());
      dynamic returnData = {
        "data": decodedData,
        "success": false,
      };
      return builder(returnData);
    }
  }

  /// [http.patch] request
  Future<T> patchRequest<T>({
    required String path,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
    Encoding? encoding,
    required T Function(dynamic data) builder,
  }) async {
    Uri url = Uri.parse(path);
    try {
      // debugPrint("here => $data");
      http.Response response = await http.patch(
        url,
        body: data,
        headers: headers,
        encoding: encoding,
      );
      if (response.ok) {
        String data = response.body;
        dynamic decodedData = jsonDecode(data);
        dynamic returnData = {
          "data": decodedData,
          "success": true,
        };
        return builder(returnData);
      } else {
        final failure = ServerFailure(message: response.body);
        dynamic decodedData = jsonDecode(failure.toString());
        dynamic returnData = {
          "data": decodedData,
          "success": false,
        };
        return builder(returnData);
      }
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      final failure = ServerFailure(message: errorMessage);
      dynamic decodedData = jsonDecode(failure.toString());
      dynamic returnData = {
        "data": decodedData,
        "success": false,
      };
      return builder(returnData);
    }
  }

  /// [http.put] request
  Future<T> putRequest<T>({
    required String path,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
    Encoding? encoding,
    required T Function(dynamic data) builder,
  }) async {
    Uri url = Uri.parse(path);
    http.Response response = await http.put(
      url,
      body: data,
      headers: headers,
      encoding: encoding,
    );
    try {
      if (response.ok) {
        String data = response.body;
        dynamic decodedData = jsonDecode(data);
        dynamic returnData = {
          "data": decodedData,
          "success": true,
        };
        return builder(returnData);
      } else {
        final failure = ServerFailure(message: response.body);
        dynamic decodedData = jsonDecode(failure.toString());
        dynamic returnData = {
          "data": decodedData,
          "success": false,
        };
        return builder(returnData);
      }
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      final failure = ServerFailure(message: errorMessage);
      dynamic decodedData = jsonDecode(failure.toString());
      dynamic returnData = {
        "data": decodedData,
        "success": false,
      };
      return builder(returnData);
    }
  }

  /// [http.delete] request
  Future<T> deleteRequest<T>({
    required String path,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
    Encoding? encoding,
    required T Function(dynamic data) builder,
  }) async {
    Uri url = Uri.parse(path);
    http.Response response = await http.delete(
      url,
      body: data,
      headers: headers,
      encoding: encoding,
    );
    try {
      if (response.ok) {
        String data = response.body;
        dynamic decodedData = jsonDecode(data);
        dynamic returnData = {
          "data": decodedData,
          "success": true,
        };
        return builder(returnData);
      } else {
        final failure = ServerFailure(message: response.body);
        dynamic decodedData = jsonDecode(failure.toString());
        dynamic returnData = {
          "data": decodedData,
          "success": false,
        };
        return builder(returnData);
      }
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      final failure = ServerFailure(message: errorMessage);
      dynamic decodedData = jsonDecode(failure.toString());
      dynamic returnData = {
        "data": decodedData,
        "success": false,
      };
      return builder(returnData);
    }
  }

  /// [http.MultipartRequest] request
  Future<T> multiPartRequest<T>({
    required String path,
    required String method,
    Map<String, dynamic>? fields,
    List<PlatformFile>? files,
    Map<String, String>? headers,
    Encoding? encoding,
    required T Function(dynamic data) builder,
  }) async {
    try {
      Uri url = Uri.parse(path);
      // debugPrint(fields.toString());
      List<http.MultipartFile> images = <http.MultipartFile>[];
      if (files != null && files.isNotEmpty) {
        for (int i = 0; i < files.length; i++) {
          PlatformFile file = files[i];
          // debugPrint("file : $file");
          // Uint8List? bytes = file.bytes;
          // images.add(
          //   http.MultipartFile.fromBytes(
          //     'images',
          //     bytes!,
          //     filename: file.name,
          //   ),
          // );
          images.add(
            await http.MultipartFile.fromPath(
              "images",
              file.path!,
              filename: file.name,
            ),
          );
        }
      }
      http.MultipartRequest request = http.MultipartRequest(
        method,
        url,
      );

      /// header
      if (headers != null || headers!.isNotEmpty) {
        request.headers.addAll(headers);
      }

      // /// fields
      // fields?.forEach((String key, dynamic value) {
      //   request.fields[key] = value;
      // });

      /// fields
      fields?.forEach((String key, dynamic value) {
        if (value is List<String>) {
          for (int i = 0; i < value.length; i++) {
            request.fields['$key[$i]'] = value[i];
          }
        } else {
          request.fields[key] = value.toString();
        }
      });

      /// add all the images to the request
      for (http.MultipartFile file in images) {
        request.files.add(file);
      }

      /// send the request
      http.StreamedResponse response = await request.send();

      /// Parse JSON Response from server {"success" : true, "message" : "..."}
      dynamic decodedData = jsonDecode(
        String.fromCharCodes(
          await response.stream.toBytes(),
        ),
      );

      /// get the response
      if (response.ok) {
        dynamic returnData = {
          "data": decodedData,
          "success": true,
        };
        return builder(returnData);
      } else {
        debugPrint(decodedData.toString());
        final failure = ServerFailure(message: decodedData['message'].toString());
        dynamic returnData = {
          "data": failure,
          "success": false,
        };
        return builder(returnData);
      }
    } catch (e) {
      debugPrint(e.toString());
      final errorMessage = HttpExceptions.errorMessage(e);
      final failure = ServerFailure(message: errorMessage);
      dynamic returnData = {
        "data": failure,
        "success": false,
      };
      return builder(returnData);
    }
  }
}
