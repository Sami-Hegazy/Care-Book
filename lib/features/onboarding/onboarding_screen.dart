import 'package:care_book/core/theming/styles.dart';
import 'package:care_book/features/onboarding/widgets/get_started_button.dart';
import 'package:care_book/features/onboarding/widgets/on_boarding_body.dart';
import 'package:care_book/features/onboarding/widgets/on_boarding_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const OnBoardingLogo(),
              30.verticalSpace,
              const OnBoardingBody(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Text(
                  'Manage and schedule all of your medical appointments easily with CareBook to get a new experience.',
                  style: AppTextStyles.font14GrayReg,
                  textAlign: TextAlign.center,
                ),
              ),
              30.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: const GetStartedButton(),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
