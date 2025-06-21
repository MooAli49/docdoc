import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GreyW400,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font13DarkBlueW500,
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.font13GreyW400.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyles.font13DarkBlueW500,
          ),
        ],
      ),
    );
  }
}
