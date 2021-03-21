import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern_template/app/themes/text_styles.dart';
import 'package:get/get.dart';

abstract class ErrorHandler {
  static void Error500() {
    Get.snackbar("500", "500 Internal Error");
  }

  static void CustomError({@required String title, @required String message}) {
    Get.snackbar("title", "message",
        titleText: Text(
          title,
          style: CustomTextStyles.errorTextStyle,
        ),
        messageText: Text(
          message,
          style: CustomTextStyles.errorTextStyle.copyWith(fontSize: 12),
        ));
  }
}
