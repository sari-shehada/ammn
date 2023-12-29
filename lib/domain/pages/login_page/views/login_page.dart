import 'package:ammn/config/colors.dart';
import 'package:ammn/domain/shared_widgets/app_image_logo.dart';
import 'package:ammn/domain/shared_widgets/app_test_logo.dart';
import 'package:ammn/ui_utils/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          children: [
            AddVerticalSpacing(value: 40.h),
            const AppLogoWithText(),
            AddVerticalSpacing(value: 10.h),
            Align(
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontSize: 38.sp,
                  color: AppColors.color1,
                ),
              ),
            ),
            AddVerticalSpacing(value: 4.h),
            Align(
              child: Container(
                height: 3.h,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: AppColors.color6.withOpacity(0.7),
                ),
              ),
            ),
            AddVerticalSpacing(value: 10.h),
            TextField(
              decoration: InputDecoration(
                label: Text('البريد الالكتروني'),
                prefixIcon: Icon(Icons.mail),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('البريد الالكتروني'),
                prefixIcon: Icon(Icons.mail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppLogoWithText extends StatelessWidget {
  const AppLogoWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImageLogo(
          dimension: 160.sp,
        ),
        AddHorizontalSpacing(value: 10.w),
        AppTextLogo(
          dimension: 110.sp,
        ),
      ],
    );
  }
}
