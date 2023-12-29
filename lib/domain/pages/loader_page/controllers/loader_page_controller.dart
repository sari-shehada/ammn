import 'package:ammn/domain/pages/login_page/views/login_page.dart';
import 'package:get/get.dart';

class LoaderPageController extends GetxController {
  @override
  void onReady() {
    _loadApp();
    super.onReady();
  }

  Future<void> _loadApp() async {
    await Future.delayed(1500.milliseconds);
    Get.offAll(
      () => const LoginPage(),
    );
  }
}
