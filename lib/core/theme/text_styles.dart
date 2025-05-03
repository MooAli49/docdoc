import 'package:docdoc/core/theme/colors_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Wieght = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManger.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManger.mainBlue,
  );
  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManger.grey,
  );
  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManger.white,
  );
}
