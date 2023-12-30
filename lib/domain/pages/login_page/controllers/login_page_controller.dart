import 'package:get/get.dart';

class LoginPageController extends GetxController {
  RxBool passwordHidden = true.obs;

  void togglePasswordVisibility() {
    passwordHidden.value = !passwordHidden.value;
  }
}
