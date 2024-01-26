import 'package:care_book/core/helpers/spacing.dart';
import 'package:care_book/core/theming/styles.dart';
import 'package:care_book/core/widgets/app_text_button.dart';
import 'package:care_book/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:care_book/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:care_book/features/sign_up/ui/widgets/already_have_account_text.dart';
import 'package:care_book/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:care_book/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(12),
                Text(
                  'Create Account',
                  style: AppTextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppTextStyles.font14GrayReg,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignUpForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: AppTextStyles.font16WiteSemiBold,
                      onPressed: () {
                        validateThenDoSignUp(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignUpBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpSate();
    }
  }
}
