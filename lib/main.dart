import 'package:ammn/config/theme.dart';
import 'package:ammn/domain/pages/loader_page/controllers/loader_page_controller.dart';
import 'package:ammn/domain/pages/loader_page/views/loader_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance(); //TODO: Assign to a global var
  runApp(
    const Application(),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(474, 1024),
      splitScreenMode: false,
      useInheritedMediaQuery: true,
      builder: (_, __) => GetMaterialApp(
        locale: const Locale('ar'),
        title: 'AMMN',
        theme: appTheme,
        home: const LoaderPage(),
        initialBinding: BindingsBuilder.put(
          () => LoaderPageController(),
        ),
        scrollBehavior: MyBehavior(),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
