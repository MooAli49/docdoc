import 'package:docdoc/core/theme/colors_manger.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorAndTextAndBackLogo extends StatelessWidget {
  const DoctorAndTextAndBackLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/docdoc_logo_low_opacity.svg',
          width: 443.h,
          height: 443.h,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ColorsManger.white, ColorsManger.white.withAlpha(0)],
              stops: [0.14, 0.4],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Image.asset(
            'assets/images/onboarding_doctor.png',
            width: 375.h,
            height: 490.h,
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: TextStyles.font32BlueW700.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
