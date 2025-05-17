import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAllText extends StatelessWidget {
  const DoctorSpecialitySeeAllText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Doctor Speciality', style: TextStyles.font18DarkBlueW600),
        const Spacer(),
        Text('See all', style: TextStyles.font12BlueW400),
      ],
    );
  }
}
