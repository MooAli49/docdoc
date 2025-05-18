import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:docdoc/features/home/data/models/doctor_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItem extends StatelessWidget {
  const DoctorListViewItem({super.key, this.doctorModel});
  final DoctorModel? doctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),

      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              'https://pngimg.com/uploads/doctor/doctor_PNG15992.png',
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorModel?.name ?? 'Name',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font18DarkBlueW700,
                ),
                Text(
                  '${doctorModel?.degree ?? 'Degree'} | ${doctorModel?.phone ?? 'There is no phone number'}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font12GreyW500,
                ),

                Text(
                  doctorModel?.email ?? 'Email',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font12GreyW500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
