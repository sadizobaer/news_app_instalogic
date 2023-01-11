import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:news_app/app/utils/initial_bindings.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/app_theme.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return GetMaterialApp(
          builder: (context, widget) {
            ScreenUtil.init(
              context,
              designSize: const Size(360, 690),
            );
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.0,
              ),
              child: widget!,
            );
          },
          initialRoute: AppPages.initialRoute,
          initialBinding: InitialBindings(),
          theme: AppTheme.primaryTheme(),
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
        );
      },
    ),
  );
}
