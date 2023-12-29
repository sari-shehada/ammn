import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextLogo extends StatelessWidget {
  const AppTextLogo({
    super.key,
    this.dimension,
  });

  final double? dimension;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/text_logo.png',
      height: dimension ?? 120.sp,
      width: dimension ?? 120.sp,
    );
  }
}
