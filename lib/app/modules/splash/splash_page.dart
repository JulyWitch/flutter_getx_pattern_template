import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern_template/app/modules/routes/app_pages.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          milliseconds: 5000,
        ),
        () {
          Get.offAndToNamed(Routes.HOME);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.blue,
        ),
      ),
    );
  }
}
