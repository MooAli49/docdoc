import 'package:docdoc/features/home/data/models/doctor_model.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorModelList});
  final List<DoctorModel?>? doctorModelList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorModelList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(doctorModel: doctorModelList?[index]);
        },
      ),
    );
  }
}
