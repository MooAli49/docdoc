import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          //TODO: split this widget into a separate widget with api data
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
                        'Name',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.font18DarkBlueW700,
                      ),
                      Text(
                        'degree',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.font12GreyW500,
                      ),
                      Text(
                        '203582375',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.font12GreyW500,
                      ),
                      Text(
                        'email@test.com',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.font12GreyW500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
