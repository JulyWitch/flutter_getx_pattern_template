import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern_template/app/modules/controller/main_controller.dart';
import 'package:flutter_getx_pattern_template/app/modules/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/modules/splash/splash_page.dart';
import 'app/themes/themes.dart';
import 'app/translations/app_translations.dart';
import 'app/translations/strings.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MainController mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: STRINGS.HOME.tr,
      home: SplashPage(),
      locale: Locale('fa', 'IR'),
      translationsKeys: AppTranslation.translations,
      getPages: AppPages.pages,
      theme: appThemeData,
      darkTheme: appDarkThemeData,
      themeMode: ThemeMode.dark,
      defaultTransition: Transition.fadeIn,
    );
  }
}
