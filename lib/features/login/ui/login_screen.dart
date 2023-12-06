import 'package:care_book/core/theming/styles.dart';
import 'package:care_book/core/widgets/app_text_button.dart';
import 'package:care_book/core/widgets/app_text_form_field.dart';
import 'package:care_book/features/login/ui/widgets/already_have_account_text.dart';
import 'package:care_book/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: AppTextStyles.font24BlueBold,
                ),
                8.verticalSpace,
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppTextStyles.font14GrayReg,
                ),
                48.verticalSpace,
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      18.verticalSpace,
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      16.verticalSpace,
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'forgot password?',
                          style: AppTextStyles.font13BlueReg,
                        ),
                      ),
                      40.verticalSpace,
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: AppTextStyles.font16WiteSemiBold,
                        onPressed: () {},
                      ),
                      20.verticalSpace,
                      const TermsAndConditionsText(),
                      60.verticalSpace,
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
