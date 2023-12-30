import 'package:ammn/config/scroll_behavior.dart';
import 'package:ammn/config/theme.dart';
import 'package:ammn/domain/pages/loader_page/controllers/loader_page_controller.dart';
import 'package:ammn/domain/pages/loader_page/views/loader_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
        scrollBehavior: CustomScrollBehavior(),
      ),
    );
  }
}
