import 'package:docdoc/features/home/data/models/doctor_model.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list/doctor_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorsList});
  final List<DoctorModel?>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(doctorModel: doctorsList?[index]);
        },
      ),
    );
  }
}
