import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppImageLogo extends StatelessWidget {
  const AppImageLogo({
    super.key,
    this.dimension,
  });

  final double? dimension;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/image_logo.png',
      height: dimension ?? 120.sp,
      width: dimension ?? 120.sp,
    );
  }
}
