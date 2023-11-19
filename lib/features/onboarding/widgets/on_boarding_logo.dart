import 'package:care_book/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingLogo extends StatelessWidget {
  const OnBoardingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/logo.svg'),
        10.horizontalSpace,
        Text(
          'CareBook',
          style: AppTextStyles.font24Black700Weight,
        ),
      ],
    );
  }
}
