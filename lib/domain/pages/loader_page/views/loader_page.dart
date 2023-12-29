import 'package:ammn/domain/shared_widgets/app_image_logo.dart';
import 'package:ammn/domain/shared_widgets/app_test_logo.dart';
import 'package:ammn/ui_utils/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImageLogo(
              dimension: 170.sp,
            ),
            AddVerticalSpacing(value: 25.h),
            AppTextLogo(
              dimension: 140.sp,
            ),
          ],
        ),
        // child: Animate(
        //   autoPlay: true,
        //   onComplete: (controller) async =>
        //       Future.delayed(500.milliseconds).then(
        //     (value) {
        //       if (controller.status == AnimationStatus.completed) {
        //         controller.reverse().then(
        //               (value) => controller.forward(),
        //             );
        //       }
        //     },
        //   ),
        //   effects: [
        //     FadeEffect(
        //       begin: .35,
        //       end: 1,
        //       duration: 500.milliseconds,
        //     )
        //   ],
        //   child:
        // ),
      ),
    );
  }
}
