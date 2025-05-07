import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Already have an account? ',
            style: TextStyles.font13DarkBlueW400,
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyles.font13BlueW500,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    //TODO: Handle the tap event for Sign up
                  },
          ),
        ],
      ),
    );
  }
}
