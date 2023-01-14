import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/app/utils/initial_bindings.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
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
