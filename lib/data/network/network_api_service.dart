import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvmpattern/data/network/base_api_service.dart';

import '../app_exceptions.dart';

class NetworkApiServices extends BaseApiServices {
  // Define headers
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer your_token_here',
  };

  @override
  Future<dynamic> getApi(String url) async {
    log("url $url");

    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url), headers: headers).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    log("response $responseJson");
    return responseJson;
  }

  @override
  Future<dynamic> postApi(dynamic data, String url) async {
    log("url $url");
    log("data $data");

    dynamic responseJson;
    try {
      final response =
          await http.post(Uri.parse(url), body: data, headers: headers).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
    log("response $responseJson");
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      default:
        throw FetchDataException('Error accoured while communicating with server ${response.statusCode}');
    }
  }
}
