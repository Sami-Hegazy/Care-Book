import 'package:care_book/core/theming/colors.dart';
import 'package:care_book/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusBorder,
    this.enabledBorder,
    this.hintStyle,
    this.inputTextStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        focusedBorder: focusBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.primaryColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        hintStyle: hintStyle ?? AppTextStyles.font14lightGrayReg,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? ColorsManager.lightShadeGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? AppTextStyles.font14DarkBlueMedium,
    );
  }
}
