import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
