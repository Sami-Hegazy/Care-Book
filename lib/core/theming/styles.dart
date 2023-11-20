import 'package:care_book/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32BlueBold = TextStyle(
    color: ColorsManager.primaryColor,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font14GrayReg = TextStyle(
    color: ColorsManager.gray,
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font16WiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
}
