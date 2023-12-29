import 'package:ammn/config/colors.dart';
import 'package:ammn/domain/shared_widgets/app_image_logo.dart';
import 'package:ammn/domain/shared_widgets/app_test_logo.dart';
import 'package:ammn/ui_utils/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordHidden = true;
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
            const AppLogoWithText(),
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
            CustomTextField(
              title: 'كلمة المرور',
              leadingIcon: Icons.lock,
              obscureText: passwordHidden,
              textAlign: TextAlign.center,
              suffixIconColor: AppColors.primary,
              suffixIcon:
                  passwordHidden ? Icons.visibility : Icons.visibility_off,
              suffixIconCallback: togglePasswordVisibility,
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
            Align(
              child: const CustomButton(),
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

  void togglePasswordVisibility() {
    passwordHidden = !passwordHidden;
    setState(() {});
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: MediaQuery.of(context).size.width * 0.54,
      decoration: BoxDecoration(
        color: AppColors.secondaryDark,
        borderRadius: BorderRadius.circular(11.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(.08),
            blurRadius: 20,
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.textAlign = TextAlign.start,
    this.obscureText = false,
    this.suffixIcon,
    this.suffixIconColor,
    this.suffixIconCallback,
  });

  final String title;
  final IconData leadingIcon;
  final IconData? suffixIcon;
  final TextAlign textAlign;
  final Color? suffixIconColor;
  final bool obscureText;
  final VoidCallback? suffixIconCallback;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: textAlign,
      obscureText: obscureText,
      style: TextStyle(
        fontSize: 20.sp,
        height: 1.8.h,
      ),
      decoration: InputDecoration(
        floatingLabelStyle: TextStyle(
          fontSize: 22.sp,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
        label: Text(title),
        prefixIcon: Icon(
          leadingIcon,
          color: Colors.black,
        ),
        suffixIcon: suffixIcon == null
            ? null
            : InkWell(
                onTap: suffixIconCallback,
                child: Icon(
                  suffixIcon,
                  color: suffixIconColor,
                ),
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
