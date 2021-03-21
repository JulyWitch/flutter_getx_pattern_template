import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_getx_pattern_template/app/data/api_routes.dart';
import 'package:flutter_getx_pattern_template/app/error_handler/error_handler.dart';
import 'package:flutter_getx_pattern_template/app/models/login_model.dart';

abstract class ApiProvider {
  static Future<SampleLogin> login(
      {@required username, @required password}) async {
    try {
      Response res = await Dio().post(API.Login,
          data: FormData.fromMap({"username": username, "password": password}));
      if (res.statusCode == 200) return SampleLogin.fromJson(res.data);

      ErrorHandler.Error500();
    } catch (e) {
      log(e.toString());
      ErrorHandler.Error500();
    }
    return null;
  }
}
