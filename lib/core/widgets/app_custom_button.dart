import 'package:docdoc/core/theme/colors_manger.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: ColorsManger.mainBlue,
      minWidth: 311.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      height: 52.h,
      onPressed: onPressed,
      child: Text(text, style: TextStyles.font16WhiteW600),
    );
  }
}
