import 'package:docdoc/core/theme/colors_manger.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.hintStyle,
    this.style,
    this.suffixIcon,
    this.isObscureText,
    this.keyboardType,
    this.contentPadding,
  });
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText ?? true,
      keyboardType: keyboardType ?? TextInputType.emailAddress,
      style: style ?? TextStyles.font14DarkBlueW500,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: ColorsManger.lightestGrey,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGreyW400,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManger.lighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManger.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16.r),
            ),
        errorBorder:
            errorBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManger.errorColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
      ),
    );
  }
}
