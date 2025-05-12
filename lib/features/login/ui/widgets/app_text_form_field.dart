import 'package:docdoc/core/theme/colors_manager.dart';
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
    this.controller,
    required this.validator,
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
  final TextEditingController? controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      obscureText: isObscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.emailAddress,
      style: style ?? TextStyles.font14DarkBlueW500,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: ColorsManager.lightestGrey,
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
                color: ColorsManager.lighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16.r),
            ),
        errorBorder:
            errorBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.errorColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.errorColor, width: 1.3),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }
}
