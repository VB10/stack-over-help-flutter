import 'dart:io';

import 'package:dio/dio.dart';
import 'package:stackHelpOver/future-builder/model/http_cat_model.dart';
import 'package:stackHelpOver/future-builder/service/IFutureService.dart';
import 'package:stackHelpOver/future-builder/model/user_model.dart';

import '../model/error_model.dart';

class FutureService extends IFutureService {
  final dio = Dio();

  dynamic _getDioRequest(String path) async {
    final response = await dio.get(path);
    switch (response.statusCode) {
      case HttpStatus.ok:
        return response.data;
        break;
      default:
        return ErrorModel(response.statusMessage);
    }
  }

  @override
  Future<List<HttpCatModel>> getHttpCatList(String path) async {
    final response = await _getDioRequest(path);
    if (response is List) {
      return response.map((e) => HttpCatModel.fromJson(e)).toList();
    } else {
      throw response;
    }
  }

  @override
  Future<List<UserModel>> getHttpUserModel(String path) async {
    final response = await _getDioRequest(path);
    if (response is List) {
      return response.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw response;
    }
  }
}
