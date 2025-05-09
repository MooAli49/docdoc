import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({
    super.key,
    required this.hasUpperCase,
    required this.hasLowerCase,
    required this.hasDigits,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
  });
  final bool hasUpperCase;
  final bool hasLowerCase;
  final bool hasDigits;
  final bool hasSpecialCharacters;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      children: [
        buildValidationRow(
          isValid: hasUpperCase,
          text: 'At least one uppercase letter',
        ),
        buildValidationRow(
          isValid: hasLowerCase,
          text: 'At least one lowercase letter',
        ),
        buildValidationRow(isValid: hasDigits, text: 'At least one digit'),
        buildValidationRow(
          isValid: hasSpecialCharacters,
          text: 'At least one special character',
        ),
        buildValidationRow(
          isValid: hasMinLength,
          text: 'At least 8 characters long',
        ),
      ],
    );
  }

  Widget buildValidationRow({required bool isValid, required String text}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: isValid ? Colors.green : Colors.red,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyles.font13DarkBlueW400.copyWith(
            color: isValid ? Colors.green : Colors.red,
          ),
        ),
      ],
    );
  }
}
