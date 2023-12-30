import 'package:ammn/domain/shared_widgets/app_image_logo.dart';
import 'package:ammn/domain/shared_widgets/app_test_logo.dart';
import 'package:ammn/ui_utils/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFullLogo extends StatelessWidget {
  const AppFullLogo({
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
