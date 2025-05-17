import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/core/theme/colors_manager.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder:
            //TODO: split this widget into item widget with api data
            (context, index) => Container(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24),

              // width: 120.w,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28.r,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/doctor_speciality.svg',
                      height: 40.h,
                      width: 40.w,
                    ),
                  ),
                  verticalSpace(8),
                  Text('General', style: TextStyles.font12DarkBlueW400),
                ],
              ),
            ),
      ),
    );
  }
}
