import 'package:docdoc/features/home/data/models/specialization_data_model.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key, required this.specializationList});
  final List<SpecializationDataModel> specializationList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: specializationList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => DoctorSpecialityListViewItem(
              itemIndex: index,
              specializationDataModel: specializationList[index],
            ),
      ),
    );
  }
}
