import 'package:care_book/core/helpers/extensions.dart';
import 'package:care_book/core/routing/routes.dart';
import 'package:care_book/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DoNotHaveAccountText extends StatelessWidget {
  const DoNotHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an account?',
          style: AppTextStyles.font13DarkBlueRegular,
        ),
        TextSpan(
          text: ' Sign Up',
          style: AppTextStyles.font13BlueSemiBold,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pushReplacementNamed(Routes.signUpScreen);
            },
        ),
      ]),
    );
  }
}
