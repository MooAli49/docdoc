import 'package:docdoc/core/helper/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Don\'t have account? ',
            style: TextStyles.font13DarkBlueW400,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueW600,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(Routes.signupScreen);
                  },
          ),
        ],
      ),
    );
  }
}
