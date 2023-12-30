import 'package:ammn/config/colors.dart';
import 'package:ammn/domain/pages/login_page/controllers/login_page_controller.dart';
import 'package:ammn/domain/shared_widgets/app_full_logo.dart';
import 'package:ammn/ui_utils/custom_button.dart';
import 'package:ammn/ui_utils/custom_text_field.dart';
import 'package:ammn/ui_utils/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox.expand(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          children: [
            AddVerticalSpacing(
              value: MediaQuery.of(context).padding.top + kToolbarHeight.h,
            ),
            const AppFullLogo(),
            AddVerticalSpacing(value: 10.h),
            Align(
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontSize: 38.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ),
            AddVerticalSpacing(value: 4.h),
            Align(
              child: Container(
                height: 2.5.h,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: AppColors.secondary.withOpacity(0.7),
                ),
              ),
            ),
            AddVerticalSpacing(value: 10.h),
            const CustomTextField(
              title: 'البريد الالكتروني',
              leadingIcon: Icons.mail,
            ),
            AddVerticalSpacing(value: 10.h),
            Obx(
              () => CustomTextField(
                title: 'كلمة المرور',
                leadingIcon: Icons.lock,
                obscureText: controller.passwordHidden.value,
                textAlign: TextAlign.center,
                suffixIconColor: AppColors.primary,
                suffixIcon: controller.passwordHidden.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                suffixIconCallback: controller.togglePasswordVisibility,
              ),
            ),
            AddVerticalSpacing(value: 30.h),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: InkWell(
                onTap: () => {},
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.h,
                  ),
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyle(
                      fontSize: 19.sp,
                    ),
                  ),
                ),
              ),
            ),
            AddVerticalSpacing(value: 120.h),
            const Align(
              child: CustomButton(),
            ),
            AddVerticalSpacing(value: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ليس لديك حساب؟',
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
                AddHorizontalSpacing(value: 5.w),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'تسجيل جديد',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            AddVerticalSpacing(value: 40.h),
          ],
        ),
      ),
    );
  }
}
