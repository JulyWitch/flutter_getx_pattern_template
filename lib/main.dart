import 'package:flutter/material.dart';
import 'package:flutter_getx_pattern_template/app/modules/controller/main_controller.dart';
import 'package:flutter_getx_pattern_template/app/modules/mobile/splash/splash_page.dart'
    as mobile;
import 'package:flutter_getx_pattern_template/app/modules/mobile/splash/splash_page.dart'
    as desktop;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/modules/mobile/routes/app_pages.dart' as mobile;
import 'app/modules/desktop/routes/app_pages.dart' as desktop; 
import 'app/themes/themes.dart';
import 'app/translations/app_translations.dart';
import 'app/translations/strings.dart';

void main() async{
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
      home: Get.width * Get.height > 470000
          ? desktop.SplashPage()
          : mobile.SplashPage(),

    locale: Locale('fa', 'IR'),
    translationsKeys: AppTranslation.translations,
    getPages: Get.width * Get.height > 470000
          ? desktop.AppPages.pages
          : mobile.AppPages.pages,
    theme: appThemeData,
    darkTheme: appDarkThemeData,
    themeMode: ThemeMode.light,
    defaultTransition: Transition.fadeIn,
    );
  }
}
