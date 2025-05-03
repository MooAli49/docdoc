import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocDocLogo extends StatelessWidget {
  const DocDocLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8.w,
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_logo.svg',
          width: 40.h,
          height: 40.h,
        ),
        Text('DocDoc', style: TextStyles.font24Black700Wieght),
      ],
    );
  }
}
