import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/core/theme/colors_manager.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:docdoc/features/home/data/models/specialization_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecializationListViewItem extends StatelessWidget {
  const SpecializationListViewItem({
    super.key,
    required this.itemIndex,
    required this.specializationDataModel,
    required this.selectedSpecializationIndex,
  });
  final int itemIndex;
  final SpecializationDataModel? specializationDataModel;
  final int selectedSpecializationIndex;

  @override
  Widget build(BuildContext context) {
    bool isSelected = itemIndex == selectedSpecializationIndex;

    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24),
      // width: 120.w,
      child: Column(
        children: [
          isSelected
              ? Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.darkBlue, width: 1.5),
                  shape: BoxShape.circle,
                ),
                child: specialityImage(isSelected),
              )
              : specialityImage(isSelected),
          verticalSpace(8),
          Text(
            specializationDataModel?.name ?? 'specialition',
            style:
                isSelected
                    ? TextStyles.font14DarkBlueW700
                    : TextStyles.font12DarkBlueW400,
          ),
        ],
      ),
    );
  }

  CircleAvatar specialityImage(bool isSelected) {
    return CircleAvatar(
      radius: 28.r,
      backgroundColor: ColorsManager.lightBlue,
      child: SvgPicture.asset(
        'assets/svgs/doctor_speciality.svg',
        height: isSelected ? 42.h : 40.h,
        width: isSelected ? 42.w : 40.w,
      ),
    );
  }
}
