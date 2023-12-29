import 'package:ammn/domain/pages/loader_page/controllers/loader_page_controller.dart';
import 'package:ammn/domain/pages/loader_page/views/loader_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const Application(),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AMMN',
      home: const LoaderPage(),
      initialBinding: BindingsBuilder.put(
        () => LoaderPageController(),
      ),
    );
  }
}
